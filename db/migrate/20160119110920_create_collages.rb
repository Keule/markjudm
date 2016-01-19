class CreateCollages < ActiveRecord::Migration
  def change
    create_table :collages do |t|
      t.references :product, index: true
      t.text :name

      t.timestamps
    end
  end
end
