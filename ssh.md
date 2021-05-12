# Ssh

## Password less login

#### On "From" to "To" Host
1. [From] Search for ~/.ssh/id_rsa.pub, if not found run ssh-keygen command to generate private/public keys
2. [From] cat ~/.ssh/id_rsa.pub and copy the content
3. [To] cat ~/.ssh/authorized_keys, to check it exists
4. [To] Append the copied content on next line in authorized_keys
5. [From] Try ssh login
