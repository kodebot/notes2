# Azure IoT services

* Internet of Things (IoT) is a network of internet connected devices (IoT Devices) embedded in everyday objects
* it enable those objects to send/receive data such as settings/telemetry

## Azure IoT Hub

* PaaS
* managed bi-directional communication between
  * IoT Hub and
  * IoT Devices
* secure, scalable and reliable
* integrates with many Azure Services
* programmable SDK for many popular languages
* supports multiple protocol
  * Https
  * AMQP
  * MQTT

## Azure IoT Central

* same as and built on IoT Hub but allow building apps using standardised templates
  * app delivery platform for IoT
    * for device mgmt and centralisation
* IoT App platform (SaaS)
* has industry specific templates

## Azure Sphere

* not really a service rather a set of components allow building secure IoT apps
  * Sphere MCU (Micro Controller Unit)
    * MCU built according to Microsoft's specification
  * Sphere OS
    * app are built on top of this
  * Azure Sphere Security Service
    * used for secure comms between device and cloud
      * support team and Microsoft can use it for applying patches
