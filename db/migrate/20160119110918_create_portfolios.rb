class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.references :user, index: true
      t.string :name

      t.timestamps
    end
  end
end
