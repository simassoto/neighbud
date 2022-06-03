class AddLatitudeToServices < ActiveRecord::Migration[6.1]
  def change
    add_column :services, :latitude, :float
  end
end
