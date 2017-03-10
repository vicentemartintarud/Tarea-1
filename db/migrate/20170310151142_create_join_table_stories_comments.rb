class CreateJoinTableStoriesComments < ActiveRecord::Migration[5.0]
  def change
    create_join_table :stories, :comments do |t|
      t.index [:story_id, :comment_id]
      t.index [:comment_id, :story_id]
    end
  end
end
