#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.gemcore/gemd.pid file instead
gem_pid=$(<~/.gemcore/testnet3/gemd.pid)
sudo gdb -batch -ex "source debug.gdb" gemd ${gem_pid}
