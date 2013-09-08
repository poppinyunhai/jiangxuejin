class CreateFellowships < ActiveRecord::Migration
  def change
    create_table :fellowships do |t|
      t.string :name
      t.string :lei
      t.integer :num

      t.timestamps
    end
  end
end
