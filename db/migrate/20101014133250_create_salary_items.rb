class CreateSalaryItems < ActiveRecord::Migration
  def self.up
    create_table :salary_items do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :salary_items
  end
end
