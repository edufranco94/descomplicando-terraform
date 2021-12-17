data "aws_ami" "ubuntu" {
    most_recent = true # vai buscar a imagem mais recente baseado nos filtros que estou fazendo abaixo

    filter {
      name = "name" # meu filtro será pelo nome 
       values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"] # e eu quero buscar uma imagem que inicie com este nome
    }

    owners = ["099720109477"] # quero imagens só desse dono aqui (que é o ubuntu)
}

resource "aws_instance" "web" {
    ami = data.aws_ami.ubuntu.id
    instance_type = "t2.micro"
    # name = "teste-machine"
    tags = {
        name = "Hello world"
        productOwner = "Eduardo Franco"
        description = "primeiro teste ec2"
    }
}