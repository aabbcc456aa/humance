class Employee < ActiveRecord::Base
  validates_presence_of :name, :educational_background, :id_card
end

# == Schema Information
#
# Table name: employees
#
#  id                     :integer         not null, primary key
#  code                   :string(255)
#  name                   :string(255)
#  sex                    :string(255)
#  birthplace             :string(255)
#  birthday               :date
#  educational_background :string(255)
#  politics               :string(255)
#  address                :text
#  id_card                :string(255)
#  contact                :string(255)
#  worked_from            :date
#  hired_on               :date
#  remark                 :text
#  created_at             :datetime
#  updated_at             :datetime
#
