class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :event, index: true
      t.string :text
      t.references :user, index: true
      t.date :datetime

      t.timestamps
    end
  end
end
