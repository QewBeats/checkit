class CreateHealthTips < ActiveRecord::Migration
  def change
    create_table :health_tips do |t|
      t.integer :category
      t.text :tip

      t.timestamps
    end
  end
end
