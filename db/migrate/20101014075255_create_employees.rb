class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :code
      t.string :name
      t.string :sex
      t.string :birthplace
      t.date :birthday
      t.string :educational_background
      t.string :politics
      t.text :address
      t.string :id_card
      t.string :contact
      t.date :worked_from
      t.date :hired_on
      t.text :remark

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
