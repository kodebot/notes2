# Azure Compute Services

## Virtual Machine (VM)

* IaaS
* emulation of physical machine
* many VMs can run on one physical machine
* custom image or image from marketplace (may or maynot be from Microsoft)
* useful for lift-and-shift or the scenarios that need special software
* no auto scaling possible

## Virtual Machine Scale Sets (VMSS)

* IaaS
* Set of identical VMs created from same image
* Supports auto scaling via load-balancer (min:0, max: 1000/600 - dep on pricing tier)

## Container (not an offering)

* IaaS
* Similar to VM but emulates OS rather than physical machine using container runtime layer
  * i.e. it uses host OS
* auto-scaling is faster

## Azure Container Instances (ACI)

* PaaS
* MS managed container runtime
* no auto-scaling of nodes (min: 0, max:20)
* good for simple uses case

## Azure Kubernetes Service (AKS)

* PaaS (Container Orchestration)
* supports auto-scaling of nodes (min: 3, max: 100)
* supports complex scaling and deployments

## App Service

* PaaS
* sits between ACI and AKS
* for hosting WebApp/WebAPI
* supports auto-scaling (min: 1, max: 20/100 dep on pricing tier)

## Azure Functions

* PaaS
* similar to and based on App Service but for small pieces of code
* for micro/nano services
* serverless
  * consumption based
  * dedicated plan
* supports auto-scaling (min: 0, max: 200)

> Refer to compute decision workflow in MS site to choose right one
