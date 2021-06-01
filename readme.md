
# Modulo - Network Watcher
[![Avanade](https://img.shields.io/badge/create%20by-Avanade-orange)](https://www.avanade.com/pt-br/about-avanade) [![HCL](https://img.shields.io/badge/language-HCL-blueviolet)](https://www.terraform.io/)
[![Azure](https://img.shields.io/badge/provider-Azure-blue)](https://registry.terraform.io/providers/hashicorp/azurerm/latest)

Modulo desenvolvido para facilitar a criação de Network Watcher

## Compatibilidade de Versão

| Versão do Modulo | Versão Terraform | Versão AzureRM |
|----------------|-------------------| --------------- |
| >= 1.x.x       | 0.14.x            | >= 2.46         |

## Especificando versão

Para evitar que seu código receba atualizações automáticas do modulo, é preciso informar na chave `source` do bloco do module a versão desejada, utilizando o parametro `?ref=***` no final da url. conforme pode ser visto no exemplo abaixo.

## Exemplo de uso


```hcl
  module "exemplo_1" {
  source    = "git::https://timbrasil@dev.azure.com/timbrasil/Projeto_IaC/_git/azr-network/modulo-network-watcher.git?ref=v1.0.0"
  name     = "NetworkWatcher-1"
  location = "brazilsouth"
  rg_name  = "resource_group_name"
  tags = {
    "region" = "brazilsouth"
  }
}
output "id" {
  value = module.exemplo_1.id
  }
```

## Entrada de Valores

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | nome que será dado ao recusro | `string` | n/a | yes |
| rg_name | nome do resource group onde os recursos serão alocados | `string` | n/a | yes |
| tags | Tags adicionais | `map(string)` | `{}` | No |
| location | Região do Azure | `string` | n/a | yes |


## Saída de Valores

| Name | Description |
|------|-------------|
| id | IDs gerada após provisionamento do recurso |

## Documentação de Referência

Terraform Application Security Group: [https://www.terraform.io/providers/azurerm/latest/docs/resources/network_watcher](https://www.terraform.io/providers/azurerm/latest/docs/resources/network_watcher)
