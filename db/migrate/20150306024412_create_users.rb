class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :phone_number
      t.string :street_address
      t.string :apt_number
      # do i need zip, if can auto calculate this by the street address?
      t.integer :zip_code, :default => 33460
      t.string :password_digest
    end
  end
end
