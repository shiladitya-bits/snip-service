#!/usr/bin/env ruby
require 'grpc'
require 'snip_services_pb'

def test_single_call
  stub = Snip::UrlSnipService::Stub.new('0.0.0.0:50052', :this_channel_is_insecure)
  req = Snip::SnipRequest.new(url: 'http://shiladitya-bits.github.io')
  resp_obj = stub.snip_it(req)
  puts "Snipped URL: #{resp_obj.url}"
end

test_single_call