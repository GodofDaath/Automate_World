#!/usr/bin/expect

spawn ssh MyUserName@192.168.20.20
expect "password"
send "MyPassword\r"
interact

#Missing 'interact' would give some errors
echo "What is your name?"
read PERSON
echo "Hello, $PERSON"
