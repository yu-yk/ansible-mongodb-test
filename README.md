# ansible-mongodb-test

ssh password is `root`
```
docker compose up -d

ssh-copy-id -i ~/.ssh/id_ed25519.pub root@127.0.0.1 -p 20001
ssh-copy-id -i ~/.ssh/id_ed25519.pub root@127.0.0.1 -p 20002
ssh-copy-id -i ~/.ssh/id_ed25519.pub root@127.0.0.1 -p 20003

ansible-playbook -i local playbook.yml 
```