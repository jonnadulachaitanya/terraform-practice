variable "instance_names" {
    type = list(string)
    default = ["mysql","frontend","backend"]
}

# variable "instance_types" {
#     type = list(string)
#     default = ["t2.micro","t3.micro","t3.small"]
# }