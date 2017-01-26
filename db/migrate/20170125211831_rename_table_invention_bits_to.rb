class RenameTableInventionBitsTo < ActiveRecord::Migration[5.0]
  def change
  	def change
      rename_table :invention_bits, :bits_inventions
    end
  end
end
