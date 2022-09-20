class AddIsbnToBook < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :ISBN, :string, null: false
  end
end
