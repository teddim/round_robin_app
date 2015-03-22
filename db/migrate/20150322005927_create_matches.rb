class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :opponent_id
    end
  end
end
