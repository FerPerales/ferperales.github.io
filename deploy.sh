#!/bin/bash

bundle exec middleman build &&
bundle exec middleman deploy &&
bundle exec middleman s3_sync
