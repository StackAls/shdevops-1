# Домашняя работа к занятию 2. «Применение принципов IaaC в работе с виртуальными машинами»

## Задача 1

Установите на личный Linux-компьютер или учебную **локальную** ВМ с Linux следующие сервисы(желательно ОС ubuntu 20.04):

```bash
bugrov@admin4:~$ more /etc/lsb-release 
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=23.10
DISTRIB_CODENAME=mantic
DISTRIB_DESCRIPTION="Ubuntu 23.10"

bugrov@admin4:~$ virtualbox --help
Oracle VM VirtualBox VM Selector v7.0.10_Ubuntu
Copyright (C) 2005-2023 Oracle and/or its affiliates

No special options.

If you are looking for --startvm and related options, you need to use VirtualBoxVM.
bugrov@admin4:~$ vagrant --version
Vagrant 2.3.4
bugrov@admin4:~$ packer --version
1.9.5
bugrov@admin4:~$ yc --version
Yandex Cloud CLI 0.115.0 linux/amd64
bugrov@admin4:~$ 
```

## Задача 2

Работает

## Задача 3

https://github.com/StackAls/shdevops-1/blob/main/02-iaac/src/mydebian.json.pkr.hcl

```bash
yc compute instance list

bugrov@admin4:~/MyRepo/My/shdevops-1/02-iaac/src$ yc compute instances list
+----------------------+------+---------------+---------+----------------+-------------+
|          ID          | NAME |    ZONE ID    | STATUS  |  EXTERNAL IP   | INTERNAL IP |
+----------------------+------+---------------+---------+----------------+-------------+
| epd7amu9u1sa02q5a6n2 | tst  | ru-central1-b | RUNNING | 158.160.14.210 | 10.129.0.32 |
+----------------------+------+---------------+---------+----------------+-------------+

```
