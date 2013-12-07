class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :phone_number
      t.integer :goal_id

      t.timestamps
    end
  end
end
