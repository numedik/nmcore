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
    type: rs.drugtype.name,
    strength: [rs.strength, rs.drugstrength.name],
    dosage: [rs.dosage, rs.drugdosage.name],
    route: rs.drugroute.name,
    duration: [rs.duration, rs.drugduration.name],
    procedure: rs.drugprocedure.name
  })
end
