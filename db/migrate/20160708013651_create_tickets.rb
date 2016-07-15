class CreateTickets < ActiveRecord::Migration[5.0]
 def change
  	  create_table :tickets do |t|

    	t.string :title, :null => false
			t.text :body
			t.integer :ticket_id
    	t.timestamps
    end

  end
end
