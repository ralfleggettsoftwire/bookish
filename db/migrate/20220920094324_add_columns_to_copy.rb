class AddColumnsToCopy < ActiveRecord::Migration[7.0]
  def change
    add_reference :copies, :book, foreign_key: true
    add_column :copies, :status, :string, default: 'available', null: false
  end
end
