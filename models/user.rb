class User
  include DataMapper::Resource

  property :id, Serial
  property :user, String, :required => true, :unique => true
  property :password, String, :required => true
  property :salt, String, :default => ''
  property :email, String, :default => 'user@example.com'

  attr_accessor :password

  def password=(keyphrase)
    @password = keyphrase
    self.salt = User.random_string(10) if self.salt.blank?
    self.password = User.digest(@password, self.salt)
  end

  def self.authenticate(user, keyphrase)
    current_user = first(:user => user)
    return nil if current_user.nil?
    User.digest(keyphrase, current_user.salt) == current_user.password_hash ? current_user : nil
  end

  protected

  def self.digest(keyphrase, salt)
    Digest::SHA1.hexdigest(keyphrase + salt)
  end

  def self.random_string(len)
    chars = ("a".."z").to_a + ("A".."Z").to_a + ("0".."9").to_a
    rand_str = ""
    1.upto(len) { |i| rand_str << chars[rand(chars.size-1)] }
    return rand_str
  end

end
DataMapper.finalize

