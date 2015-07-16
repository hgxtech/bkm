class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.references :user, index: true
      t.text :notes
      t.date :from_date
      t.date :to_date

      t.timestamps
    end
  end
end
