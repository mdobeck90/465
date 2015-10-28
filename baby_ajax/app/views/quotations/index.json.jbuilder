json.array!(@quotations) do |quotation|
  json.extract! quotation, :id, :quote, :speaker, :likes
  json.url quotation_url(quotation, format: :json)
end
