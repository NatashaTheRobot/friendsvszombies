class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer :fb_id
      t.string :name

      t.timestamps
    end
    
    add_index :friends, :fb_id, unique: true
  end
end
