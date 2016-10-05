class AddCreatorIdToVisitors < ActiveRecord::Migration[5.0]
  def change
    add_column :visitors, :creator_id, :integer
  end
end
