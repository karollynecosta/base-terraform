# Informacoes referenciais do recurso
data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"] # pegar sempre a mais recente
  }

  owners = ["099720109477"] # Canonical Ubuntu Owner, nao mude sem mudar o filtro
}

# Criacao de um recurso 
resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"

  tags = {
    Name = "Inicio"
  }
}