class CreateCooks < ActiveRecord::Migration[5.2]
  def change
    create_table :cooks do |t|
      t.integer :user_id
      t.string :message
      t.string :step1
      t.string :step2
      t.string :step3

      t.timestamps
    end
  end
end
