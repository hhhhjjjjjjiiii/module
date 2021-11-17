module "stage" {
  source = "../01_test"

  name           = "hjkim"
  region         = "ap-northeast-2"
  ava            = ["a", "c"]
  key            = "hjkim-key"
  cidr_main      = "10.0.0.0/16"
  cidr_public    = ["10.0.0.0/24", "10.0.2.0/24"]
  cidr_private   = ["10.0.1.0/24", "10.0.3.0/24"]
  cidr_privatedb = ["10.0.4.0/24", "10.0.5.0/24"]
  cidr_route     = "0.0.0.0/0"
  cidr_ip6       = "::/0"
  protocol_tcp   = "tcp"
  protocol_HTTP  = "HTTP"
  protocol_icmp  = "icmp"
  protocol_min   = -1
  port_ssh       = 22
  port_http      = 80
  port_mysql     = 3306
  port_all       = 0
  instance_type  = "t2.micro"
  load_type      = "application"
  storage_size   = 20
  storage_type   = "gp2"
  rds_engine     = "mysql"
  rds_ins_type   = "db.t2.micro"
  rds_name       = "test"
  rds_username   = "admin"
  rds_password   = "It12345!"



}
