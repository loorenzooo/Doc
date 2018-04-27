# Backup a directory
```bash
cp -avr /home/vivek/letters /usb/backup
```

# Duplicate a directory into another
```bash
lbourgeois@tlnd-lbourgeois ~/Git/tuj-bigdata/tuj_generator/target (kcoepeau/cdh513) $ mkdir -p test1/test11
lbourgeois@tlnd-lbourgeois ~/Git/tuj-bigdata/tuj_generator/target (kcoepeau/cdh513) $ touch test1/test11/f1
lbourgeois@tlnd-lbourgeois ~/Git/tuj-bigdata/tuj_generator/target (kcoepeau/cdh513) $ mkdir test2
lbourgeois@tlnd-lbourgeois ~/Git/tuj-bigdata/tuj_generator/target (kcoepeau/cdh513) $ cp -R test1 test2
lbourgeois@tlnd-lbourgeois ~/Git/tuj-bigdata/tuj_generator/target (kcoepeau/cdh513) $ find test2
test2
test2/test1
test2/test1/test11
test2/test1/test11/f1
```
