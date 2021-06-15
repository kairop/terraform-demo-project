provider "aws" {
  region = "us-east-2"
  shared_credentials_file = "C:/Users/Ham/.aws/credentials"
  profile = "default"
}

resource "aws_vpc" "development-vpc" {
    cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "dev-subnet-1" {
    vpc_id = aws_vpc.development-vpc.id
    cidr_block = "10.0.10.0/24"
    availability_zone = "us-east-2"
}



