# Configure Ardupilot on host
# https://www.youtube.com/watch?v=r35vcFrVFjQ
# This is for running Ardupilot on GCS not on FC

git-dir := '~/work/repos/drone'
ardupilot-dir := '~/work/repos/drone/ardupilot'

default:
  just --list

all: ardupilot config-copter

ardupilot:
  cd {{ git-dir }} && git clone --recurse-submodules https://github.com/Ardupilot/ardupilot.git
  cd {{ ardupilot-dir }} && Tools/environment_install/install-prereqs-ubuntu.sh

config-copter
  cd {{ ardupilot-dir }} && . ~/.profile
  cd {{ ardupilot-dir }} && ./waf configure --board sitl
  source ~/venv-ardupilot/bin/activate && cd {{ ardupilot-dir }} && ./waf copter
