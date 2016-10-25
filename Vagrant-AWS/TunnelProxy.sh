#!/usr/bin/env bash
declare -a SSH_PARAMS
SSH_PARAMS=$( vagrant ssh-config | awk '$0 !~ /Host default/ && $0 != "" {print "-o", $1 "=" $2}' )
# SSH_PARAMS=$( vagrant ssh-config | awk '$0 != "" {print "-o", $1 "=" $2}' )
# echo $SSH_PARAMS
SSH_PARAMS+=( '-L 8080:localhost:8080' )
SSH_PARAMS+=( '-D localhost:9050' )
ssh_call="ssh ${SSH_PARAMS[@]} default"
echo $ssh_call
$ssh_call
