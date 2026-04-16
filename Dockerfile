ARG MINIFORGE_VERSION=26.1.1-2
ARG SAMTOOLS_ENV=/opt/conda/envs/samtools

FROM condaforge/miniforge3:${MINIFORGE_VERSION} AS builder

# Install SAMtools into an isolated Conda environment instead of mutating base
ARG SAMTOOLS_VERSION=1.23
ARG SAMTOOLS_ENV
RUN mamba create -qy -p ${SAMTOOLS_ENV} \
    -c conda-forge \
    -c bioconda \
    --strict-channel-priority \
    samtools==${SAMTOOLS_VERSION} && \
    mamba clean -afy

# Deploy the target tools into a base image
FROM ubuntu:24.04
ARG SAMTOOLS_ENV
COPY --from=builder ${SAMTOOLS_ENV} ${SAMTOOLS_ENV}
ENV PATH="${SAMTOOLS_ENV}/bin:${PATH}"

# Install gnuplot using apt instead of conda
RUN apt-get update && \
    apt-get install -y --no-install-recommends gnuplot-nox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Add a new user/group called bldocker
RUN groupadd -g 500001 bldocker && \
    useradd -r -u 500001 -g bldocker bldocker

# Change the default user to bldocker from root
USER bldocker

LABEL maintainer="Rupert Hugh-White <rhughwhite@sbpdiscovery.org>" \
      org.opencontainers.image.source=https://github.com/TheBoutrosLab/docker-SAMtools
