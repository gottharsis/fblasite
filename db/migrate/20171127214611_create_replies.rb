class CreateReplies < ActiveRecord::Migration[5.1]
  def change
    create_table :replies do |t|
      t.string :name
      t.string :email
      t.text :message
      t.belongs_to :post, index: true
      t.timestamps
    end
  end
end
