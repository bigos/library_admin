class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.references :book, index: true, foreign_key: true
      t.date :return_date

      t.timestamps null: false
    end
  end
end
