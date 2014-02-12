class AddPreviewUrltoSongs < ActiveRecord::Migration
  def change
    change_table :songs do |t|
      t.text :preview_url
    end
  end
end
