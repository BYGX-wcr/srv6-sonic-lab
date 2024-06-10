# SRv6 SONiC Lab

## Prerequisites
* Containerlab

## Deploy the topology

1. Load the SONiC VS docker image
   ```shell
   docker load -i target/docker-sonic-vs.gz
   ```

3. Create bridge:
   ```shell
   sudo ip link add br0 type bridge
   ```
4. Enable bridge:
   ```shell
   sudo ip link set br0 up
   ```
5. Deploy the topology
   ```shell
   sudo containerlab deploy
   ```



   

