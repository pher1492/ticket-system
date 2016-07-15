class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |c|
      c.string :user
      c.text :body
      c.references :ticket, ticket_id: true
      c.references :user, foreign_key: true

      c.timestamps
    end
  end
end
