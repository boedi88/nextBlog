# == Schema Information
# Schema version: 20101103032117
#
# Table name: users
#
#  id                  :integer(4)      not null, primary key
#  login               :string(255)     not null
#  email               :string(255)     not null
#  crypted_password    :string(255)
#  password_salt       :string(255)
#  persistence_token   :string(255)     not null
#  single_access_token :string(255)     not null
#  perishable_token    :string(255)     not null
#  login_count         :integer(4)      default(0), not null
#  failed_login_count  :integer(4)      default(0), not null
#  last_request_at     :datetime
#  current_login_at    :datetime
#  last_login_at       :datetime
#  current_login_ip    :string(255)
#  last_login_ip       :string(255)
#  created_at          :datetime
#  updated_at          :datetime
#  role                :string(255)
#

class User < ActiveRecord::Base
  acts_as_authentic
  attr_accessible :login, :email, :password, :password_confirmation, :role
  
  has_many :user_roles, :dependent => :destroy
  has_many :roles, :through => :user_roles
  has_many :post
  
  # returns true if the user has the "admin" role, false if not.
  def admin?
    #has_role?("admin")
    :role == "admin"
  end

  # returns true if the specified role is associated with the user.
  #  
  #  user.has_role("admin")
  def has_role?(role)
    self.roles.count(:conditions => ["name = ?", role]) > 0
  end
  
  # Adds a role to the user by name
  #
  # user.add_role("mentor")
  def add_role(role)
    return if self.has_role?(role)
    self.roles << Role.find_by_name(role)
  end
end
