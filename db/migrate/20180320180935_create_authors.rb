class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :middle_names
      t.string :last_name
      t.references :publisher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
