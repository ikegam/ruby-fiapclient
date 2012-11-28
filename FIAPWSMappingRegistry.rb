require 'FIAPWS.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsC_11 = "http://gutp.jp/fiap/2009/11/"
  NsSoapFiapOrg = "http://soap.fiap.org/"

  EncodedRegistry.register(
    :class => Key,
    :schema_type => XSD::QName.new(NsC_11, "key"),
    :schema_element => [
      ["key", "Key[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPAnyURI",
      XSD::QName.new(nil, "attrName") => "SOAP::SOAPString",
      XSD::QName.new(nil, "eq") => "SOAP::SOAPString",
      XSD::QName.new(nil, "neq") => "SOAP::SOAPString",
      XSD::QName.new(nil, "lt") => "SOAP::SOAPString",
      XSD::QName.new(nil, "gt") => "SOAP::SOAPString",
      XSD::QName.new(nil, "lteq") => "SOAP::SOAPString",
      XSD::QName.new(nil, "gteq") => "SOAP::SOAPString",
      XSD::QName.new(nil, "select") => "SOAP::SOAPString",
      XSD::QName.new(nil, "trap") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => Query,
    :schema_type => XSD::QName.new(NsC_11, "query"),
    :schema_element => [
      ["key", "Key[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPString",
      XSD::QName.new(nil, "type") => "SOAP::SOAPString",
      XSD::QName.new(nil, "cursor") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ttl") => "SOAP::SOAPNonNegativeInteger",
      XSD::QName.new(nil, "acceptableSize") => "SOAP::SOAPPositiveInteger",
      XSD::QName.new(nil, "callbackData") => "SOAP::SOAPAnyURI",
      XSD::QName.new(nil, "callbackControl") => "SOAP::SOAPAnyURI"
    }
  )

  EncodedRegistry.register(
    :class => Error,
    :schema_type => XSD::QName.new(NsC_11, "error"),
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  EncodedRegistry.register(
    :class => OK,
    :schema_type => XSD::QName.new(NsC_11, "OK"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => Header,
    :schema_type => XSD::QName.new(NsC_11, "header"),
    :schema_element => [
      ["oK", ["OK", XSD::QName.new(NsC_11, "OK")], [0, 1]],
      ["error", "Error", [0, 1]],
      ["query", "Query", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Value,
    :schema_type => XSD::QName.new(NsC_11, "value"),
    :schema_attribute => {
      XSD::QName.new(nil, "time") => "SOAP::SOAPDateTime"
    }
  )

  EncodedRegistry.register(
    :class => Point,
    :schema_type => XSD::QName.new(NsC_11, "point"),
    :schema_element => [
      ["value", "Value[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPAnyURI"
    }
  )

  EncodedRegistry.register(
    :class => PointSet,
    :schema_type => XSD::QName.new(NsC_11, "pointSet"),
    :schema_element => [
      ["pointSet", "PointSet[]", [0, nil]],
      ["point", "Point[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPAnyURI"
    }
  )

  EncodedRegistry.register(
    :class => Body,
    :schema_type => XSD::QName.new(NsC_11, "body"),
    :schema_element => [
      ["pointSet", "PointSet[]", [0, nil]],
      ["point", "Point[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Transport,
    :schema_type => XSD::QName.new(NsC_11, "transport"),
    :schema_element => [
      ["header", "Header", [0, 1]],
      ["body", "Body", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => QueryType,
    :schema_type => XSD::QName.new(NsC_11, "queryType")
  )

  EncodedRegistry.register(
    :class => AttrNameType,
    :schema_type => XSD::QName.new(NsC_11, "attrNameType")
  )

  EncodedRegistry.register(
    :class => SelectType,
    :schema_type => XSD::QName.new(NsC_11, "selectType")
  )

  EncodedRegistry.register(
    :class => TrapType,
    :schema_type => XSD::QName.new(NsC_11, "trapType")
  )

  LiteralRegistry.register(
    :class => Key,
    :schema_type => XSD::QName.new(NsC_11, "key"),
    :schema_element => [
      ["key", "Key[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPAnyURI",
      XSD::QName.new(nil, "attrName") => "SOAP::SOAPString",
      XSD::QName.new(nil, "eq") => "SOAP::SOAPString",
      XSD::QName.new(nil, "neq") => "SOAP::SOAPString",
      XSD::QName.new(nil, "lt") => "SOAP::SOAPString",
      XSD::QName.new(nil, "gt") => "SOAP::SOAPString",
      XSD::QName.new(nil, "lteq") => "SOAP::SOAPString",
      XSD::QName.new(nil, "gteq") => "SOAP::SOAPString",
      XSD::QName.new(nil, "select") => "SOAP::SOAPString",
      XSD::QName.new(nil, "trap") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => Query,
    :schema_type => XSD::QName.new(NsC_11, "query"),
    :schema_element => [
      ["key", "Key[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPString",
      XSD::QName.new(nil, "type") => "SOAP::SOAPString",
      XSD::QName.new(nil, "cursor") => "SOAP::SOAPString",
      XSD::QName.new(nil, "ttl") => "SOAP::SOAPNonNegativeInteger",
      XSD::QName.new(nil, "acceptableSize") => "SOAP::SOAPPositiveInteger",
      XSD::QName.new(nil, "callbackData") => "SOAP::SOAPAnyURI",
      XSD::QName.new(nil, "callbackControl") => "SOAP::SOAPAnyURI"
    }
  )

  LiteralRegistry.register(
    :class => Error,
    :schema_type => XSD::QName.new(NsC_11, "error"),
    :schema_attribute => {
      XSD::QName.new(nil, "type") => "SOAP::SOAPString"
    }
  )

  LiteralRegistry.register(
    :class => OK,
    :schema_type => XSD::QName.new(NsC_11, "OK"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => Header,
    :schema_type => XSD::QName.new(NsC_11, "header"),
    :schema_element => [
      ["oK", ["OK", XSD::QName.new(NsC_11, "OK")], [0, 1]],
      ["error", "Error", [0, 1]],
      ["query", "Query", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Value,
    :schema_type => XSD::QName.new(NsC_11, "value"),
    :schema_attribute => {
      XSD::QName.new(nil, "time") => "SOAP::SOAPDateTime"
    }
  )

  LiteralRegistry.register(
    :class => Point,
    :schema_type => XSD::QName.new(NsC_11, "point"),
    :schema_element => [
      ["value", "Value[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPAnyURI"
    }
  )

  LiteralRegistry.register(
    :class => PointSet,
    :schema_type => XSD::QName.new(NsC_11, "pointSet"),
    :schema_element => [
      ["pointSet", "PointSet[]", [0, nil]],
      ["point", "Point[]", [0, nil]]
    ],
    :schema_attribute => {
      XSD::QName.new(nil, "id") => "SOAP::SOAPAnyURI"
    }
  )

  LiteralRegistry.register(
    :class => Body,
    :schema_type => XSD::QName.new(NsC_11, "body"),
    :schema_element => [
      ["pointSet", "PointSet[]", [0, nil]],
      ["point", "Point[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Transport,
    :schema_type => XSD::QName.new(NsC_11, "transport"),
    :schema_element => [
      ["header", "Header", [0, 1]],
      ["body", "Body", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => QueryType,
    :schema_type => XSD::QName.new(NsC_11, "queryType")
  )

  LiteralRegistry.register(
    :class => AttrNameType,
    :schema_type => XSD::QName.new(NsC_11, "attrNameType")
  )

  LiteralRegistry.register(
    :class => SelectType,
    :schema_type => XSD::QName.new(NsC_11, "selectType")
  )

  LiteralRegistry.register(
    :class => TrapType,
    :schema_type => XSD::QName.new(NsC_11, "trapType")
  )

  LiteralRegistry.register(
    :class => Transport,
    :schema_name => XSD::QName.new(NsC_11, "transport"),
    :schema_element => [
      ["header", "Header", [0, 1]],
      ["body", "Body", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => QueryRQ,
    :schema_name => XSD::QName.new(NsSoapFiapOrg, "queryRQ"),
    :schema_element => [
      ["transport", ["Transport", XSD::QName.new(NsC_11, "transport")]]
    ]
  )

  LiteralRegistry.register(
    :class => QueryRS,
    :schema_name => XSD::QName.new(NsSoapFiapOrg, "queryRS"),
    :schema_element => [
      ["transport", ["Transport", XSD::QName.new(NsC_11, "transport")]]
    ]
  )

  LiteralRegistry.register(
    :class => DataRQ,
    :schema_name => XSD::QName.new(NsSoapFiapOrg, "dataRQ"),
    :schema_element => [
      ["transport", ["Transport", XSD::QName.new(NsC_11, "transport")]]
    ]
  )

  LiteralRegistry.register(
    :class => DataRS,
    :schema_name => XSD::QName.new(NsSoapFiapOrg, "dataRS"),
    :schema_element => [
      ["transport", ["Transport", XSD::QName.new(NsC_11, "transport")]]
    ]
  )
end
