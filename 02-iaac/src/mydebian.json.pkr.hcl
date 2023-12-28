source "yandex" "debian_docker" {
  disk_type           = "network-hdd"
  folder_id           = "b1g8b6f8d7c5bnb4bgan"
  image_description   = "my custom debian with docker"
  image_name          = "debian-11-docker"
  source_image_family = "debian-11"
  ssh_username        = "debian"
  subnet_id           = "e9bgcm5p5ntpdnrp5s52"
  token               = "xxxx"
  use_ipv4_nat        = true
  zone                = "ru-central1-a"
}

build {
  sources = ["source.yandex.debian_docker"]

  provisioner "shell" {
    inline = [
        "echo 'hello from packer'",
        "sudo apt-get update -y",
        "sudo apt-get install -y ca-certificates curl gnupg",
        "sudo install -m 0755 -d /etc/apt/keyrings",
        "curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg",
        "sudo chmod a+r /etc/apt/keyrings/docker.gpg",
        "echo 'deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian bullseye stable' | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null",
        "sudo apt-get update -y",
        "sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin",
        "sudo apt-get install -y htop tmux"
        ]
  }

}