class CreateStrollDogLists < ActiveRecord::Migration[5.2]
  def change
    create_table :stroll_dog_lists do |t|
			t.belongs_to :dog, :stroll, index: true
	
      t.timestamps
    end
  end
end
