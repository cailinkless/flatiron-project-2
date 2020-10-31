class User < ActiveRecord::Base
    has_many :programs
    validates_presence_of :user_name, :password
    has_secure_password

    # def self.logged_in?
    #     !!session[:user_id]
    # end
  
    # def current_user
    #     User.find(session[:user_id])
    # end

end