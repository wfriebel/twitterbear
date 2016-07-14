class CreateTweets < ActiveRecord::Migration
  def change
  	create_table :tweets do |t|
  		t.integer :user_id
  		t.string :tweet, null: false, limit: 140
  		
  		t.timestamps null: false
  	end
  end
end
