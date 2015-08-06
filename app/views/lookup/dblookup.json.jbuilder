json.info 'List of ' + params[:lookupmodel].camelize
json.recordcount @rs.count
json.columncount @rs.columns.count
json.list @rs do |rsx|
  @rs.columns.each do |c| 
    json.(rsx, c.name)
  end
end