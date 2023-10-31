class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.string :message
      t.string :uid

      t.timestamps
    end
  end
end
