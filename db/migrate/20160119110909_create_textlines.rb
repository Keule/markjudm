class CreateTextlines < ActiveRecord::Migration
  def change
    create_table :textlines do |t|
      t.references :element, index: true
      t.text :string

      t.timestamps
    end
  end
end
