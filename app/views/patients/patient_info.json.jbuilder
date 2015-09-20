json.info do
  json.action 'Search Bar Patient Info: '+ params[:patientid]
  json.params params
end

json.result do
  json.id @rs.id
  json.pic 'http://media.themalaysianinsider.com/assets/uploads/resizer/najib0510_540_360_100.jpg'
  json.mrn @rs.mrn || ''
  json.mykadno @rs.mykadno || ''
  json.oldic @rs.oldic || ''
  json.passport @rs.passport || ''
  json.birthcert @rs.birthcert || ''
  json.fullname @rs.designation.name.upcase + ' ' + @rs.fullname
  json.treatmentstat @rs.if_active_patient?
  json.add1 @rs.add1 || ''
  json.add2 @rs.add2 || ''
  json.add3 @rs.add3 || ''
  json.city @rs.city || ''
  json.postcode @rs.postcode || ''
  json.state @rs.state.name || ''
  json.nationality @rs.nationality.name.upcase || ''
  json.marital @rs.marital.name.upcase || ''
  json.gender @rs.gender.name.upcase || ''
  json.race @rs.race.name.upcase || ''
  json.religion @rs.religion.name.upcase || ''
  json.bloodtype @rs.bloodtype.name.upcase || ''
  json.mobilephone @rs.mobilephone || ''
  json.dob @rs.dob || ''
  json.profession @rs.profession || ''
  json.employer @rs.employer || ''
  json.remarkgeneral @rs.remarkgeneral || ''
  json.remarkallergy @rs.remarkallergy || ''
  json.remarkmedicalhistory @rs.remarkmedicalhistory || ''
  json.remarkfamilyhistory @rs.remarkfamilyhistory || ''
  json.rnstat @rs.rnstat.name || ''
  json.relativename @rs.relativename || ''
  json.relativerelation @rs.relativerelation || ''
  json.relativetel @rs.relativetel || ''

end
