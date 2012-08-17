class AddCustomerIdToCharge < ActiveRecord::Migration
  def change
    add_column :charges, :customer_id, :integer
  end
end
