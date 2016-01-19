class CreateLasejobs < ActiveRecord::Migration
  def change
    create_table :lasejobs do |t|
      t.string :title

      t.timestamps
    end
  end
end
