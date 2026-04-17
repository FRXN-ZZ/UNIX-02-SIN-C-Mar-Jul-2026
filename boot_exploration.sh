#List all the directories
ls -a #Short option
ls --all #Long option
.     .gitignore  boot_exploration.sh  doc_cris_.txt         doc_cris_firmado.gpg   doc_no_cifrado.txt      doc_no_cifrado.txt.sig  llave_publica_de_Cris.asc  mensaje_recibido.txt
..    LICENSE     calculadora          doc_cris_.txt.gpg     doc_cris_firmado.sig   doc_no_cifrado.txt.asc  filesystem_script.sh    mensaje_original.txt       mi_llave_publica-asc
.git  README.md   doc_cifrado.txt      doc_cris_firmado.asc  doc_cris_original.txt  doc_no_cifrado.txt.gpg  gnupg_script.sh         mensaje_original.txt.gpg   prueba_final.txt

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

 --depth <depth>
           Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch unless --no-single-branch is given to fetch the histories near the tips of all branches. If
           you want to clone submodules shallowly, also pass --shallow-submodules.

ls -l
-rw-rw-rw-  1 codespace root      34523 Apr 17 14:30 LICENSE

-rw-rw-rw-  1 codespace root  34523 Apr 17 14:30 LICENSE
|          | |         |     |     |            |
|          | |         |     |     |         File Name
|          | |         |     |    Modification Date
|          | |         |  File Size (Bytes)
|          | |       Group
|          | Owner
|     Number of Links
File Permissions

chmod +x script.sh          # everyone can execute it (equivalent to a+x)
chmod u+x script.sh         # only the owner can execute it
chmod o-r secret.txt        # remove read permission from "others"
chmod u+rw,go-rwx private   # owner can read/write; no one else has any permissions