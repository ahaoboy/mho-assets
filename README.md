https://github.com/ahaoboy/mho

https://github.com/ahaoboy/mho-ui

https://github.com/MetaCubeX/mihomo

https://github.com/SagerNet/sing-box

https://github.com/MetaCubeX/metacubexd

### mho

```bash

curl -fsSL https://cdn.jsdelivr.net/gh/ahaoboy/mho-assets@main/install.sh | sh -s -- --proxy jsdelivr

curl -fsSL https://raw.githubusercontent.com/ahaoboy/mho-assets@main/install-full.sh | sh -s -- --dir ~/.mho

curl -fsSL https://gh-proxy.com/https://github.com/ahaoboy/mho-assets/blob/main/install.sh | sh -s -- --proxy gh-proxy

```

### mho-full

**tar needs to support the gz format.**

```bash

ei ahaoboy/mho-assets --name mho-full --dir ~/.mho

# Needs to support extracting tar.gz files.
curl -fsSL https://cdn.jsdelivr.net/gh/ahaoboy/mho-assets@main/install-full.sh | sh -s -- --proxy jsdelivr --dir ~/.mho

curl -fsSL https://gh-proxy.com/https://github.com/ahaoboy/mho-assets/blob/main/install-full.sh | sh -s -- --proxy gh-proxy

ei https://github.com/ahaoboy/mho-assets/blob/main/mho-full-x86_64-pc-windows-msvc.tar.gz
```

### router
```bash
ei ahaoboy/mho-assets --name mho-full --proxy jsdelivr --dir /jffs
```


### dev

```bash
git clone https://github.com/ahaoboy/mho-assets.git --branch dev --depth=1
```