class CreateChickens < ActiveRecord::Migration[6.0]
  def change
    create_table :chickens do |t|
      t.string :name
      t.string :description
      t.integer :age
      t.string :location
      t.string :breed
      t.string :egg_size
      t.integer :daily_rate
      t.references :owner, references: :users, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end
