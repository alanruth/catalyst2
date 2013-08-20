class AddLastNameToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :last_name, :string
		rename_column :contacts, :name, :first_name
		remove_column :contacts, :subject
  end
end
