class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :element, index: true
      t.binary :image
      t.binary :thumb

      t.timestamps
    end
  end
end
