# == Schema Information
# Schema version: 20101103034429
#
# Table name: posts
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  content    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  belongs_to :user
  attr_accessible :title, :content, :status

  STATUSES = ["draft", "publish"]

end
