#!/bin/bash

# https://qiita.com/ko1nksm/items/f2505d7265d214e20d93
time touch testtouchfile{0..100000}

# i=0
# while [ "$i" -lt 100000 ]; do
#   echo "testfile${i}"
#   i=$((i + 1))
# done | xargs touch


#!/bin/sh
time seq -f testseqfile%.0f 100000 | xargs touch
