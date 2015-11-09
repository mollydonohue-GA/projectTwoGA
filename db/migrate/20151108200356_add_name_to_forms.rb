class AddNameToForms < ActiveRecord::Migration
  def change
    add_column :forms, :name, :text
  end
end
