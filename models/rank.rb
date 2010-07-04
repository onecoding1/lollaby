class Rank
  include DataMapper::Resource

  property :id, Serial
  property :quote_id, Integer, :required => true
  property :user_id, Integer, :required => true
  property :rank, Integer, :required => true

  belongs_to :user
  belongs_to :quote
end
