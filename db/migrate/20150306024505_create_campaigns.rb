class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      # these will be hardcoded by admins & changed for each campaign, by admins
      t.text :name
      t.date :election_day
      t.string :candidate_or_issue
      t.text :slogan
      t.date :start_date
      t.date :end_date
      t.string :volunteer_coordinator
      t.string :campaign_url
      #this is changeable by user
      t.text :script
    end
  end
end
