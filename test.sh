#!/bin/bash
 test "" != "$(grep '^\[.*\]' "$1" | sort | uniq -c)" || {
        echo >&2 "需要以[xx]开头,改bug[]里填禅道上的bug编号，否则填开发版本编号"
	exit 1
}