json.info do
  json.action 'Search Bar: '+ params[:searchkeyword]
  json.total @rs.length
  json.params params
end

json.results @rs do |rs|
  json.id rs.id
  json.name rs.name
  json.code rs.code
  json.drug do 
    json.type rs.drugtype_id,
    json.strength rs.drugstrength_id,
    json.dosage rs.drugdosage_id,
    json.route rs.drugroute_id,
    json.duration rs.drugduration_id,
    json.procedure rs.drugprocedure_id
  end
end
