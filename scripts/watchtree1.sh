#!/usr/bin/env bash
bash myWatchNoBlink.sh -b 'pstree -g 3 -u jacobmenke | sed s/jacobmenke// | sed s@/.*/@@ | tail -150 | head -80' 1
