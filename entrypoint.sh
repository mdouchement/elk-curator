#!/bin/sh

curator --host nas.lan delete indices --older-than 1 --time-unit days --timestring '%Y.%m.%d'
crond && tail -f /var/log/cron.log
