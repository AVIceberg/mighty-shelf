class AddCountToTrainers < ActiveRecord::Migration
  def change
      add_column :trainers, :tokimons_count, :integer, default: 1

      Trainer.all.each do |tokimon|
        Trainer.reset_counters(tokimon.id, :tokimons)
      end
  end
end
