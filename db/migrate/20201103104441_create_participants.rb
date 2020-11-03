class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.string :stripe_customer_id

      belongs_to :user
      belongs_to :event

      t.timestamps
    end
  end
end
