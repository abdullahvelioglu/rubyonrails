class CreateKitaps < ActiveRecord::Migration
  def change
    create_table :kitaps do |t|

      t.timestamps null: false
      t.string :name
      t.integer :since
    end
  end
end
