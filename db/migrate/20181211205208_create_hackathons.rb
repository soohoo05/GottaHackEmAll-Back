class CreateHackathons < ActiveRecord::Migration[5.2]
  def change
    create_table :hackathons do |t|
      t.string :host
      t.string :state
      t.boolean :free
      t.string :description
      t.string :date
      t.timestamps
    end
  end
end
