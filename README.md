# ArxLibertatisProcGenTools-runner

A docker-based runner for fredlllll's ArxLibertatisProcGenTools

## Install and uninstall

### Install

1. Download the latest release from [Fredlllll's repo](https://github.com/fredlllll/ArxLibertatisProcGenTools) to a folder you like
1. Copy `.env.sample` as `.env`
1. Inside `.env` set `LIB_DIR` to the folder you've chosen in step 1
1. Inside `.env` set `ARX_DIR` to your Arx Fatalis/Arx Libertatis dir is with `arx.exe` in it
1. Run `./scripts/install.sh`

### Run

1. Run `./scripts/generate.sh ./maps/example.ps1` to execute a script that Fred's library can parse. You can pass in any ps1 scripts from any folder to generate.sh as a parameter
1. Run `./scripts/run.sh` after the level have been generated to start arx.exe and immediately load level 1

### Uninstall

1. Run `./scripts/uninstall.sh`

## Links

- [Fredlllll's ArxLibertatisProcGenTools repo](https://github.com/fredlllll/ArxLibertatisProcGenTools)

