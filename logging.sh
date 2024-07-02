#!/bin/bash

get_log_time() {
    date "+%Y-%m-%d %H:%M:%S"
}

log_write() {
    echo "[$(get_log_time)]: $1" > publish.log
}

log_append() {
    echo "[$(get_log_time)]: $1" >> publish.log
}