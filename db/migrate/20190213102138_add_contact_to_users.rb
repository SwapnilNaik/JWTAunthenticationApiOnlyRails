class AddContactToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :contactNumber, :integer
  end
end
