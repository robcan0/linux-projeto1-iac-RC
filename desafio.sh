#!/bin/bash

echo "Criando Diretórios..."
mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuário..."

useradd carlos -c "Carlos Oliveira" -m -s /bin/bash -p $(openssl passwd "SenhaCarlos") -G GRP_ADM
useradd maria -c "Maria Lima" -m -s /bin/bash -p $(openssl passwd "SenhaMaria") -G GRP_ADM
useradd joao -c "João Sampaio" -m -s /bin/bash -p $(openssl passwd "SenhaJoao") -G GRP_ADM

useradd debora -c "Débora Souza" -m -s /bin/bash -p $(openssl passwd "SenhaDebora") -G GRP_VEN
useradd sebastiana -c "Sebastiana Dos Santos" -m -s /bin/bash -p $(openssl passwd "SenhaSebastiana") -G GRP_VEN
useradd roberto -c "Roberto Campos" -m -s /bin/bash -p $(openssl passwd "SenhaRoberto") -G GRP_VEN

useradd josefina -c "Josefina Da Costa" -m -s /bin/bash -p $(openssl passwd "SenhaJosefina") -G GRP_SEC
useradd amanda -c "Amanda Silva" -m -s /bin/bash -p $(openssl passwd "SenhaAmanda") -G GRP_SEC
useradd rogerio -c "Rogério De Andrade" -m -s /bin/bash -p $(openssl passwd "SenhaRogerio") -G GRP_SEC

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /public

echo "Fim..."