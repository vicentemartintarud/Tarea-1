class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.text :title
      t.text :header
      t.text :body

      t.timestamps
    end
  end
end
