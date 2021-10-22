variable "environment" {
    default = ""
    description = "trying out a change to see"
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
