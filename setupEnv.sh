# SPecify the folder structure you want

FOLDER_1="srcs"
FOLDER_2="requirements"

# setup the env

touch $FOLDER_1/.env
echo "DOMAIN_NAME=$USER.42.fr" > $FOLDER_1/.env
echo "CERT_=./$FOLDER_2/tools/$USER.42.fr.crt" >> $FOLDER_1/.env
echo "KEY_=./$FOLDER_2/tools/$USER.42.fr.key" >> $FOLDER_1/.env
echo "DB_NAME=wordpress" >> $FOLDER_1/.env
echo "ROOT_PASS=123" >> $FOLDER_1/.env
echo "ROOT_USER=noproblem" >> $FOLDER_1/.env
echo "NORM_USER=123" >> $FOLDER_1/.env
echo "NORM_PASS=problem" >> $FOLDER_1/.env

# setup the Certificates
mkcert $USER.42.fr
mv $USER.42.fr-key.pem ./$FOLDER_1/$FOLDER_2/nginx/cert/$USER.42.fr.key
mv $USER.42.fr.pem ./$FOLDER_1/$FOLDER_2/nginx/cert/$USER.42.fr.crt