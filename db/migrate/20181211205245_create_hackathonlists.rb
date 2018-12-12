class CreateHackathonlists < ActiveRecord::Migration[5.2]
  def change
    create_table :hackathonlists do |t|
      t.integer :user_id
      t.integer :hackathon_id

      t.timestamps
    end
  end
end
