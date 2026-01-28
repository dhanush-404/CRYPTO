#!/bin/bash
clear
clear

cat << "EOF" | lolcat
 ██████╗██████╗ ██╗   ██╗██████╗ ████████╗ ██████╗ 
██╔════╝██╔══██╗╚██╗ ██╔╝██╔══██╗╚══██╔══╝██╔═══██╗
██║     ██████╔╝ ╚████╔╝ ██████╔╝   ██║   ██║   ██║
██║     ██╔══██╗  ╚██╔╝  ██╔═══╝    ██║   ██║   ██║
╚██████╗██║  ██║   ██║   ██║        ██║   ╚██████╔╝
 ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝        ╚═╝    ╚═════╝ 
EOF
echo "🔐 OpenSSL Encryption Suite" | lolcat
echo "Author  : Dhanush A" | lolcat
echo "GitHub  : https://github.com/dhanush-404" | lolcat
echo "Version : 1.0" | lolcat
echo "AES • DES • RSA" | lolcat
echo "Date & Time : $(date)" | lolcat
sleep 2

echo "+--------------------------------------+"     | lolcat
echo "+   Simple Crypto Tool using OpenSSL   +"     | lolcat
echo "+--------------------------------------+"     | lolcat

echo "1) AES Encryption / Decryption"
echo "2) DES Encryption / Decryption"
echo "3) RSA Encryption / Decryption"
read -p "Choose option: " opt

case $opt in
 
1)
    echo "[ AES Selected ]"
    read -p "Enter input message file(path): " file

    echo "1) Encrypt"
    echo "2) Decrypt"
    read -p "Choose operation: " ch

    if [ "$ch" == "1" ]; then
        openssl enc -aes-256-cbc -salt -in "$file" -out aes_ enc.bin
        echo "✅ AES encrypted file created: aes_enc.bin"
    else
        openssl enc -aes-256-cbc -d -in aes_encrypted.bin -out aes_dec.txt
        echo "✅ AES decrypted file created: aes_dec.txt"
    fi
;;

2)
    echo "[ DES Selected ]"
    read -p "Enter input message file(path): " file

    echo "1) Encrypt"
    echo "2) Decrypt"
    read -p "Choose operation: " ch

    if [ "$ch" == "1" ]; then
        openssl enc -des -salt -in "$file" -out des_enc.bin
        echo "✅ DES encrypted file created: des_enc.bin"
    else
        openssl enc -des -d -in des_encrypted.bin -out des_dec.txt
        echo "✅ DES decrypted file created: des_dec.txt"
    fi
;;

3)
    echo "[ RSA Selected ]"
    echo "1) Generate RSA Keys"
    echo "2) Encrypt"
    echo "3) Decrypt"
    read -p "Choose operation: " ch

    if [ "$ch" == "1" ]; then
        openssl genrsa -out private.pem 2048
        openssl rsa -in private.pem -pubout -out public.pem
        echo "✅ RSA keys created:"
        echo "   - private.pem"
        echo "   - public.pem"

    elif [ "$ch" == "2" ]; then
        read -p "Enter input message file(path): " file
        openssl rsautl -encrypt -pubin -inkey public.pem -in "$file" -out rsa_enc.bin
        echo "✅ RSA encrypted file created: rsa_enc.bin"

    else
        openssl rsautl -decrypt -inkey private.pem -in rsa_enc.bin -out rsa_dec.txt
        echo "✅ RSA decrypted file created: rsa_dec.txt"
    fi
;;

*)
    echo "❌ Invalid option selected"
;;
esac
