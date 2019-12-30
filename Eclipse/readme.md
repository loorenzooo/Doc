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

## Shortcuts
- Ctrl-Shift-L : Display shortcuts

### Edition
- Ctrl-D : Delete current line
- Shift-Enter : Add new line below
- Ctrl-Alt-D : Duplicate current line below (custom binding)
- Alt-Down : Move line down

## Resolve conflicts using egit
- Team / Merge tool
-- update left with right
-- once done Team / Add to index
-- git commit
