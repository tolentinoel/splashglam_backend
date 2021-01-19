class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true
      t.references :product, null: true, foreign_key: true

    end
  end
end
