class CreateGuans < ActiveRecord::Migration
  def change
    create_table :guans do |t|
      t.integer :shenqing_id
      t.integer :fellowship_id

      t.timestamps
    end
  end
end
