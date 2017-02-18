class AddCustomFieldesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :telephone, :string
    add_column :users, :mobile, :string
    add_column :users, :website, :string
    add_column :users, :title, :string
    add_column :users, :company_name, :string
  end
end
