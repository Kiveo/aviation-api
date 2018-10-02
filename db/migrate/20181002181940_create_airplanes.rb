class CreateAirplanes < ActiveRecord::Migration[5.2]
  def change
    create_table :airplanes do |t|
      t.string :name
      t.integer :seats
      t.string :img_url
      t.integer :lesson_rate

      t.timestamps
    end
  end
end
