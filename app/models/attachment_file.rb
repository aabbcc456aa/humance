class AttachmentFile < ActiveRecord::Base
  has_attached_file :data, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
