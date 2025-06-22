# bullseye = debian 11 (https://wiki.debian.org/DebianReleases)
FROM debian:bullseye-slim

# ------------------------------------------------------
# install powershell 7.5
# source: https://learn.microsoft.com/en-us/powershell/scripting/install/install-debian?view=powershell-7.5#installation-on-debian-11-or-12-via-the-package-repository

RUN apt -y update
RUN apt -y install wget

RUN wget -q https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb
RUN dpkg -i packages-microsoft-prod.deb
RUN rm packages-microsoft-prod.deb

RUN apt -y update
RUN apt -y install powershell

# ------------------------------------------------------
# create a folder to where the ps1 files will get copied by generate.sh

RUN mkdir -p /arx/scripts

# ------------------------------------------------------
# keep the container alive after start
# https://stackoverflow.com/a/42873832/1806628

ENTRYPOINT ["tail", "-f", "/dev/null"]
