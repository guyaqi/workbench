# ps

## Usage

Show all

```sh
ps -ef
# ps aux
# no: ps -aux
```

Query

```sh
# show ngnix pid
ps -ef | grep nginx
# => root      1234     1  0 Jan13 ?        00:00:00 nginx: master process /usr/sbin/nginx -g daemon on; master_process on;
#
# pid is 1234(2nd col)
```
