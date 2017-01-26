class RemoveInventionIdFromBits < ActiveRecord::Migration[5.0]
  def change
    remove_column :bits, :invention_id, :integer
  end
end
