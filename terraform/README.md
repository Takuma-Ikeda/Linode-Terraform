# 実行環境

## Mac 環境

```sh
brew install terraform

# バージョン確認
terraform -version
Terraform v1.1.3
on darwin_arm64
```

## Docker 環境

```sh
docker-compose up -d
docker-compose exec terraform ash

# バージョン確認
terraform -version
Terraform v1.0.5
on linux_amd64
```

# 実行方法

1. `variables.sample.tf` を参考に `variables.tf` を作成してください
2. `variables.sample.tf` を削除してください
3. `variables.tf` 内の値を設定してください
4. セキュアな値が含まれるで `variables.tf` はコミット非推奨です

```sh
terraform init

# 文法チェック
terraform plan

# 環境構築: yes と入力する
terraform apply

# 環境破壊: yes と入力する
terraform destroy
```

# main.tf のカスタマイズ

- `terraform/main.tf` 内で OS (image) の種類、リージョン、インスタンスタイプを指定しています
  - Linode API を叩くことでどういう値を指定できるのか知ることができるので、その値を使ったカスタマイズが可能です
  - https://www.linode.com/docs/api
- Terraform の記述方法は下記参照
  - - https://registry.terraform.io/providers/linode/linode/latest/docs/resources/instance

## image

- https://api.linode.com/v4/images

## region

 - https://api.linode.com/v4/regions

## type

- https://api.linode.com/v4/linode/types
