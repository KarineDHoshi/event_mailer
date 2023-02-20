class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.string :stripe_customer_id
      t.belongs_to :user, class_name: "user", foreign_key: "user_id"
      t.belongs_to :event, class_name: "event", foreign_key: "event_id"


      t.timestamps
    end
  end
end
