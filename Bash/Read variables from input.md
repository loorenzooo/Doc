```bash
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Oo]$ ]]
then
   echo "NON"
   exit 1
else
        echo "OUI"
        exit 0
fi
```
