class AddCampaigns < ActiveRecord::Migration
  def change
  	create_table :campaigns do |t|
  		t.string :title, null: false
  		t.timestamps
  	end 

  end 

end
