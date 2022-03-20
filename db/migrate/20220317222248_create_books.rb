class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title,             null:false, default: ""
      t.integer :quality_id,       null:false
      t.integer :price,            null:false
      t.references :user,        null: false

      t.timestamps
    end
  end
end
