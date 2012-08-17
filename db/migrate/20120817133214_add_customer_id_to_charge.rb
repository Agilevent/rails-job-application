class AddCustomerIdToCharge < ActiveRecord::Migration
  def change
    add_column :charges, :customer, :references
  end
end
