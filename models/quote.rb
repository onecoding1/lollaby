class Quote
  include DataMapper::Resource

  property :id, Serial
  property :quote, Text
  property :user_id, Integer, :required => true
  property :created_at, DateTime


  belongs_to :user
  belongs_to :poster, :model => 'User', :child_key => [ :user_id ]

  has n, :ratings
  
end
