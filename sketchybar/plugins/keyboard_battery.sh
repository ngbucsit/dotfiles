#!/bin/sh

CENTRAL_BATTERY_LEVEL=$(pmset -g accps | grep Lily58 | grep -Eo "\d+%" | cut -d% -f1 | head -n 1)
PERIPHERAL_BATTERY_LEVEL=$(pmset -g accps | grep Lily58 | grep -Eo "\d+%" | cut -d% -f1 | tail -n 1)

CB_LEVEL_STR=${CENTRAL_BATTERY_LEVEL:-"--"}%
PB_LEVEL_STR=${PERIPHERAL_BATTERY_LEVEL:-"--"}%

sketchybar --set "${NAME}" icon="󰌌" label="${CB_LEVEL_STR} | ${PB_LEVEL_STR}" width=100
