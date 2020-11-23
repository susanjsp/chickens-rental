class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.integer :price
      t.integer :status
      t.references :chicken, null: false, foreign_key: true
      t.references :customer, references: :users, foreign_key: {to_table: :users}
      t.timestamps
    end
  end
end
