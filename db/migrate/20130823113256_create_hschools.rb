class CreateHschools < ActiveRecord::Migration
  def change
    create_table :hschools do |t|
      t.string :ranking
      t.string :lei
      t.string :place
      t.string :religion
      t.string :scale
      t.string :result

      t.timestamps
    end
  end
end
