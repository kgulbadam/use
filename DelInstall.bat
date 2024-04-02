@echo off
schtasks /delete /s 172.30.227.16 /u s.krivtsov /p 123456 /tn sqs /f
schtasks /delete /s 172.30.227.16 /u s.krivtsov /p 123456 /tn sql /f
schtasks /delete /s 172.30.227.16 /u s.krivtsov /p 123456 /tn sqc /f
del \\172.30.227.16\c$\windows\web\alg.log
net use /del * /y
