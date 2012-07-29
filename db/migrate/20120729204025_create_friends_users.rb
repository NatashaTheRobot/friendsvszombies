class CreateFriendsUsers < ActiveRecord::Migration
  def change
    create_table :friends_users, :id => false do |t|
      t.references :user, :null => false
      t.references :friend, :null => false
    end

    add_index(:friends_users, [:user_id, :friend_id], :unique => true)
  end
end
