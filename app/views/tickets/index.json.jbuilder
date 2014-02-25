json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :title, :description, :project_id
  json.url ticket_url(ticket, format: :json)
end
