class AddColumnsToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :name, :string, null: false
    add_column :authors, :born, :date
    add_column :authors, :died, :date, default: nil
    add_column :authors, :nationality, :string
  end
end
