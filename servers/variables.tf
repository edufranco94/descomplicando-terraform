variable "image_id" { #nome da variavel
  default = "ami-04505e74c0741db8d" #sera usado se nao for passado nada
  type = string #o valor esperado por esta variavel
  description = "The id of the machine image (AMI) to use for the server."

  validation {
      condition = length(var.image_id) > 4 && substr(var.image_id, 0, 4) == "ami-"
      error_message = "The image_id value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "servers" {
 #Não iremos especificar valor, pois, quando deixo em branco, eu obrigo o operador a passar algum input. Mas poderia usar o "default" como valor sugerido/provisório 
}