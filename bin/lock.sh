#!/bin/bash

# Colors
BG_COLOR=2E3440
RING_COLOR=88C0D0
TEXT_COLOR=ECEFF4
WRONG_COLOR=BF616A
VERIF_COLOR=A3BE8C

i3lock \
    --color=$BG_COLOR \
    --inside-color=00000000 \
    --ring-color=$RING_COLOR \
    --line-uses-inside \
    --keyhl-color=$VERIF_COLOR \
    --bshl-color=$WRONG_COLOR \
    --separator-color=00000000 \
    --insidever-color=00000000 \
    --insidewrong-color=00000000 \
    --ringver-color=$VERIF_COLOR \
    --ringwrong-color=$WRONG_COLOR \
    --ind-pos="x+w/2:y+h/2" \
    --radius=120 \
    --ring-width=10 \
    --verif-text="Verifying..." \
    --wrong-text="Wrong!" \
    --noinput-text="No Input" \
    --lock-text="Locking..." \
    --lockfailed-text="Lock Failed" \
    --time-color=$TEXT_COLOR \
    --date-color=$TEXT_COLOR \
    --clock \
    --time-str="%H:%M" \
    --date-str="%A, %B %d" \
    --time-font="JetBrains Mono" \
    --date-font="JetBrains Mono" \
    --time-size=48 \
    --date-size=24 \
    --blur 5
