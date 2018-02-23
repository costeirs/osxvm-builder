# macOS VM Builder

## Introduction

This project is based on [timsutton's osx-vm-templates](https://github.com/timsutton/osx-vm-templates), with changes to support the student developer interns at [The AppFactory at the University of Wisconsin - Parkside](http://appfactory.uwp.edu).

This project will build a macOS High Sierra virtual machine.

## Requirements

You must have:
- macOS and a new-ish box. Works on Sierra/High Sierra on MacBookPro8,1 and . Earlier versions would probably work but are untested.
- The High Sierra installer, `Install macOS High Sierra.app`, from the App Store.
- VirtualBox
  - VirtualBox must be able to utilize _at least_ 2 cores, otherwise Sierra and later will freeze every ~10 seconds.
  - Recommended: VirtualBox is able to utilize _at least_ 2 GB RAM.
  - Recommended: VHD size is 30 GB for a build runner.
- HashiCorp Packer

## Get Started

1. Make sure you have all the requirements.
2. Open this directory in terminal and run `make`.

## How It Works

1. The High Sierra installer will install onto a temporary disk image (DMG).
2. Custom install scripts are copied into the DMG.
3. The DMG is converted into an ISO.
4. The ISO is loaded into VirtualBox.
