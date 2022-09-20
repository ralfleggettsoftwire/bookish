class AddColumnsToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :title, :string, null: false
    add_reference :books, :author, foreign_key: true
    add_column :books, :genre, :string
    add_column :books, :first_published, :date
    add_column :books, :language, :string
  end
end
