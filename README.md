# ArxLibertatisProcGenTools-runner

A docker-based runner for [fredlllll's ArxLibertatisProcGenTools](https://github.com/fredlllll/ArxLibertatisProcGenTools/releases)

![Preview of the output of maps/exampe.ps1](preview-of-example.jpg?raw=true "Preview of the output of maps/exampe.ps1")

## How to use

### Requirements:

- [Docker](https://www.docker.com/get-started/)

### Install

1. Download the [latest release of ArxLibertatisProcGenTools](https://github.com/fredlllll/ArxLibertatisProcGenTools/releases)
   to a folder you like
1. Copy `.env.sample` as `.env`
1. Inside `.env` set `LIB_DIR` to the folder you've chosen in step 1
1. Inside `.env` set `ARX_DIR` to your Arx Fatalis/Arx Libertatis dir is with `arx.exe` in it
1. Run `./scripts/install.sh`

### Generating a level and testing it out

1. Run `./scripts/generate.sh ./maps/example.ps1` to execute a script that Fred's library can parse. You can pass in
   any ps1 scripts from any folder to generate.sh as a parameter
1. Run `./scripts/run.sh` after the level have been generated to start arx.exe and immediately load level 1

### Uninstall

1. Run `./scripts/uninstall.sh`

## Other tips and infos

### Grabbing the generated level data to release it as a mod

To be able to see the generated files without anything else in there set ARX_DIR to an empty directory. Running
`./scripts/generate.sh` will generate the level data regardless of arx.exe or any asset of the game is there or not.
You can then bundle the contents of that folder up and publish it as a mod.
