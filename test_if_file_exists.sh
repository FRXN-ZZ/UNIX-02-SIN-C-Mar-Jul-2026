#!/bin/bash
FILENAME="flow_control_with_if2.txt"

if [[ ! -f "${FILENAME}" ]]; then
    touch "${FILENAME}"
fi