# Resources, Resource Groups and Resource Manager

## Resource

* Core building-block
* Generic term/object for any service offered by Azure
* Resource is also an object used to manage the service
* Resource lifecycle is tied to the lifecycle of the service
  * i.e. when service is created/delete, the linked resource is also created/deleted
* it can be represented as a json file with all configs applied to your service
* the following 4 props are common in all resource templates

```json
{
    "type": "microsoft.storage",
    "apiversion": "2020-06-02",
    "name": "name",
    "location": "north europe"
}
```

## Resource Group

* logical container for resources and it is mandatory
* each resource can be part of only one RG
* access control container
* many strategies for groping
  * by type (all sqls in one and all webapps in one)
  * by app lifecycle (more common), one rg for dev resources and another one for prod resources
  * by department
  * by billing/location or combination of those

## Resource Manager

* Centralised management layer for all resources and resource groups
* Any resource management clients like CLI, powershell, portal - all goes thorough this
* validation, etc.. happens here
