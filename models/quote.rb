class Quote
  include DataMapper::Resource

  property :id, Serial
  property :quote, Text
  property :user, String
  property :date, DateTime
  DataMapper.finalize

end
