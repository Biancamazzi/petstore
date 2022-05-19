class AddPhotoToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :photo, :string
  end
end
