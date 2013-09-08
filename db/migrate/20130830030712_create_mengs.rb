class CreateMengs < ActiveRecord::Migration
  def change
    create_table :mengs do |t|
      t.string :name
      t.integer :phone
      t.integer :qq
      t.string :email
      t.string :company
      t.string :zhi
      t.string :li

      t.timestamps
    end
  end
end
