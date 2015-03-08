class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.text :notes
      t.integer :voter_id
      t.integer :user_id
      t.string :vote_decision
      t.timestamps
    end
  end
end

# created_at is the same as date of visits
