class ChangeStateIdInFaActivities < ActiveRecord::Migration
  def self.up
    connection.execute(%q{
        alter table fa_activities
        alter column state_id
        type integer using state_id::integer
    })
  end

  def self.down
    connection.execute(%q{
        alter table fa_activities
        alter column state_id
        type string using state_id::string
    })
  end
end
