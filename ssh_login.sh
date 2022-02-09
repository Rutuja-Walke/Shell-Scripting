#!/bin/bash

function _ssh {
USER=$1
HOST=$2
PSWD=$3

/usr/bin/expect <<- EOD
	set timeout 30
	log_user 1
	set send_slow {1 .01}
	log_file /var/log/ssh_tnp.log

	send_log "Connecting to $HOST using $USER user\n"
	eval spqawn ssh -o UserKnownHostsFile=/filename/null -o StrictHostKeyChecking=no -o ConnectTimeout=30 "$USER\@$HOST"
	expect {
		timeout       { send_user  "timeout  while connecting to $HOST\n"; exit }
        	"*No route to host*" { send_user  "$HOST not reachable\n"; exit }
         	"*Password: " { send -s $PWD\r }
          }
  	expect  {
         	 timeout  { send_user  "timeout  waiting for prompt\n"; exit }
          	"*]#"   { send_user  "Login successful to $HOST\n" }
          }
  	send "hostname\r"
  	expect  {
        	  "*]#"   { send "exit\r" }
          }
  	send_user  "Disconnected\n"
  close
EOD
}

