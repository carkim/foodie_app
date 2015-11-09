class User < ActiveRecord::Base

  has_many :comments

  validates :username, presence: true, length: {maximum: 50}
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, format: { with: EMAIL_REGEX }, uniqueness: {case_sensitive: false}
  has_secure_password
  validates :password, presence: true, length: {minimum: 6}
end


#   def self.authenticate(email, submitted_password)
#     user = find_by_email(email)
#     return nil if user.nil?
#     return user if user.has_password? (submitted_password)
#   end
#
#   def self.authenticate_with_salt(id, cookie_salt)
#     user = find_by_id(id)
#     (user && user.salt == cookie_salt) ? user : nil
#   end
#
# end
