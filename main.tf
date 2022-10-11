variable "environment" {
    default = ""
    description = "Merge this is a test of the environment in which you would like to provision"
}

resource "random_pet" "host" {
    keepers = {
    # Generate a neew id each time the system time changes
    timestamp = "${timestamp()}"
  }
}

What
if I 
    add more lines to make a conflict
output "host" {
  value = "${random_pet.host.id}-${lower(var.environment)}"
}
