class AddContactDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :telephone_number, :integer
    add_column :users, :email, :string
  end
end
