class CreateCommentsTable < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :body, :text
    end

    add_reference :comments, :user, index: true, foreign_key: true
    add_reference :comments, :post, index: true, foreign_key: true
  end
end
