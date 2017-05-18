class AddBlogIdToComments < ActiveRecord::Migration[5.1]
  def change
      change_table :comments do |t|
          t.integer :blog_id
      end
  end
end
