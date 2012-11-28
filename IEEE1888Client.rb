#!/usr/bin/ruby1.8
require 'FIAPWSDriver.rb'
require 'pp'

class IEEE1888Client

  def initialize(endpoint)
    @obj = FIAPServiceSoap.new(endpoint)
  end

  def write(val, time, pointid)
    v = Value.new(val)
    v.xmlattr_time = time.iso8601
    p = Point.new([v])
    p.xmlattr_id = pointid
    self.query(p)
  end

  def query(point)
    header = Header.new()
    body = Body.new()
    body.point[0] = point
    transport = Transport.new(header, body)
    parameters = QueryRQ.new(transport)
    ret = @obj.data(parameters)

    if ret.transport == nil
      raise "The result does not contain a <transport>."
    end

    if ret.transport.header == nil
      raise "The result does not contain a header."
    end

    if ret.transport.header.oK == nil or ret.transport.header.error != nil
      raise "#{ret.transport.header.error}"
    end

    true
  end

end


if $0 == __FILE__
  p "hoge"
end
