#List all the directories
ls -a #Short option
ls --all #Long option
#.          Darwin_llave.asc                calculadora                     doc_cifrado_darwinAl.txt        doc_no_cifradoDarwinAl.txt      final_cifrado_firmadoDarwinAl.txt.gpg
#..         LICENSE                         cifrado_firmado_final.txt.gpg   doc_no_cifrado.txt              doc_no_cifradoDarwinAl.txt.gpg  gnupg_script.sh
#.git       README.md                       da_llave_publica.asc            doc_no_cifrado.txt.gpg          doc_no_cifradoDarwinAl.txt.sig  mi_clave_publica.asc
#.gitignore boot_exploration.sh             doc_cifrado.txt                 doc_no_cifrado.txt.sig          doc_no_cifrado_firmado.txt

ls -l -a -h #The command ls -lah is used to list every file in a folder with full details
ls -l -ah #Short option
ls -lah #Other short -rw-rw-rw-  1 codespace root        42 Apr 17 14:30 doc_cris_original.txt
-rw-rw-rw-  1 codespace root      1.2K Apr 17 14:30 doc_no_cifrado.txt
-rw-rw-rw-  1 codespace root      2.0K Apr 17 14:30 doc_no_cifrado.txt.asc
-rw-rw-rw-  1 codespace root      1.8K Apr 17 14:30 doc_no_cifrado.txt.gpg
-rw-rw-rw-  1 codespace root       566 Apr 17 14:30 doc_no_cifrado.txt.sig
-rw-rw-rw-  1 codespace root       182 Apr 17 14:30 filesystem_script.sh
-rw-rw-rw-  1 codespace root      1.9K Apr 17 14:30 gnupg_script.sh
-rw-rw-rw-  1 codespace root      3.2K Apr 17 14:30 llave_publica_de_Cris.asc
-rw-rw-rw-  1 codespace root        43 Apr 17 14:30 mensaje_original.txt
-rw-rw-rw-  1 codespace root      1.3K Apr 17 14:30 mensaje_original.txt.gpg
-rw-rw-rw-  1 codespace root       625 Apr 17 14:30 mensaje_recibido.txt
-rw-rw-rw-  1 codespace root      9.2K Apr 17 14:30 mi_llave_publica-asc
-rw-rw-rw-  1 codespace root        43 Apr 17 14:30 prueba_final.txt
mkdir -- -rf #Create a directory literally named -rf
rmdir -- -rf #Deletes the directory named -rf

ls --help #displays a comprehensive list of all the options you can use with the ls.
ls --help #displays a comprehensive list of all the options you can use with the ls.
man ls #Opens a full, paginated documentation file that explains everything about the ls command.