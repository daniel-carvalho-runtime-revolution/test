class CreateEbooks < ActiveRecord::Migration[7.0]
  def change
    create_table :ebooks do |t|
      t.string :title
      t.string :author
      t.text :description
      t.date :published_date
      t.string :isbn
      t.string :genre
      t.integer :pages

      t.timestamps
    end
  end
end
