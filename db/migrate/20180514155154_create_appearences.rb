class CreateAppearences < ActiveRecord::Migration
  def change
    create_table :appearences do |t|
      t.references :player, index: true
      t.references :game, index: true

      t.timestamps
    end
  end
end
