# == Schema Information
# Schema version: 20101103032117
#
# Table name: user_roles
#
#  id         :integer(4)      not null, primary key
#  user_id    :integer(4)
#  role_id    :integer(4)
#  created_at :datetime
#

class UserRole < ActiveRecord::Base
  belongs_to :user
  belongs_to :role
end
