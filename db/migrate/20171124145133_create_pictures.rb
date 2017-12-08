class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.text :name
      t.text :short_description
      t.references :user, foreign_key: true, index: true
      t.string :square_image

      t.timestamps
    end
  end
end
