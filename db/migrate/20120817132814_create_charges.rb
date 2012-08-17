class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.string :stripe_id
      t.string :object
      t.boolean :livemode
      t.integer :amount
      t.string :currency
      t.boolean :disputed
      t.integer :fee
      t.boolean :paid
      t.boolean :refunded
      t.integer :amount_refunded
      t.string :description
      t.string :failure_message
      t.string :invoice

      t.timestamps
    end
  end
end
