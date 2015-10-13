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
    type: rs.drugtype.name rescue 'N/A',
    strength: [rs.strength, (rs.drugstrength.name rescue 'N/A')],
    dosage: [rs.dosage, (rs.drugdosage.name rescue 'N/A')],
    route: rs.drugroute.name rescue 'N/A',
    duration: [rs.duration, (rs.drugduration.name rescue 'N/A')],
    procedure: rs.drugprocedure.name rescue 'N/A'
  })
end
