class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id  # key integer for user table
      t.string :first_name
      t.string :last_name
      t.string :job_title
      
      # Pro users see these fields below
      t.string :phone_number
      t.string :contact_email
      t.text :description   # larger chunk of text wrapping
      
      t.timestamps
    end
  end
end
