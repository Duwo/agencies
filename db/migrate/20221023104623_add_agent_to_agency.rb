class AddAgentToAgency < ActiveRecord::Migration[6.1]
  def change
    change_table :agents do |t|
      add_reference :agents, :agencies, foreign_key: true, null: true
    end
  end
end
