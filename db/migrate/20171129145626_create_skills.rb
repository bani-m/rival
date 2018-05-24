class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|

      t.text :content_song
      t.text :content_haiku
      t.text :content_comichaiku
    end
  end
end
