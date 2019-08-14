#!/usr/bin/env bash
#{{{ MARK:Header
#**************************************************************
##### Author: WIZARD
##### Date: Wed Aug 14 01:21:10 EDT 2019
##### Purpose: bash script to
##### Notes:
#}}}***********************************************************
out="$(pbpaste | python -c 'from urllib import quote; print quote(raw_input(), safe="")')"

open "https://google.com/search?q=$out"


