json.extract! task, :id, :name, :due_date, :complete, :project_id, :created_at, :updated_at
json.url task_url(task, format: :json)
