#!/bin/bash
log_path=""
host_mysql=""
port_mysql=""
usr_logstash_pass=""

#Lecture des variables
read -e -s -p "Mot de passe utilisateur mysql USR_LOGSTASH :" usr_logstash_pass;echo
read -e -p "Hôte mysql (FQDN) :" host_mysql
read -e -p "Port mysql :" port_mysql
read -e -p "Chemin logs tomcat (terminé par /) :" log_path
read -e -p "Chemin installation logstash (terminé par /) :" ls_home

#Génération fichier de conf
sed -e "s/{usr_logstash_pass}/$usr_logstash_pass/" -e "s/{port_mysql}/$port_mysql/" -e "s/{host_mysql}/$host_mysql/" -e "s/{log_path}/$log_path/" script_conf_logstash.conf > cice.sql

#Mise en place de la config
mkdir /etc/logstash
mkdir /var/log/logstash
mkdir /var/run/logstash
mv cice.conf /etc/logstash/

#Mise en place du service
sed -e "s/{LS_HOME}/$ls_home/"  logstash.tpl > logstash
cp logstash /etc/init.d
chmod 755 /etc/init.d/logstash