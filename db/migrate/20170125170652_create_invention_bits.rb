class CreateInventionBits < ActiveRecord::Migration[5.0]
  def change
    create_table :invention_bits do |t|
      t.integer :invention_id
      t.integer :bit_id
    end
  end
end
