class AddPhotoUrlToChickens < ActiveRecord::Migration[6.0]
  def change
    add_column :chickens, :photo_url, :text
  end
end
