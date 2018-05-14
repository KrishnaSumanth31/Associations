class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.references :player, index: true

      t.timestamps
    end
  end
end
