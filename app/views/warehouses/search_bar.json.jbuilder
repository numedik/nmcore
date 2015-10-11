json.info do
  json.action 'Search Bar: '+ params[:searchkeyword]
  json.total @rs.length
  json.params params
end

json.results @rs do |rs|
  json.id rs.id
  json.name rs.name
  json.code rs.code
end
