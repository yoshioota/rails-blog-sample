class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :user, index: true, null: false
      t.string :title, null: false
      t.text :body_source, null: false
      t.text :body, null: false
      t.string :aasm_state, null: false

      t.datetime :published_at
      t.timestamps
    end
  end
end
