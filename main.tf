provider "aws" {
  region  = "us-east-1"
  version = "~> 3.0" # Versão do plugin do terraform
}

# provider "aws" {
#     alias = "ohio" # apelido
#     region = "us-east-2" # Este bloco será usado para multi region
#     version = "~> 3.0" # Versão do plugin do terraform
# }

terraform {
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "descomplicando-terraform-eduafranco-tfstates" # S3 que armazena o estado
    # dynamodb_table = "terraform-state-lock-dynamo"
    key    = "terraform-testando.tfstate" # Nome do arquivo de estado
    region = "us-east-1"                  # Região da AWS que vai buscar o meu bucket
  }
}