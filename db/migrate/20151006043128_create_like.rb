class CreateLike < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :post_id
    end
  end
end
