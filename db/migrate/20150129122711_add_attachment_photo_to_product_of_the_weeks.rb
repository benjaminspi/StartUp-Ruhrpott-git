class AddAttachmentPhotoToProductOfTheWeeks < ActiveRecord::Migration
  def self.up
    change_table :product_of_the_weeks do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :product_of_the_weeks, :photo
  end
end
