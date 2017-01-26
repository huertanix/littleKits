class AddUserNameToInvention < ActiveRecord::Migration[5.0]
  def change
    add_column :inventions, :user_name, :string
  end
end
