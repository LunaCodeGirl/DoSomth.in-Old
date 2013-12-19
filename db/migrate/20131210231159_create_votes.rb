class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :type
      t.integer :user_id
      t.integer :issue_id

      t.timestamps
    end
  end
end
