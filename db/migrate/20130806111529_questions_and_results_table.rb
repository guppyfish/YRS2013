class QuestionsAndResultsTable < ActiveRecord::Migration
  def change
  	create_table :questions do |t|
  		t.string :title, null: false
  		t.timestamps
  	end 

  	create_table :results do |t|
  		t.string :title, null: false
  		t.references :question, null: false
  		t.integer :sixteen_24_result, default: 0
  		t.timestamps
  	end 

  end
end
