class RenameFromAndToToAvoidPostgresqlNamingConflict < ActiveRecord::Migration

  def change
    unless column_exists? :refinery_calendar_events, :from_at
      rename_column :refinery_calendar_events, :from, :from_at
    end
    
    unless column_exists? :refinery_calendar_events, :to_at
      rename_column :refinery_calendar_events, :to, :to_at
    end
  end
  
end