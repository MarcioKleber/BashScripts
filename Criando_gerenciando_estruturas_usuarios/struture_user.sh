#!/bin/bash

echo "Criando diretórios ........"
#criando diretorios
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos ........"
#criação de grupos
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "alteração de propriedade ........"
#alteração de propriedade
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "alteração de permissões ........"
#permissões 
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


echo "Criando usuários ........"
##userAdm
useradd carlos -m -c "carlos_userADM" -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd -e carlos
useradd maria -m -c "maria_userADM" -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd -e maria
useradd joao -m -c "joao_userADM" -G GRP_ADM -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd -e joao

##userVen
useradd debora -m -c "debora_userVEN" -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd -e debora
useradd sebastiana -m -c "sebastiana_userVEN" -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd -e sebastiana
useradd roberto -m -c "roberto_userVEN" -G GRP_VEN -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd -e roberto -e

#userSec
useradd josefina -m -c "josefina_userSEC" -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd -e josefina
useradd amanda -m -c "amada_userSEC" -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd -e amanda
useradd rogerio -m -c "rogerio_userSEC" -G GRP_SEC -s /bin/bash -p $(openssl passwd -crypt senha123)
passwd -e rogerio

echo "finalizado!"