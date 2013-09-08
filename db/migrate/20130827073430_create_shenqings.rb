class CreateShenqings < ActiveRecord::Migration
  def change
    create_table :shenqings do |t|
      t.string :name
      t.string :sex
      t.string :bir
      t.integer :phone
      t.integer :tell
      t.string :email
      t.string :time
      t.string :timea
      t.string :timeb
      t.string :timec
      t.string :school
      t.string :schoola
      t.string :schoolb
      t.string :schoolc
      t.string :pro
      t.string :proa
      t.string :prob
      t.string :proc
      t.string :record
      t.string :recorda
      t.string :recordb
      t.string :recordc
      t.string :learn
      t.string :learna
      t.string :learnb
      t.string :learnc
      t.string :lang
      t.string :langa
      t.string :langb
      t.string :ability
      t.string :abilitya
      t.string :abilityb
      t.string :cert
      t.string :certa
      t.string :certb
      t.string :htime
      t.string :htimea
      t.string :htimeb
      t.text :adept
      t.text :hobby
      t.string :shen

      t.timestamps
    end
  end
end
