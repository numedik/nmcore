class Inventory < ActiveRecord::Base
  if ES_ENABLED
    include ActiveModel::Dirty
    include Tire::Model::Search
    include Tire::Model::Callbacks
    index_name "#{NMID}_warehouses_index"

      mapping do
        indexes :id,                :index    => :not_analyzed
        indexes :name,              :analyzer => 'snowball', :boost => 100
        indexes :code,              :type     => :string
      end
  end
  
  belongs_to :inventorytype
  belongs_to :drugtype
  belongs_to :drugstrength
  belongs_to :drugdosage
  belongs_to :drougroute
  belongs_to :drugfrequency
  belongs_to :drugduration
  belongs_to :drugprocedure
end
