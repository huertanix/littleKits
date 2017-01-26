# littleKits

Example MVP Rails application for sharing your littleBits projects.

## Prereqs

Ruby version: 2.3.0
Gems: acts-as-taggable-on 4.0

## Install

To install an instance of this application, install Ruby, then from the root of the project directory, run:

    bundle
    rake db:migrate
    rake littleKits:populate_bits

## Run

This application requires no additional local services to run. To start the default Rails server, run:

    rails s

Visit http://localhost:3000 to check it out!