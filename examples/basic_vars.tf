###list example
#variables.tf
variable "prefix" {
	default = ["Mr", "Mrs", "Sir"]
	type = list
}

#main.tf
resource "local_file" "pet" {
	prefix= var.prefix[0]
}


###map example
variables.tf
variable file-content {
	type = map
	default = {
		"statement1" = "We love pets!"
		"statement2" = "we love animals"
	}
}

#main.tf
resource "local_file" "pet" {
	prefix= var.prefix[0]
	content = var.file-content["statement1"]
}
