class AddOrganisationReferenceToPictures < ActiveRecord::Migration[5.0]
  def change
    add_reference :pictures, :organisation, foreign_key: true, index: true
  end
end
