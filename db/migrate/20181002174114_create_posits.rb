class CreatePosits < ActiveRecord::Migration[5.2]
  def change
    create_table :posits do |t|
      t.text :body
      t.string :title

      t.timestamps
    end
  end
end
