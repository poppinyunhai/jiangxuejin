class CreateLians < ActiveRecord::Migration
  def change
    create_table :lians do |t|
      t.string :name
      t.string :addr

      t.timestamps
    end
  end
end
