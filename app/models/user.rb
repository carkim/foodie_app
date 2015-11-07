class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_many :comments

  validates :username, presence: true
  validates_confirmation_of :password, message: "should match confirmation", if: :password

  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil if user.nil?
    return user if user.has_password? (submitted_password)
  end

  def self.authenticate_with_salt(id, cookie_salt)
    user = find_by_id(id)
    (user && user.salt == cookie_salt) ? user : nil
  end

end
