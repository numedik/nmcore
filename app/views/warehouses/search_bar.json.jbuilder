json.info do
  json.action 'Search Bar: '+ params[:searchkeyword]
  json.total @rs.length
  json.params params
end

json.results @rs do |rs|
  json.id rs.id
  json.name rs.name
  json.code rs.code
  json.drug({ 
    type: rs.drugtype_id,
    strength: rs.drugstrength_id,
    dosage: rs.drugdosage_id,
    route: rs.drugroute_id,
    duration: rs.drugduration_id,
    procedure: rs.drugprocedure_id
  })
end
