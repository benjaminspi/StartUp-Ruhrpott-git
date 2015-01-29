class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  
	if Rails.env.production?
		devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :confirmable
	else
		devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable
	end
end
