class CreateVisitors < ActiveRecord::Migration[5.0]
  def change
    create_table :visitors do |t|
      t.string :name
      t.datetime :arrived_at
      t.datetime :departed_at
      t.string :host_id
      t.string :host_name
      t.text :visit_purpose
      t.string :status

      t.timestamps
    end
  end
end
