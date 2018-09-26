#!/bin/sh
# -*- coding: utf8
# Auteur: Cagliostro <atfield2501@gmail.com>
# Dump de sgbd sql.



adresse_server="http://sql.free.fr/backup.php"
identifiant="^(;,,;)^"
mdp="^^"

Fonction_Dump(){
wget -S --progress=dot:mega $adresse_server --post-data="login=$identifiant&password=$mdp&check=1&all=1&sql_compat=NONE&sql_type=insertcharset_of_file=utf-8&lang=fr-utf-8&server=1&convcharset=iso-8859-1&collation_connection=utf8_general_ci&export_type=server&what=sql&header_comment=&sql_structure=structure&auto_increment=1&use_backquotes=1&sql_data=data&hexforbinary=yes&asfile=sendit&compression=gzip&filename_template=base-mysql-identifiant-%25Y-%25m-%25d" -O base-mysql-atfield2501-`date +%Y-%m-%d-%H%M%S`.sql.gz
}


Fonction_Version(){
   echo "  *****************  "
   echo "  *   SQL Dump    *  "
   echo "  *****************  "
   echo "  **   (;,,;)    **  "
   echo "  *****************  "
   echo "  *    V  1.O     *  "
   echo "  *****************  "
   echo "----------------------"
}

Fonction_Version
Fonction_Dump






