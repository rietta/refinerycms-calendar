class RenameFromAndToToAvoidPostgresqlNamingConflict < ActiveRecord::Migration

  def change
    rename_column :refinery_calendar_events, :from, :from_at
    rename_column :refinery_calendar_events, :to, :to_at
  end
  
end