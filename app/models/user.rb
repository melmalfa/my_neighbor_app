class User < ActiveRecord::Base
  # we get this method from bcrypt
  # and need to create a password_digest column
  has_secure_password
end



