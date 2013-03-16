class User < ActiveRecord::Base
	has_secure_password
	has_many :microposts
    attr_accessible :name, :email, :password, :password_confirmation
end
