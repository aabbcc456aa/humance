class AttachmentFile < ActiveRecord::Base
  has_attached_file :data, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  
  before_post_process :image?
  def image?
    !(data_content_type =~ /^image.*/).nil?
  end
end

# == Schema Information
#
# Table name: attachment_files
#
#  id                :integer         not null, primary key
#  data_file_name    :string(255)
#  data_content_type :string(255)
#  data_file_size    :integer
#  data_updated_at   :datetime
#  created_at        :datetime
#  updated_at        :datetime
#

