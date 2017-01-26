class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email_address
      t.belongs_to :invention, foreign_key: true

      t.timestamps
    end
  end
end
