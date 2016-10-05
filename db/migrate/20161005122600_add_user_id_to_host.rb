class AddUserIdToHost < ActiveRecord::Migration[5.0]
  def change
    add_column :hosts, :user_id, :integer
  end
end
