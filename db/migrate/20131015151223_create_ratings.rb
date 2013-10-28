class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.string :movie_idbmID
      t.integer :value

      t.timestamps
    end
  end
end
