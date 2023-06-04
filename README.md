# Introduction
Ce projet vous permettra de rechercher la liste des site ou un pseudo est utilisé.
Ce projet fonctionne uniquement sous docker.

# Prérequis :
Sous macos : docker desktop + make
Sous Windows : docker desktop + WSL + commande make sous le WSL
Sous Linux : Docker, dockercompose et make

# Installation

Pour installer la commande make

```bash
apt get update
apt install make
```

Pour cloner le projet :
```bash
en ssh
git clone git@github.com:AkizaShyn/kali-sherlock-docker.git

via https :
git clone https://github.com/AkizaShyn/kali-sherlock-docker.git
```

# Utilisation :
Il faut se rendre dans le dossier du projet et faire par exemple :

```bash
make search akizashyn
```
L'image docker sera automatiquement téléchargée et lancée


Exemple d'output :

```bash
[*] Checking username akizashyn on:
[+] [3477ms] GitHub: https://www.github.com/akizashyn
```