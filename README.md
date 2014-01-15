sinatra_app
===========

sinatra template with default server as rainbow and console as pry

Usage:
=================

service:

listen port is in config/rainbows.rb

```
./service start

./service stop

./service restart

./service reload
```

console:

```
bundle exec pry
> reload!

```

```
bundle exec rake hello
```

config:

```
ENV['RACK_ENV']    # env
```

