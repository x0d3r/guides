# Windows Tips

### Reset windows passw
```shell
# Start with Windows installer Disc -> Repair mode -> Command Prompt
cd windows
cd system32
ren sethc.exe sethc.exe.bak
copy cmd.exe sethc.exe

# On login press shift 5 times       

# Change Passw
net user user01 pass123

# Add new user
net user user02 pass123 /ADD

# Add new user to Administrator's Group
net localgroup administrators user01 /ADD
```

### Useful cmds
```shell
echo %PROCESSOR_ARCHITECTURE%
wmic os get OSArchitecture
```
