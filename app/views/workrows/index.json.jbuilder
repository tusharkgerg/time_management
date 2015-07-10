json.array!(@workrows) do |workrow|
  json.extract! workrow, :id, :date, :task, :hours_worked, :notes
  json.url workrow_url(workrow, format: :json)
end
