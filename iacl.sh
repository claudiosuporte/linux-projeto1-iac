#!/bin/bash

echo "Criando diretórios..."

mkdir /laudos
mkdir /mkt
mkdir /rh
mkdir /edu

echo "Criando grupos de usuários..."

groupadd GRP_MKT
groupadd GRP_RH
groupadd GRP_EDU

echo "Criando usuários..."

useradd iara -m -c "Iara Melo" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_MKT
useradd matilde -m -c "Matilde Oliveira" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_MKT
useradd jorge -m -c "Jorge Oliveira" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_MKT

useradd hellen -m -c "Hellen Oliveira" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_RH
useradd luiza -m -c "Luiza Carvalo" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_RH
useradd hiene -m -c "Hiene Oliveira" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_RH

useradd julia -m -c "Julia Oliveira" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_EDU
useradd theo -m -c "Theo Oliveira" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_EDU
useradd isabelle -m -c "Isabelle Paz" -s /bin/bash -p $(openssl passwd Senha123) -G GRP_EDU

echo "Especificando permissões dos diretórios..."

chown root:GRP_MKT /mkt
chown root:GRP_RH /rh
chown root:GRP_EDU /edu

chmod 770 /mkt
chmod 770 /rh
chmod 770 /edu
chmod 777 /laudos

echo "Fim..."
 



