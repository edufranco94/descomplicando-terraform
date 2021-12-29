data "aws_ami" "ubuntu" {
    most_recent = true # vai buscar a imagem mais recente baseado nos filtros que estou fazendo abaixo

    filter {
      name = "name" # meu filtro será pelo nome 
       values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"] # e eu quero buscar uma imagem que inicie com este nome
    }

    owners = ["099720109477"] # quero imagens só desse dono aqui (que é o ubuntu)
}

# data "aws_ami" "ubuntu_ohio" {
#     provider = aws.ohio
#     most_recent = true # vai buscar a imagem mais recente baseado nos filtros que estou fazendo abaixo

#     filter {
#       name = "name" # meu filtro será pelo nome 
#        values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"] # e eu quero buscar uma imagem que inicie com este nome
#     }

#     owners = ["099720109477"] # quero imagens só desse dono aqui (que é o ubuntu)
# }


resource "aws_instance" "web" {
    count = var.servers #quantidade de instâncias que quero provisionar
    ami = var.image_id
    instance_type = "t2.micro"
    # name = "teste-machine"
    tags = {
        name = "first-machine"
        productOwner = "Eduardo Franco"
        description = "primeiro teste ec2"
    }
}

# resource "aws_instance" "web_ohio" {
#     provider = aws.ohio
#     ami = data.aws_ami.ubuntu_ohio.id # sempre trocar a imagem da regiao
#     instance_type = "t2.micro"
#     # name = "teste-machine"
#     tags = {
#         name = "secound-machine"
#         productOwner = "Eduardo Franco"
#         description = "teste multi-region"
#     }
# }