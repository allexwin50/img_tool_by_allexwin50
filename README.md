IMG Tool é uma ferramenta que tem seu foco principal voltado para criar e modificar `firmwares stock zip da Motorola` e agora, `firmwares da SAMSUNG` também, com algumas limitações, `super.img`, `system.img`, `system_ext.img`, `product.img`, `vendor.img`, `oem.img`, `odm.img`.

## Requerimentos
- protobuf
- LZMA
- 7z
- lz4

### Instalação

Em sistemas Debian e Ubuntu, instale todos as dependências necessárias usando o `apt`

```
apt --assume-yes update && apt --assume-yes install "git"
apt install unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract rename
apt install liblzma-dev python-pip brotli lz4
apt install liblzma-dev python3-pip brotli lz4
pip install backports.lzma protobuf pycrypto twrpdtgen extract-dtb
```

#### Fedora/CentOS

Em sistemas Fedora e CentOS, instale todos as dependências necessárias usando o `yum`

```
yum -y install "git"
```

#### Arch Linux

No Arch Linux, instale todos as dependências necessárias usando o `pacman`

```
pacman --sync --refresh && pacman --sync "git"
```

#### openSUSE

No openSUSE, instale todos as dependências necessárias usando o `zypper`

```
zypper refresh && zypper install "git"
```

### Código

Para obter o código fonte do IMG Tool, clone o repositório usando o `git`:

```
git clone https://github.com/allexwin50/img_tool_by_allexwin50.git
```
### Execução

Para iniciar o IMG Tool, execute dois passos no seu terminal:

```
chmod a+x *
./MAKE.sh
```

Pronto! o IMG Tool, ja está pronto. só escolher a ferramenta, de acordo com seu gosto.

### Agradecimentos:
Ao [cryzuezin](https://github.com/CRYZUEZIN) que me forneceu muito conhecimento para utilizar com precisão os comandos de remake super partição automaticamente e a como utilizar o simg2img.
Ao [menorziin](https://github.com/menorziin) que desenvolveu a ferramenta de extração de firmwares stock e que sempre me ajuda com partes de códigos que preciso.
Ao [Samuel](https://t.me/s4muel007) Que mais do que qualquer pessoa me ajuda e me ensina códigos para ambiente linux, muitos deles estão presentes nessa ferramenta como os códigos que verificam se o arquivo existe antes de iniciar o processo.

A todos vocês, meu agradecimento.

### Tutorial em vídeo de como utilizar a ferramenta abaixo!

[LINK](https://youtu.be/S3vFcpKSMXk)

### Contato

Quer falar alguma coisa? Precisa de alguma ajuda? [Contato](https://t.me/allexwin50)
