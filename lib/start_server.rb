#!/usr/bin/env ruby
require 'rubygems'
require 'snip_services_pb'
require_relative 'services/snip_service'
class SnipServer

  class << self
    def start
      start_grpc_server
    end

    private
    def start_grpc_server
      @server = GRPC::RpcServer.new
      @server.add_http2_port("0.0.0.0:50052", :this_port_is_insecure)
      @server.handle(SnipService)
      @server.run_till_terminated
    end
  end
end

SnipServer.start