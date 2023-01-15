class AddPricesVariant < ActiveRecord::Migration[5.2]
  def change
    add_column :variants , :price , :float
  end
end
