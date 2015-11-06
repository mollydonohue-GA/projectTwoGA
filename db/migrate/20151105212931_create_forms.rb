class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.date :date
      t.text :wins
      t.text :repass

      t.timestamps null: false
    end
  end
end
