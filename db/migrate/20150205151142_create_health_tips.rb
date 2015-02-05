class CreateHealthTips < ActiveRecord::Migration
  def change
    create_table :health_tips do |t|
      t.string :category
      t.string :tip

      t.timestamps
    end
  end
end
