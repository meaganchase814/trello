class AddCategoryToPosits < ActiveRecord::Migration[5.2]
  def change
    add_column :posits, :Category, :string
  end
end
