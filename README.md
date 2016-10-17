Cross Domain Cookies Demo
===

This Demo shows how to read cookies from another domain using jQuery and Ruby

You can start it up with

```
cd server1 && rackup -p 9293
cd server2 && rackup -p 9292

open http://localhost:9293/get_cookies.html
```

SERVER1 will read SERVER2's cookies.
