json.info 'List of ' + params[:lookupmodel].camelize
json.recordcount @rs.count
unless @rs.is_a?(Array)
  json.columncount @rs.columns.count
  json.list @rs do |rsx|
    @rs.columns.each do |c| 
      json.(rsx, c.name)
    end
  end
else
  json.columncount @rs[0].keys.count
  json.list @rs do |rsx|
    @rs[0].each_key do |c| 
      json.(rsx, c)
    end
  end
end