class AddEmojiToForms < ActiveRecord::Migration
  def change
    add_column :forms, :emoji, :text
  end
end
