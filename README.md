# Crypt Tools
This repository houses the manifest for a Docker image for encryption
<!--
## Encrypt with Keybase

```
keybase pgp encrypt username --no-self -m 'this is a secret'
```
or
```
keybase pgp encrypt username --no-self -i ./file.txt
```
-->

## Encrypt with GPG
```
curl https://keybase.io/username/key.asc -o key.pub
gpg --import key.pub
gpg --encrypt --trust-model always --armor --recipient user@email.com --output file.encrypted ./file.txt
cat file.encrypted
```
