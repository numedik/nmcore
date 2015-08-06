json.info 'List of Workorder (Enabled only)'
json.count @rs.count
json.list @rs do |rsx|
  json.id rsx.id
  json.code rsx.code
  json.name rsx.name
end