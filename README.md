# salt-minion

Salt Minion docker image, integration tests pourpose.

### How to Run

```bash
docker run -it -e "MINION_ID=%MINION_NAME%" -e "SALT_MASTER=%MASTER_IP%" fbraz3/salt-minion
```

### Variables

 |Variable|Description|
|-----|-----|
| **%MINION_NAME%** | Minion name, references to salt-key command |
| **%MASTER_IP%** | Salt master IP Addr |