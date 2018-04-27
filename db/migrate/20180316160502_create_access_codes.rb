class CreateAccessCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :access_codes do |t|
      t.references :picture, foreign_key: true
      t.references :organisation, foreign_key: true

      t.timestamps
    end
  end
end
