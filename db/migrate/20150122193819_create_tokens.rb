class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :key

      t.timestamps
    end
  end
end
