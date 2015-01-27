class CreateFundings < ActiveRecord::Migration
  def change
    create_table :fundings do |t|
      t.string :name
      t.text :adress
      t.string :focus
      t.string :url
      t.string :type
      t.text :description
      t.string :thumbnail

      t.timestamps
    end
  end
end
