# Dev

module "dev-app" {
    source = "./interconnect"
    my_env =    "dev"
    ami = "ami-0eb260c4d5475b901"
    instance_type = "t2.micro"
    
}

module "stg-app" {
    source = "./interconnect"
    my_env = "stg"
    instance_type = "t2.micro"
    ami = "ami-0eb260c4d5475b901"
    
}

module "prd-app" {
    source = "./interconnect"
    my_env = "prd"
    instance_type = "t2.micro"
    ami = "ami-0eb260c4d5475b901"
    
}