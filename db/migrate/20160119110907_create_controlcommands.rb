class CreateControlcommands < ActiveRecord::Migration
  def change
    create_table :controlcommands do |t|
      t.references :element, index: true
      t.string :path

      t.timestamps
    end
  end
end
