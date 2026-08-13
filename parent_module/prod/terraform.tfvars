resource_group = {
  rg1 = {
    name     = "rg-terraform"
    location = "East US"
  }
}
virtual_network = {
  vnet1 = {
    name                = "vnet-terraform"
    resource_group_name = "rg-terraform"
    location            = "East US"
    address_space       = ["10.0.0.0/16"]
  }
}

subnet = {
  subnet1 = {
    name                 = "frontend-subnet"
    resource_group_name  = "rg-terraform"
    virtual_network_name = "vnet-terraform"
    address_prefixes     = ["10.0.1.0/24"]

  }
  subnet2 = {
    name                 = "backend-subnet"
    resource_group_name  = "rg-terraform"
    virtual_network_name = "vnet-terraform"
    address_prefixes     = ["10.0.2.0/24"]
  }
  subnet3 = {
    name                 = "database-subnet"
    resource_group_name  = "rg-terraform"
    virtual_network_name = "vnet-terraform"
    address_prefixes     = ["10.0.3.0/24"]
  }
}

public_ip = {
  pip1 = {
    name                = "public-ip-terraform"
    resource_group_name = "rg-terraform"
    location            = "East US"
    allocation_method   = "Static"
  }
}

network_security_group = {
  nsg1 = {
    name                 = "nsg-terraform"
    resource_group_name  = "rg-terraform"
    location             = "East US"
    virtual_network_name = "vnet-terraform"
    subnet_name          = "frontend-subnet"
  }
}

network_interface = {
  nic1 = {
    name                 = "nic-terraform"
    resource_group_name  = "rg-terraform"
    location             = "East US"
    virtual_network_name = "vnet-terraform"
    subnet_name          = "frontend-subnet"
    pip_name             = "public-ip-terraform"


  }
}



virtual_machine = {
  vm1 = {
    nic_name            = "nic-terraform"
    name                = "vm-terraform"
    resource_group_name = "rg-terraform"
    location            = "East US"
    size                = "Standard_DS1_v2"
    admin_username      = "adminuser"
    admin_password      = "P@ssw0rd1234!"

    os_disk = {
      caching              = "ReadWrite"
      storage_account_type = "Standard_LRS"
    }

    source_image_reference = {
      publisher = "MicrosoftWindowsServer"
      offer     = "WindowsServer"
      sku       = "2019-Datacenter"
      version   = "latest"
    }
  }
}