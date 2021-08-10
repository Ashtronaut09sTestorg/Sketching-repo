variable "environment" {
    default = ""
    description = "The bleh this is a test of the environment in which you would like to provision"
}

resource "random_pet" "host" {
    keepers = {
    # Generate a neew id each time the system time changes
    timestamp = "${timestamp()}"
  }
}

output "host" {
  value = "${random_pet.host.id}-${lower(var.environment)}"
}
