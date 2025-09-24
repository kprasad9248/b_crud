class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :pages
      t.string :author
      t.integer :price

      t.timestamps
    end
  end
end
