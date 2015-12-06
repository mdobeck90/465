json.array!(@items) do |item|
  json.extract! item, :id, :zeroday, :o_contract, :honeypot, :firewall, :active_firewall, :activate_honeypot
  json.url item_url(item, format: :json)
end
