class CreateCoWorkings < ActiveRecord::Migration
  def change
    create_table :co_workings do |t|
      t.string :name
      t.text :address
      t.string :url
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
