class CreateVariants < ActiveRecord::Migration[5.2]
  def change
    create_table :variants do |t|
      t.belongs_to :product, foreign_key: true
      t.string :varname
      t.timestamps
    end
  end
end
