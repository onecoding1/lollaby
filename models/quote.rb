class Quote
  include DataMapper::Resource

  property :id, Serial
  property :body, Text
  property :data, DateTime
  property :source, Text

  has n, :ranks
  
end

class Rank
  include DataMapper::Resource

  property :id, Serial
  property :quote_id, Integer, :required => true
  property :user_id, Integer, :required => true
  property :rank, Integer, :required => true

  belongs_to :user
  belongs_to :quote
end

DataMapper.finalize

