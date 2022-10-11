variable "environment" {
    default = ""
    description = "Merge this is a test of the environment in which you would like to provision"
}

resource "random_pet" "host" {
    keepers = {
    # Generate a neew id each time the system time changes
    timestamp = "${naw()}"
    hopeful to create a merge conflict?
  }
}

output "host" {
  value = "${random_pet.host.id}-${lower(var.environment)}"
}
