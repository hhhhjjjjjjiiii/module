module "stage" {
  source = "../01_test"

  name           = "hjkim"
  region         = "ap-northeast-3"
  ava            = ["a", "c"]
  key            = "hjkim-key"
  cidr_main      = "192.168.0.0/16"
  cidr_public    = ["192.168.0.0/24", "192.168.2.0/24"]
  cidr_private   = ["192.168.1.0/24", "192.168.3.0/24"]
  cidr_privatedb = ["192.168.4.0/24", "192.168.5.0/24"]
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
  instance_type  = "t3.small"
  load_type      = "application"
  storage_size   = 20
  storage_type   = "gp2"
  rds_engine     = "mysql"
  rds_ins_type   = "db.t3.small"
  rds_name       = "test"
  rds_username   = "admin"
  rds_password   = "It12345!"



}
