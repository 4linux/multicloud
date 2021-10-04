### Cria um endereço de IP público
resource "azurerm_public_ip" "jitsi-public-ip" {
    name			= var.name_ip
    location			= var.location
    resource_group_name		= var.resource_group_name
    allocation_method		= "Static"
    sku				= "Standard"
}

### Cria o adaptador de rede virtual
resource "azurerm_network_interface" "jitsi-nic" {
    name                        = var.name_nic
    location                    = var.location
    resource_group_name         = var.resource_group_name

    ip_configuration {
        name                          = var.name_ip_configuration
        subnet_id                     = var.subnet_id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = azurerm_public_ip.jitsi-public-ip.id
    }
}

### Conecta o grupo de seguranca jitsi-meet a interface de rede
resource "azurerm_network_interface_security_group_association" "jitsi-meet" {
    network_interface_id      = azurerm_network_interface.jitsi-nic.id
    network_security_group_id = var.network_security_group_id_meet
}

### Cria a maquina virtual
resource "azurerm_linux_virtual_machine" "jitsi-meet-azure-terraform" {
    name                  = var.name_vm
    location              = var.location
    resource_group_name   = var.resource_group_name
    network_interface_ids = [azurerm_network_interface.jitsi-nic.id]
    size                  = var.size

    os_disk {
        name              = var.name_vm
        caching           = "ReadWrite"
        storage_account_type = "Premium_LRS"
    }

    source_image_reference {
        publisher	= "canonical"
        offer     	= "0001-com-ubuntu-server-focal"
        sku       	= "20_04-lts"
        version   	= "latest"
    }

    computer_name  	= var.name_vm
    admin_username 	= var.user
    disable_password_authentication = true

    admin_ssh_key {
        username       = var.user
        public_key     = file("~/.ssh/id_rsa.pub")
    }

    custom_data	       = filebase64("files/jitsi-jvb-azure-install.sh")

}
