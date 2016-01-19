class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :lasejob, index: true
      t.references :portfolio, index: true
      t.string :name

      t.timestamps
    end
  end
end
