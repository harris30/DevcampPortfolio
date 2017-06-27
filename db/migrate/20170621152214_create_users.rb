class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :slug

      t.timestamps
       ## Custom fields
       t.string :name
    end
    add_index :users, :slug, unique: true
  end
end
