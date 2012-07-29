class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :expires_at
      t.string :token
      t.string :first_name
      t.string :last_name
      t.integer :fb_id

      t.timestamps
    end
    
    add_index :users, :token, unique: true
    add_index :users, :fb_id, unique: true
  end  
end
