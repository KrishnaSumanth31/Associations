class ChangeNamecolumnToFirstname < ActiveRecord::Migration
  def change
    rename_column :Players, :name, :first_name
  end
end
