require 'rubygems'
gem 'soap4r'
require 'xsd/qname'

# {http://gutp.jp/fiap/2009/11/}key
#   key - Key
#   xmlattr_id - SOAP::SOAPAnyURI
#   xmlattr_attrName - SOAP::SOAPString
#   xmlattr_eq - SOAP::SOAPString
#   xmlattr_neq - SOAP::SOAPString
#   xmlattr_lt - SOAP::SOAPString
#   xmlattr_gt - SOAP::SOAPString
#   xmlattr_lteq - SOAP::SOAPString
#   xmlattr_gteq - SOAP::SOAPString
#   xmlattr_select - SOAP::SOAPString
#   xmlattr_trap - SOAP::SOAPString
class Key
  AttrAttrName = XSD::QName.new(nil, "attrName")
  AttrEq = XSD::QName.new(nil, "eq")
  AttrGt = XSD::QName.new(nil, "gt")
  AttrGteq = XSD::QName.new(nil, "gteq")
  AttrId = XSD::QName.new(nil, "id")
  AttrLt = XSD::QName.new(nil, "lt")
  AttrLteq = XSD::QName.new(nil, "lteq")
  AttrNeq = XSD::QName.new(nil, "neq")
  AttrSelect = XSD::QName.new(nil, "select")
  AttrTrap = XSD::QName.new(nil, "trap")

  attr_accessor :key

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_id
    __xmlattr[AttrId]
  end

  def xmlattr_id=(value)
    __xmlattr[AttrId] = value
  end

  def xmlattr_attrName
    __xmlattr[AttrAttrName]
  end

  def xmlattr_attrName=(value)
    __xmlattr[AttrAttrName] = value
  end

  def xmlattr_eq
    __xmlattr[AttrEq]
  end

  def xmlattr_eq=(value)
    __xmlattr[AttrEq] = value
  end

  def xmlattr_neq
    __xmlattr[AttrNeq]
  end

  def xmlattr_neq=(value)
    __xmlattr[AttrNeq] = value
  end

  def xmlattr_lt
    __xmlattr[AttrLt]
  end

  def xmlattr_lt=(value)
    __xmlattr[AttrLt] = value
  end

  def xmlattr_gt
    __xmlattr[AttrGt]
  end

  def xmlattr_gt=(value)
    __xmlattr[AttrGt] = value
  end

  def xmlattr_lteq
    __xmlattr[AttrLteq]
  end

  def xmlattr_lteq=(value)
    __xmlattr[AttrLteq] = value
  end

  def xmlattr_gteq
    __xmlattr[AttrGteq]
  end

  def xmlattr_gteq=(value)
    __xmlattr[AttrGteq] = value
  end

  def xmlattr_select
    __xmlattr[AttrSelect]
  end

  def xmlattr_select=(value)
    __xmlattr[AttrSelect] = value
  end

  def xmlattr_trap
    __xmlattr[AttrTrap]
  end

  def xmlattr_trap=(value)
    __xmlattr[AttrTrap] = value
  end

  def initialize(key = [])
    @key = key
    @__xmlattr = {}
  end
end

# {http://gutp.jp/fiap/2009/11/}query
#   key - Key
#   xmlattr_id - SOAP::SOAPString
#   xmlattr_type - SOAP::SOAPString
#   xmlattr_cursor - SOAP::SOAPString
#   xmlattr_ttl - SOAP::SOAPNonNegativeInteger
#   xmlattr_acceptableSize - SOAP::SOAPPositiveInteger
#   xmlattr_callbackData - SOAP::SOAPAnyURI
#   xmlattr_callbackControl - SOAP::SOAPAnyURI
class Query
  AttrAcceptableSize = XSD::QName.new(nil, "acceptableSize")
  AttrCallbackControl = XSD::QName.new(nil, "callbackControl")
  AttrCallbackData = XSD::QName.new(nil, "callbackData")
  AttrCursor = XSD::QName.new(nil, "cursor")
  AttrId = XSD::QName.new(nil, "id")
  AttrTtl = XSD::QName.new(nil, "ttl")
  AttrType = XSD::QName.new(nil, "type")

  attr_accessor :key

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_id
    __xmlattr[AttrId]
  end

  def xmlattr_id=(value)
    __xmlattr[AttrId] = value
  end

  def xmlattr_type
    __xmlattr[AttrType]
  end

  def xmlattr_type=(value)
    __xmlattr[AttrType] = value
  end

  def xmlattr_cursor
    __xmlattr[AttrCursor]
  end

  def xmlattr_cursor=(value)
    __xmlattr[AttrCursor] = value
  end

  def xmlattr_ttl
    __xmlattr[AttrTtl]
  end

  def xmlattr_ttl=(value)
    __xmlattr[AttrTtl] = value
  end

  def xmlattr_acceptableSize
    __xmlattr[AttrAcceptableSize]
  end

  def xmlattr_acceptableSize=(value)
    __xmlattr[AttrAcceptableSize] = value
  end

  def xmlattr_callbackData
    __xmlattr[AttrCallbackData]
  end

  def xmlattr_callbackData=(value)
    __xmlattr[AttrCallbackData] = value
  end

  def xmlattr_callbackControl
    __xmlattr[AttrCallbackControl]
  end

  def xmlattr_callbackControl=(value)
    __xmlattr[AttrCallbackControl] = value
  end

  def initialize(key = [])
    @key = key
    @__xmlattr = {}
  end
