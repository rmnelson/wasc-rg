json.array!(@ipas) do |ipa|
  json.extract! ipa, :id, :letter, :outcome_id, :course_id
  json.url ipa_url(ipa, format: :json)
end
