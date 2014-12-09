class CreateCustomerEstimates < ActiveRecord::Migration
  def change
    create_table :customer_estimates do |t|
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
