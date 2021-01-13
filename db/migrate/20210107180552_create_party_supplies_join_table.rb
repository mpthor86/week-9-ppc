class CreatePartySuppliesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :parties, :supplies do |t|
      t.index [:party_id, :supply_id]
      # t.index [:supply_id, :party_id]
    end
  end
end
