# Router UPnP utility

This application open or close UPnP port translation using a csv config file.

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
```
python router-utility.py [add|delete]
```