end

# {http://gutp.jp/fiap/2009/11/}error
#   xmlattr_type - SOAP::SOAPString
class Error < ::String
  AttrType = XSD::QName.new(nil, "type")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_type
    __xmlattr[AttrType]
  end

  def xmlattr_type=(value)
    __xmlattr[AttrType] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://gutp.jp/fiap/2009/11/}OK
class OK
  def initialize
  end
end

# {http://gutp.jp/fiap/2009/11/}header
#   oK - OK
#   error - Error
#   query - Query
class Header
  attr_accessor :oK
  attr_accessor :error
  attr_accessor :query

  def initialize(oK = nil, error = nil, query = nil)
    @oK = oK
    @error = error
    @query = query
  end
end

# {http://gutp.jp/fiap/2009/11/}value
#   xmlattr_time - SOAP::SOAPDateTime
class Value < ::String
  AttrC_Time = XSD::QName.new(nil, "time")

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_time
    __xmlattr[AttrC_Time]
  end

  def xmlattr_time=(value)
    __xmlattr[AttrC_Time] = value
  end

  def initialize(*arg)
    super
    @__xmlattr = {}
  end
end

# {http://gutp.jp/fiap/2009/11/}point
#   value - Value
#   xmlattr_id - SOAP::SOAPAnyURI
class Point
  AttrId = XSD::QName.new(nil, "id")

  attr_accessor :value

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_id
    __xmlattr[AttrId]
  end

  def xmlattr_id=(value)
    __xmlattr[AttrId] = value
  end

  def initialize(value = [])
    @value = value
    @__xmlattr = {}
  end
end

# {http://gutp.jp/fiap/2009/11/}pointSet
#   pointSet - PointSet
#   point - Point
#   xmlattr_id - SOAP::SOAPAnyURI
class PointSet
  AttrId = XSD::QName.new(nil, "id")

  attr_accessor :pointSet
  attr_accessor :point

  def __xmlattr
    @__xmlattr ||= {}
  end

  def xmlattr_id
    __xmlattr[AttrId]
  end

  def xmlattr_id=(value)
    __xmlattr[AttrId] = value
  end

  def initialize(pointSet = [], point = [])
    @pointSet = pointSet
    @point = point
    @__xmlattr = {}
  end
end

# {http://gutp.jp/fiap/2009/11/}body
#   pointSet - PointSet
#   point - Point
class Body
  attr_accessor :pointSet
  attr_accessor :point

  def initialize(pointSet = [], point = [])
    @pointSet = pointSet
    @point = point
  end
end

# {http://gutp.jp/fiap/2009/11/}transport
#   header - Header
#   body - Body
class Transport
  attr_accessor :header
  attr_accessor :body

  def initialize(header = nil, body = nil)
    @header = header
    @body = body
  end
end

# {http://gutp.jp/fiap/2009/11/}queryType
class QueryType < ::String
  Storage = QueryType.new("storage")
  Stream = QueryType.new("stream")
end

# {http://gutp.jp/fiap/2009/11/}attrNameType
class AttrNameType < ::String
  C_Time = AttrNameType.new("time")
  Value = AttrNameType.new("value")
end

# {http://gutp.jp/fiap/2009/11/}selectType
class SelectType < ::String
  Maximum = SelectType.new("maximum")
  Minimum = SelectType.new("minimum")
end

# {http://gutp.jp/fiap/2009/11/}trapType
class TrapType < ::String
  Changed = TrapType.new("changed")
end

# {http://soap.fiap.org/}queryRQ
#   transport - Transport
class QueryRQ
  attr_accessor :transport

  def initialize(transport = nil)
    @transport = transport
  end
end

# {http://soap.fiap.org/}queryRS
#   transport - Transport
class QueryRS
  attr_accessor :transport

  def initialize(transport = nil)
    @transport = transport
  end
end

# {http://soap.fiap.org/}dataRQ
#   transport - Transport
class DataRQ
  attr_accessor :transport

  def initialize(transport = nil)
    @transport = transport
  end
end

# {http://soap.fiap.org/}dataRS
#   transport - Transport
class DataRS
  attr_accessor :transport

  def initialize(transport = nil)
    @transport = transport
  end
end
