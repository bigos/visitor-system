class AddExpectedAtToVisitor < ActiveRecord::Migration[5.0]
  def change
    add_column :visitors, :expected_at, :datetime
  end
end
