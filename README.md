# snip-service
Service implementation to shorten URLs listening as a gRPC server

## Installation
To run the server on local:
```ruby
bundle exec lib/start_server.rb
```

If you face permission issues, just do a `chmmod+x` for `lib/start_server.rb`

## Usage
To make a sample call:
```ruby
bundle exec test/test_snip_service.rb
```

##Client SDK
To understand how to use the client SDK to make gRPC calls, refer to client repository [Snip](https://github.com/shiladitya-bits/snip).