#!/bin/bash

echo " Criando os diretórios solicitados..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados com sucesso!"
echo "*******************************"

eco "Criando os Grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos de usuários criados com sucesso!"
echo "***************************************"

echo "Criando os usuários do grupo ADM..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

echo "Finalizando criação sos usuários do grupo ADM..."
echo "************************************************"

echo "Criando os usuários do grupo VEN..."

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

echo "Finalizando criação sos usuários do grupo VEN..."
echo "************************************************"

echo "Criando os usuários do grupo SEC..."

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123)

echo "***************************************"
echo "Usuários criados com sucesso!"

echo "Especificando as permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Encerrando o processo..."


