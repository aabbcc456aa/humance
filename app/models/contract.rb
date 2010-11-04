class Contract < ActiveRecord::Base
  validates_presence_of :from, :term
  validates_numericality_of :term
  belongs_to :employee
  belongs_to :position
  belongs_to :department
  belongs_to :attachment_file

  def file_data= file
    self.attachment_file = AttachmentFile.new :data => file    
  end
end


# == Schema Information
#
# Table name: contracts
#
#  id                 :integer         not null, primary key
#  from               :date
#  term               :integer
#  position_id        :integer
#  department_id      :integer
#  attachment_file_id :integer
#  state              :string(255)     default("active")
#  created_at         :datetime
#  updated_at         :datetime
#
