# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: prohelp.proto for package 'prohelp'

require 'grpc'
require 'prohelp_pb'

module Prohelp
  module ProtoService
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'prohelp.ProtoService'

      rpc :do_it, ProtoRequest, ProtoResponse
    end

    Stub = Service.rpc_stub_class
  end
end
