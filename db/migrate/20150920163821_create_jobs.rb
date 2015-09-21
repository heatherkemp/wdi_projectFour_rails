class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
        t.string :company
        t.string :title
        t.datetime "created_at", null: false
        t.string :url
        t.string :app_date
        t.string :app_followup
        t.text :app_notes
        t.string :interview_date
        t.string :interviewer_name
        t.string :interviewer_email
        t.string :interview_followup
        t.text :interview_notes
        t.references :user, index: true, foreign_key: true
    end
  end
end
