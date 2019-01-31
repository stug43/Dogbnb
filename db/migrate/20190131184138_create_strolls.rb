class CreateStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :strolls do |t|
			t.belongs_to :city, :stroll_dog_list, :dogsitter, index: true
      t.integer :minutes_duration

      t.timestamps
    end
  end
end
