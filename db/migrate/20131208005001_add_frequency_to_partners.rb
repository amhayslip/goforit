class AddFrequencyToPartners < ActiveRecord::Migration
  def change
    add_column :partners, :frequency, :string
  end
end
