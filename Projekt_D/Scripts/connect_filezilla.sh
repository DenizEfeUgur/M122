#!/bin/bash

HOST="ftp.haraldmueller.ch"
USERNAME="schoolerinvoices"
PASSWORD="Berufsschule8005!"
FTPDIR="/out/AP22d/Ugur"
LOCALDIR="/home/deniz/m122/ebill/Server_Data"

ftp -inv $HOST << FTPANWEIUNGEN
quote USER $USERNAME
quote PASS $PASSWORD

cd $FTPDIR
lcd $LOCALDIR

mget *.data
mdelete *.data

close

FTPANWEIUNGEN

cd /home/deniz/m122/ebill/Server_Data
ls > /home/deniz/m122/ebill/File_Names/file_names.txt
