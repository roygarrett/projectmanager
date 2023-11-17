# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
default_users = [
  {
    :email => "admin@projects.local",
    :password => "Pass1234"
  }
]
User.create(default_users)

for num in (1..3) do
  Project.create(
    {
      :name => "Project #{num}",
      :description => "Sample text"
    }
  )
end

reference_date = Date.today
Project.all.each do |p|
  for num in (1..5) do
    p.tasks.create(
      {
        :name => "Task #{num}",
        :due_date => reference_date + (rand(11) - 5),
        :complete => [true, false].sample,
        :project_id => p.project_id
      }
    )
  end
end
