class CreateElements < ActiveRecord::Migration
  def change
    create_table :elements do |t|
      t.references :lasejob, index: true

      t.timestamps
    end
  end
end
