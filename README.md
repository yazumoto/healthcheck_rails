HealthcheckRails
===

HealthcheckRails is a simple health check module for your rails application.

When you use AWS (Amazon Web Service) ELB (Elastic load balancer), you need to add health check path.
This plugin just return 200(OK) status for your load balancer to make sure your rails application is running.

## Installation

Add your Gemfile...

```
gem 'healthcheck_rails'
```

And add your routes.rb...

```
# This is a sample. You can modify your route.
mount HealthcheckRails::Engine => 'healthcheck'
```

## Usage
After installation you can access `/healthcheck` (example above) to receive 200(OK) status.

```
# curl -i localhost:3000/healthcheck                                                                                                                         15:12:04
HTTP/1.1 200 OK
X-Frame-Options: SAMEORIGIN
X-Xss-Protection: 1; mode=block
X-Content-Type-Options: nosniff
Content-Type: text/plain; charset=utf-8
Cache-Control: no-cache
X-Request-Id: 4af7cbeb-654b-4fb8-8c2f-2774f50a0b95
X-Runtime: 0.058099
Server: WEBrick/1.3.1 (Ruby/2.3.1/2016-04-26)
Date: Mon, 28 Nov 2016 06:12:09 GMT
Content-Length: 0
Connection: Keep-Alive
```
