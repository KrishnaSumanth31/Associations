class AddColumnLastNameToPlayers < ActiveRecord::Migration
  def change
    add_column :Players, :lastname, :string
  end
end
