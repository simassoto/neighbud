class ChangeAddressOnServices < ActiveRecord::Migration[6.1]
  def change
    change_column :services, :address, :string
  end
end
