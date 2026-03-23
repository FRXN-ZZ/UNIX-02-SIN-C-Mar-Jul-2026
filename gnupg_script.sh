# FE4931AAC42C6434 llave
# gpg --list-secret-keys --keyid-format=long comando para lista privada 
# gpg --armor --export-secret-keys FE4931AAC42C6434 exporta la llave secreta
# gpg --import llave_publica_de_Cris.asc para compartir mi llave publica
# gpg --list-keys lista de llaves incluida de mi amigo
# echo "Hola hehehe" > doc_no_cifrado.exe mensaje para nuestro compa
# cat doc_no_cifrado.txt #verificar el comentario enviado a nuestro compa
# gpg --output doc_no_cifrado.txt --encrypt --recipient XXXXXXXXXXXXXXXXXXXXXXXXXX doc_no_cifrado.txt CIFRA EL DOCUMENTO
