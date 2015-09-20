json.info do
  json.action 'Search Bar: '+ params[:searchkeyword]
  json.total @rs.length
  json.params params
end

json.result @rs do |rs|
  json.id rs.id
  json.mrn rs.mrn
  json.mykadno rs.mykadno || rs.oldic || rs.passport || rs.birthcert
  json.fullname rs.designation.name.upcase + ' ' + rs.fullname
  json.treatmentstat rs.if_active_patient?
end
