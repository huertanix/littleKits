class AddBitIdToBits < ActiveRecord::Migration[5.0]
  def change
    add_column :bits, :bit_id, :integer
  end
end
