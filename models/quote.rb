class Quote
  include DataMapper::Resource

  property :id, Serial
  property :body, Text
  property :data, DateTime
  property :source, Text

  has n, :ranks
  
end
