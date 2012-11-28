require 'FIAPWS.rb'
require 'FIAPWSMappingRegistry.rb'
require 'soap/rpc/driver'

class FIAPServiceSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://133.11.168.3/axis2/services/FIAPStorage/"

  Methods = [
    [ "http://soap.fiap.org/query",
      "query",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://soap.fiap.org/", "queryRQ"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://soap.fiap.org/", "queryRS"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://soap.fiap.org/data",
      "data",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://soap.fiap.org/", "dataRQ"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://soap.fiap.org/", "dataRS"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

