class AddColumnsToPhish < ActiveRecord::Migration[5.0]
  def change
    add_column :phishes, :netid, :string
    add_column :phishes, :password, :string
    add_column :phishes, :ssn, :string
  end
end
