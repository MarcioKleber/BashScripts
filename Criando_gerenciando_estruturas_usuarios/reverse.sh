#!/bin/bash

echo "removendo diretórios ........"
rmdir /publico 
rmdir /sec
rmdir /adm
rmdir /ven

echo "Removendo grupos ........"
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

echo "Removendo usuários ........"
##userAdm
userdel -r carlos
userdel -r maria
userdel -r joao

##userVen
userdel -r debora
userdel -r sebastiana
userdel -r roberto
#userSec
userdel -r amanda
userdel -r rogerio
userdel -r josefina

echo "finalizado!"