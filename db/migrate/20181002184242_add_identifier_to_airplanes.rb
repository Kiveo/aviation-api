class AddIdentifierToAirplanes < ActiveRecord::Migration[5.2]
  def change
    add_column :airplanes, :identifier, :string
  end
end
