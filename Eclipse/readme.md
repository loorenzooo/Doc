## Command line arguments
```bash
-debug
-clean
-data "<workspace>"
-consoleLog : affiche les logs dans la console
```

## Specify jvm in eclipse.ini file
```ini
-vm
C:\Java\jdk1.7.0_80_x86\bin\javaw.exe
-vmargs
-Dosgi.requiredJavaVersion=1.7
-Xmx512m
-XX:MaxPermSize=512m
```
Project metadata are stored in `[WORKSPACE]/.plugins/org.eclipse.core.resources/.projects`
