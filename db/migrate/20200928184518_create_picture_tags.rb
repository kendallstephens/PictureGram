class CreatePictureTags < ActiveRecord::Migration[6.0]
  def change
    create_table :picture_tags do |t|
      t.belongs_to :picture, null: false, foreign_key: true
      t.belongs_to :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
