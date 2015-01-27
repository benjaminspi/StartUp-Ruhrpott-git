class ChangeFundings < ActiveRecord::Migration
  def change
    add_column :fundings, :art, :string
    remove_column :fundings, :type
  end
end
