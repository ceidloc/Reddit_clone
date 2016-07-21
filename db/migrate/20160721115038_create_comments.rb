class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :article_id
      t.text :body
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :comments, :article_id
  end
end
