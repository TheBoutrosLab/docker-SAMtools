# Changelog
All notable changes to the SAMtools Dockerfile.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

This project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---
## [Unreleased]
### Changed
- Update SAMtools version to 1.23
- Update Ubuntu base image from 20.04 to 24.04
- Switch the builder image from Mambaforge to Miniforge3 and update it from 22.9.0-2 to 26.1.1-2
- Install SAMtools into an isolated Conda environment in the runtime image
- Update maintainer metadata and image source labels

## [1.22] 2025-05-30
### Added
- Add gnuplot

### Changed
- Update SAMTools version to 1.22

## [1.21] 2024-09-16
### Changed
- Update SAMTools version to 1.21

## [1.20] 2024-04-17
### Changed
- Update SAMTools version to 1.20

## [1.19.2] 2024-01-24
### Changed
- Update SAMTools version to 1.19.2

## [1.18] 2023-10-17
### Changed
- Update SAMTools version to 1.18

## [1.17] 2023-05-18
### Changed
- Update SAMTools version to 1.17
- Update PR template, including replace references to Docker Hub Auto Build with GitHub Packages

## [1.16.1] 2023-01-04
### Changed
- Update to SAMtools 1.16.1
### Added
- Add Docker auto-build action

## [1.15.1] 2022-05-27
### Changed
- Update to SAMtools 1.15.1

## [1.14] 2022-02-14
### Changed
- Update to SAMtools 1.14
- Install SAMtools using mamba
### Added
- Add bldocker user/group to container

## [1.12] - 2021-05-24
### Added
- Update to SAMtools 1.12

## [1.11] - 2021-04-28
### Added
- git repo created
- SAMtools 1.11
