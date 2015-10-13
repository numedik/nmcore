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
    type: rs.drugtype.try(:name),
    strength: [rs.strength, rs.drugstrength.try(:name)],
    dosage: [rs.dosage, rs.drugdosage.try(:name)],
    route: rs.drugroute.try(:name),
    duration: [rs.duration, rs.drugduration.try(:name)],
    procedure: rs.drugprocedure.try(:name)
  })
end
