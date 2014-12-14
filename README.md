Nginx Pagespeed
===

My customize Nginx build with Google Pagespeed Module, this inspired from [laurisvan/docker-pagespeed](https://github.com/laurisvan/docker-pagespeed) and official nginx image.

Usage
---

### Hosting static content

```
docker run --name ngx-pagespeed -v $(pwd)/www:/etc/nginx/html:ro -d elct9620/nginx-pagespeed
```

### Add customize configure

```
docker run --name ngx-pagespeed -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf:ro -d elct9620/nginx-pagespeed
```

Make sure include `daemon off;` in your configure, it lets docker can track the process properly.

### Expose port

To let container can be access, you need to add expose options.

```
docker run --name ngx-pagespeed -p 8080:80 -d elct9620/nginx-pagespeed
```

Logs
---

The `access.log` and `error.log` are export to `stdout` and `stderr`, if you change log file location, please make sure the log can be track by yourself.

