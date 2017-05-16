class AddSupplierIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :suppler_id, :integer
  end
end
