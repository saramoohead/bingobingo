class AddOrganisationToUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :organisations do |t|
      t.timestamps null: false
      t.string :name, null: false
      t.string :code, null: false
      t.string :type, null: false
    end

    add_index :organisations, :code, unique: true

    add_reference :users, :organisation, foreign_key: true
  end
end
