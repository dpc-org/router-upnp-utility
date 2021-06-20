# Router UPnP utility

This application open or close UPnP port translation using a csv config file.
It can also list every existing UPnP mapping 

## Installation

```
python -m venv venv
pip install -r requirements.txt
```
## Configuration

Configuration is found in the **service.csv** file.  
Example of configuration:
```csv
description,protocol,ext_port,int_port,int_host
your description,TCP,8022,8022,192.168.1.51
```
Just add the hosts you want to remove or add by adding a line with every information about it.
## Run
With python
```
python router-utility.py [add|delete|ls]
```
With docker:
```
docker run --network=host -v $PWD/services.csv:/app/services.csv  pashmi/upnpclient [add|delete]
```
```
docker run --network=host pashmi/upnpclient ls
```


## Troubleshooting

1/ Host's firewall might block answer to upnp discovery (resulting in the "No IDG found" error)  
2/ Due to upnp **secure** mode that can be enabled by default on routers, the host can only add rule with its ip.  
