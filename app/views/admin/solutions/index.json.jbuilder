json.array!(@solutions) do |solution|
  json.extract! solution, :id, :kind, :content, :program_id
  json.url solution_url(solution, format: :json)
end
