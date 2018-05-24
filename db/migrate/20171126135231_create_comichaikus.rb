class CreateComichaikus < ActiveRecord::Migration
  def change
    create_table :comichaikus do |t|

      t.string :title
      t.text :content
    end
  end
end
