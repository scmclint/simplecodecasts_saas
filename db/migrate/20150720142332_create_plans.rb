class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :name
      t.decimal :price
      
      # created @ and updated @ columns in DB
      t.timestamps
      
    end
  end
end
