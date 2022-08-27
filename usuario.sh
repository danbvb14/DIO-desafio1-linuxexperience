#!/bin/bash

mkdir base
mkdir profissional
mkdir adm
mkdir publico

groupadd GRP_PRO
groupadd GRP_BASE
groupadd GRP_ADM


useradd neymar -c "Teste da silva" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_PRO
useradd cristiano -c "Teste da sousa" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_PRO
useradd messi -c "Teste da suarez" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_PRO

useradd bruno -c "Teste de souza" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_BASE
useradd ruan -c "Teste de souza" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_BASE
useradd antony -c "Teste de souza" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_BASE

useradd mitair -c "Teste de soares" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
useradd eurico -c "Teste de soares" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM
useradd braz -c "Teste de soares" -m -s /bin/bash -p $(openssl passwd 1234) -G GRP_ADM

chown root:GRP_PRO /profissional
chown root:GRP_BASE /base
chwon root:GRP_ADM /adm

chmod 770 /adm
chmod 770 /profissional
chmod 770 /base

chmod 777 publico

