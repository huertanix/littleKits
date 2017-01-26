class AddEmailAddressToInvention < ActiveRecord::Migration[5.0]
  def change
    add_column :inventions, :email_address, :string
  end
end
