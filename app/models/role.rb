# == Schema Information
# Schema version: 20101103032117
#
# Table name: roles
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Role < ActiveRecord::Base
  validates_presence_of :name
  
  has_many :user_roles
  has_many :users, :through => :user_roles
end
