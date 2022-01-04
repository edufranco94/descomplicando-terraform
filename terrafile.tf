module "servers" {      #nome do label do meu módulo
  source  = "./servers" #caminho de onde ele vai buscar o meu módulo
  servers = 2           #input
}

output "ip_address" {
  value = module.servers.ip_address
}