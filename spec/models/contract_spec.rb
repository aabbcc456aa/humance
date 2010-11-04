require 'spec_helper'

describe Contract do
  pending "add some examples to (or delete) #{__FILE__}"
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

