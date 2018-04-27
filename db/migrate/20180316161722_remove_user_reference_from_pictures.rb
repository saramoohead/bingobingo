class RemoveUserReferenceFromPictures < ActiveRecord::Migration[5.0]
  def change
    remove_reference :pictures, :user, foreign_key: true, index: true
  end
end
