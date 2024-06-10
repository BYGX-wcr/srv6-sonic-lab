# SRv6 SONiC Lab

## Prerequisites

* Containerlab

## Deploy the topology

1. Load the SONiC VS docker image:
   
   ```shell
   # docker load -i target/docker-sonic-vs.gz
   ```

3. Create bridge:
   
   ```shell
   # ip link add br0 type bridge
   ```
5. Enable bridge:
   
   ```shell
   # ip link set br0 up
   ```
6. Deploy the topology:
   
   ```shell
   # containerlab deploy
   ```

## Testing

1. Enter the container:
   
   ```shell
   # docker exec -it docker exec -it clab-srv6-sonic-h11 bash
   h11:/# ping 2001:4::1
   ```

## Destroy the topology

1. Destroy the topology:
   ```shell
   # containerlab destroy
   ```


   

