class CreateHaikus < ActiveRecord::Migration
  def change
    create_table :haikus do |t|

      t.string :title
      t.text :content
    end
  end
end
