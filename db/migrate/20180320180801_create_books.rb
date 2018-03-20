class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      # TODO: weird error - foreign key does not work
      t.references :author, index: true #, foreign_key: true

      t.timestamps null: false
    end
  end
end
