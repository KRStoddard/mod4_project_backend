class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :content
      t.text :image
      t.integer :user_id
    end
  end
end
