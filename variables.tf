variable "name" {
  type = string
}
variable "location" {
  type = string
}
variable "rg_name" {
  type = string
}
variable "tags" {
  type    = map(any)
  default = {}
}