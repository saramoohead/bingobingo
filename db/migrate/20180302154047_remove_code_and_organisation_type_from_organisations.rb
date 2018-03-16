class RemoveCodeAndOrganisationTypeFromOrganisations < ActiveRecord::Migration[5.0]
  def change
    remove_index :organisations, column: :code

    remove_column :organisations, :code
    remove_column :organisations, :organisation_type
  end
end
