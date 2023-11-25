class CreateProductTests < ActiveRecord::Migration[7.0]
  def change
    create_table :product_tests do |t|

      t.timestamps
    end
  end
end
