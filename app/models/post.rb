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
  attr_accessible :title, :content, :status, :photo

  has_attached_file :photo,
  :styles => {
    :thumb=> "100x100#",
    :large =>   "400x400>" }
#    :url => "/assets/posts/:id/tyle/:basename.:extension",
#   :path => ":rails_root/public/assets/posts/:id/tyle/:basename.:extension"

  #validates_attachement_size :photo, :less_than => 10.megabytes

  STATUSES = ["draft", "publish"]

end
