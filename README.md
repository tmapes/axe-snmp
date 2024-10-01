# axe-snmp

Queries CraftComputing's [Axe Effect](https://github.com/CraftComputing/ProjectAxeEffect) for temperature and humidity.  
Outputs to InfluxDB v2.

## Setup

> [!NOTE]
> All variables are required

Enviromment Variables:
| Name          |
| ------------- |
| INFLUX_HOST   |
| INFLUX_ORG    |
| INFLUX_BUCKET |
| INFLUX_TOKEN  |


## Metric

The default telegraf metric of `snmp` is output.

Tags:
- source: IP/Hostname of the Axe Effect

Fields:
- temperature_celsius\
  unit: 4 digit float\
  ex: 23.45
- relative_humidity\
  unit: 5 digit float\
  ex: 45.456
