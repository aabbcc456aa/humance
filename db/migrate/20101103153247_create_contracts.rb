class CreateContracts < ActiveRecord::Migration
  def self.up
    create_table :contracts do |t|
      t.date :from
      t.integer :term
      t.references :position
      t.references :department
      t.references :attachment_file

      t.timestamps
    end
  end

  def self.down
    drop_table :contracts
  end
end
