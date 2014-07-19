class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :article, index: true, null: false
      t.references :user, index: true, null: false
      t.text :body

      t.timestamps
    end
  end
end
