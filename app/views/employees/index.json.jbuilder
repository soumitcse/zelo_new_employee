json.array!(@employees) do |employee|
  json.extract! employee, :id, :zoloid, :code_digest
  json.url employee_url(employee, format: :json)
end
