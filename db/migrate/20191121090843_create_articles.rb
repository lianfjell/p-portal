class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :authors
      t.string :abstract
      t.string :doi
      t.string :journal
      t.string :volume
      t.string :issue
      t.string :page

      t.timestamps
    end
  end
end
