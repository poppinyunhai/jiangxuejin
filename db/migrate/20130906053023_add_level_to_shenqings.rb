class AddLevelToShenqings < ActiveRecord::Migration
  def change
    add_column :shenqings, :level, :string
    add_column :shenqings, :jtime, :string
    add_column :shenqings, :jtimea, :string
    add_column :shenqings, :jtimeb, :string
    add_column :shenqings, :project, :string
    add_column :shenqings, :projecta, :string
    add_column :shenqings, :projectb, :string
    add_column :shenqings, :award, :string
    add_column :shenqings, :awarda, :string
    add_column :shenqings, :awardb, :string
    add_column :shenqings, :remark, :string
    add_column :shenqings, :remarka, :string
    add_column :shenqings, :remarkb, :string
  end
end
