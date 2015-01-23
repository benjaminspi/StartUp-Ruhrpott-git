class CreateProductOfTheWeeks < ActiveRecord::Migration
  def change
    create_table :product_of_the_weeks do |t|
      t.string :name
      t.text :description
      t.date :date
      t.string :link
      t.boolean :published
      t.string :picture

      t.timestamps
    end
  end
end
