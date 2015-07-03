#!/bin/bash

set -x

expect -c '
set timeout -1 ;
spawn android update sdk -u --filter 5
expect {
  "Do you accept the license" { exp_send "y\r" ; exp_continue }
  eof
}
'
