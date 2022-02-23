terraform {
  required_providers {
    linode = {
      source  = "linode/linode"
    }
  }
}

# hoge の箇所はアプリ名など適切な値に変更するといいでしょう
provider "linode" {
  # linode の API トークン
  token = "${var.linode.token}"
}

resource "linode_instance" "hoge" {
  image = "linode/ubuntu21.10"
  label = "hoge-web"
  group = "hoge"
  # 東京リージョン
  region = "ap-northeast"
  # 一番しょぼいインスタンスタイプ
  type = "g6-nanode-1"
  authorized_keys = [ "${var.linode_instance.authorized_keys}" ]
  root_pass = "${var.linode_instance.root_pass}"
}
