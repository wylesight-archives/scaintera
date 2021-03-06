class CreatePolicyHolders < ActiveRecord::Migration
  def change
      create_table :policy_holders do |t|
        t.string :names
        t.string :surname
        t.string :nationality
        t.enum :gender
        t.enum :status
        t.references :user
        t.string :payment_type
        t.string :address
        t.string :city
        t.string :postcode
        t.string :home_phone
        t.string :mobile_phone
        t.datetime :dob
        t.string :email
        t.boolean :rents_property
        t.boolean :owns_property
        t.boolean :uses_money_transfers
        t.timestamps
      end
  end
end
