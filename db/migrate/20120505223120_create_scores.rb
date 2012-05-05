class CreateScores < ActiveRecord::Migration
  def change
  	create_table :scores do |t|
  		t.column :name, :string, :null => false
  		t.column :score, :integer, :null => false

  		t.timestamps
  	end
  end
end
