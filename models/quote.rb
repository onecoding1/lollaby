class Quote
  include DataMapper::Resource

  property :id, Serial
  property :body, Text
  property :date, Text
  property :source, Text

end

DataMapper.finalize

