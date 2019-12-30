# Generate ssh keys pairs
ssh-keygen -t rsa -b 4096 -C "lbourgeois@talend.com" -f /home/lbourgeois/.ssh/id_rsa_github

# Example: Tunneling tbd-bench-02:18089 to localhost:18089
```bash
ssh -L18089:localhost:18089 talend@tbd-bench-02
```
