# kill

## list

```sh
kill -l
# => HUP INT QUIT ILL TRAP ABRT EMT FPE KILL BUS SEGV SYS PIPE ALRM TERM URG STOP TSTP CONT CHLD TTIN TTOU IO XCPU XFSZ VTALRM PROF WINCH INFO USR1 USR2
```

## often used

Quit process

```sh
kill $pid
# kill -15 $pid
```

Force quit
```sh
kill -kill $pid
# kill -9 $pid
```
