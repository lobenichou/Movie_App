class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :idbmID

      t.timestamps
    end
  end
end
