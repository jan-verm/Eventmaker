class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.date :birth_date

      t.timestamps
    end
  end
end
