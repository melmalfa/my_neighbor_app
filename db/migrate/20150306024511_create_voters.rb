class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :f_name
      t.string :l_name
      t.string :email
      t.string :phone_number
      t.string :street_address
      t.string :apt_number
      t.float :latitude
      t.float :longitude
      # do i need zip, if can auto calculate this by the street address?
      t.integer :zip_code, :default => 33460
      t.string :party
      # t.integer :precint
      t.date :birthdate
      t.string :race
      t.string :gender
      t.date :reg_date
      t.date :last_vote_date
      t.boolean :uncanvassed, :default => false
      t.string :decision
    end
  end
end
