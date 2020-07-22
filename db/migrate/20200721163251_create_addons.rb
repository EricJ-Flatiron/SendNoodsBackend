class CreateAddons < ActiveRecord::Migration[6.0]
  def change
    create_table :addons do |t|
      t.float :cost
      t.string :description
      t.string :group
      t.integer :noodle_id

      t.timestamps
    end
  end
end
