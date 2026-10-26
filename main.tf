resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr
  tags = {
    Name = "my-vpc"
  }
  
}



resource "aws_subnet" "my_subnet-1" {
    vpc_id            = aws_vpc.my_vpc.id
    cidr_block        = "10.0.1.0/24"
    availability_zone = "ap-south-1a"
    map_public_ip_on_launch = true

    tags = {
        Name = "my-subnet-1"
    }
}



resource "aws_subnet" "my_subnet-2" {
    vpc_id            = aws_vpc.my_vpc.id
    cidr_block        = "10.0.2.0/24"
    availability_zone = "ap-south-1b"
    map_public_ip_on_launch = true

    tags = {
        Name = "my-subnet-2"
    }
}


# Internet Gateway


resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id

  tags = {
    Name = "my-igw"
  }
}



# Route Table

resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.my_igw.id
  }

    tags = {
        Name = "my-route-table"
    }
}   




# Route Table Association 1

resource "aws_route_table_association" "my_route_table_association-1" {
  subnet_id      = aws_subnet.my_subnet-1.id
  route_table_id = aws_route_table.my_route_table.id
}

resource "aws_route_table_association" "my_route_table_association-2" {
  subnet_id      = aws_subnet.my_subnet-2.id
  route_table_id = aws_route_table.my_route_table.id
}






# Security Group

resource "aws_security_group" "my-sg" {
  name   = "my-security-group"
  vpc_id = aws_vpc.my_vpc.id

  # Allow HTTP traffic
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow SSH traffic
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "my-security-group"
  }
}







        

resource "aws_s3_bucket" "my_bucket" {
  bucket = "terr-proj-bucket"

  tags = {
    Name = "my-s3-bucket"
  }

  
}





resource "aws_instance" "my_instance-1" {
  ami           = "ami-0c7632fb77f35db43"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.my_subnet-1.id
  vpc_security_group_ids = [aws_security_group.my-sg.id]
  user_data = file("userdata.sh")

  tags = {
    Name = "Terraform-project-instance-1"
  }

}


resource "aws_instance" "my_instance-2" {
  ami           = "ami-0c7632fb77f35db43"
  instance_type = "t3.micro"
  subnet_id     = aws_subnet.my_subnet-2.id
  vpc_security_group_ids = [aws_security_group.my-sg.id]
  user_data = file("userdata1.sh")

  tags = {
    Name = "Terraform-project-instance-2"
  }

}







