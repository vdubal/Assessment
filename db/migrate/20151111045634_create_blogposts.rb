class CreateBlogposts < ActiveRecord::Migration
  def change
    create_table :blogposts do |t|
      t.string :blog_post
      t.string :blog_title
      t.string :user_id

      t.timestamps null: false
    end
  end
end
