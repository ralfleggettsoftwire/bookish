class UserCopyInteraction < ActiveRecord::Migration[7.0]
  def change
    remove_column :copies, :borrower
    add_reference :copies, :user, foreign_key: true
  end
end
