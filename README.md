
# 🔐 Crypto Tool (OpenSSL)

Crypto Tool is a simple Bash-based encryption and decryption utility using **OpenSSL**.  
It supports **AES**, **DES**, and **RSA** algorithms.

---

## ⚙️ Setup

Clone the repository and run the setup script:

      git clone https://github.com/dhanush-404/CRYPTO.git      
      cd crypto-tool
      chmod +x setup.sh
      ./setup.sh

The setup script installs required dependencies and automatically launches the tool.

## ▶️ Usage

### Create a message file:

      echo "Hello World" > msg.txt

### Run the tool manually (optional):

      ./crypto_tool.sh


### Follow the on-screen menu:

- Select AES / DES / RSA
- Choose encrypt or decrypt
- Enter the file path of the message
-  Enter the password/key when prompted
- Output files are created automatically after each operation.

## ⚠️ Disclaimer

This tool is intended for learning purposes of cryptography only.
