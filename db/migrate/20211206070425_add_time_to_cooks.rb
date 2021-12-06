class AddTimeToCooks < ActiveRecord::Migration[5.2]
  def change
    add_column :cooks, :Time, :string
  end
end
