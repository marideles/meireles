class AddEmailAndEmailAndCorToZumbis < ActiveRecord::Migration
  def change
    add_column :zumbis, :email, :string
    add_column :zumbis, :cor, :string
  end
end
