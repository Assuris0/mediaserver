#!/bin/bash

# Add eth1
/root/docker/pipework/pipework br3 -i eth1 iot_homeassistant_1 192.168.30.6/24 54:52:00:30:00:06
/root/docker/pipework/pipework route iot_homeassistant_1 add 224.0.0.50 dev eth1
