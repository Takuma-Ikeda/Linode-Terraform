# Terraform による Linode インスタンス新規作成サンプル

- OS
  - ubuntu 21.10
- インスタンスタイプ
  - nanode

上記は `main.tf` よりカスタマイズ可能です

# 手順

## README.md

- https://github.com/Takuma-Ikeda/Linode-Terraform/tree/main/terraform

## SSH

Linode インスタンス構築後の作業

```sh
# クライアントの公開鍵を転送: IP の箇所を Linode の IP アドレスで修正してください
scp ~/.ssh/id_rsa.pub root@IP:~/.ssh/authorized_keys
```

### クライアントの ~/.ssh/config

```
Host hoge
    HostName IP
    User root
    IdentityFile ~/.ssh/id_rsa
```

```sh
# 以下コマンドで SSH 可能になる
ssh hoge
```
