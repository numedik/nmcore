json.info "Bulk Request for #{@models.join(',')}"
json.recordcount @res.count
json.results @res