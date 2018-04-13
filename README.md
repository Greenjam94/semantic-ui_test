# Testing out semantic-ui

This repo is a testing ground to learn how to use semantic-ui for website design and layout.
The server is built using vagrant. A Debian virtual machine gets setup and a script is ran to configure it as needed.
Commented out commands need to be ran manually.

# Requirements

- Virtualbox
- Vagrant
- Debian box for vagrant

# Setup

- clone repo
- cd /repo
- vagrant init
- vagrant ssh
- $vagrant: sudo su root
- copy commented commands from bootstrap.sh into terminal
  - Follow the automatic setup to install semantic in the current directory (should end up being /vagrant/semantic)

visit http://192.168.94.3 to see the test website ( /vagrant/project symlinked to /var/www/html )

# Usage

- gulp watch (watches CSS input and regenerates assets as needed)
- modify the /vagrant/project/ html files as desired to learn semantic-ui
