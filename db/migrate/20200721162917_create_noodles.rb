class CreateNoodles < ActiveRecord::Migration[6.0]
  def change
    create_table :noodles do |t|
      t.float :cost
      t.string :description
      t.string :group
      t.integer :order_id

      t.timestamps
    end
  end
end
