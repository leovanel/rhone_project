class CreateParagraphs < ActiveRecord::Migration[5.2]
  def change
    create_table :paragraphs do |t|
      t.references :article, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
