module "resource_group" {
  source        = "./Modules/resourceGroup"
  resource_name = var.resource_name
  location      = var.location
}

module "virtual_network" {
  source        = "./Modules/virtualNetwork"
  resource_name = var.resource_name
  location      = var.location
  depends_on = [
    module.resource_group
  ]
}