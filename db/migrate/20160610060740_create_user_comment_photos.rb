class CreateUserCommentPhotos < ActiveRecord::Migration
  def change
    create_table :user_comment_photos do |t|
      t.string :photo
      t.text :body
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
