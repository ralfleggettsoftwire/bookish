class AddBorrowerAndDueDateToCopy < ActiveRecord::Migration[7.0]
  def change
    add_column :copies, :borrower, :string
    add_column :copies, :due_date, :date
  end
end
