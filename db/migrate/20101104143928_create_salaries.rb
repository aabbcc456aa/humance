class CreateSalaries < ActiveRecord::Migration
  def self.up
    create_table :salaries do |t|
      t.float :a
      t.float :b
      t.float :c
      t.float :d
      t.float :e
      t.float :f
      t.float :g
      t.float :h
      t.float :i
      t.float :j
      t.float :k
      t.float :l
      t.float :m
      t.float :n
      t.float :o
      t.float :p
      t.float :q
      t.float :r
      t.float :s
      t.float :t
      t.float :u
      t.float :v
      t.float :w
      t.float :x
      t.float :y
      t.float :z
      t.references :employee
      
      t.timestamps
    end
  end

  def self.down
    drop_table :salaries
  end
end
