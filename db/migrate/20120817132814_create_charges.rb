class CreateCharges < ActiveRecord::Migration
  def change
    create_table :charges do |t|
      t.string :stripe_id
      t.string :object, :default => "charge"
      t.boolean :livemode
      t.integer :amount, :default => 0.0
      t.string :currency
      t.boolean :disputed
      t.integer :fee, :default => 0.0
      t.boolean :paid
      t.boolean :refunded, :default => false
      t.integer :amount_refunded
      t.string :description
      t.string :failure_message
      t.string :invoice

      t.timestamps
    end
  end
end
