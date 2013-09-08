class CreateDongs < ActiveRecord::Migration
  def change
    create_table :dongs do |t|
      t.text :content

      t.timestamps
    end
  end
end
