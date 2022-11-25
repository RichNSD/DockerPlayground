# Full Apache Build

[[ content ]]



<br /><br />

---

# Simple HTTPd Build

[[ content ]]


<br />

## SSL/HTTPS Setup

#### From Docker
> If you want to run your web traffic over SSL, the simplest setup is to `COPY` or mount `(-v)` your `server.crt` and `server.key` into `/usr/local/apache2/conf/` and then customize the `/usr/local/apache2/conf/httpd.conf` by removing the comment symbol from the following lines:

> ```dockerfile
...
#LoadModule socache_shmcb_module modules/mod_socache_shmcb.so
...
#LoadModule ssl_module modules/mod_ssl.so
...
#Include conf/extra/httpd-ssl.conf
...
```
