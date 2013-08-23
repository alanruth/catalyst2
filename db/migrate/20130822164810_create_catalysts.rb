class CreateCatalysts < ActiveRecord::Migration
  def change
    create_table :catalysts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :city
      t.string :linkedin
      t.string :website
      t.text :comments

      t.timestamps
    end
  end
end
