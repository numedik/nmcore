class Patient < ActiveRecord::Base
  if ES_ENABLED
    include ActiveModel::Dirty
    include Tire::Model::Search
    include Tire::Model::Callbacks
    index_name "#{NMID}_patients_index"

      mapping do
        indexes :id,                :index    => :not_analyzed
        indexes :mrn,               :analyzer => 'keyword'
        indexes :oldic,             :type     => :string
        indexes :mykadno,           :type     => :string
        indexes :passport,          :type     => :string
        indexes :birthcert,         :type     => :string
        indexes :fullname,        :analyzer => 'snowball', :boost => 100
        indexes :mobilephone,       :type     => :string
        indexes :homephone,         :type     => :string
        indexes :email,             :type     => :string
        indexes :relativename,      :type     => :string
      end
  end

  belongs_to :bloodtype
  belongs_to :designation
  belongs_to :gender
  belongs_to :marital
  belongs_to :nationality
  belongs_to :patientstat
  belongs_to :race
  belongs_to :religion
  belongs_to :rnstat
  belongs_to :state

  belongs_to :defaultplan, :foreign_key => :defaultplan_id, :class => :plan
  belongs_to :defaultaccount, :foreign_key => :defaultaccount_id, :class => :account
  belongs_to :registrar, :foreign_key => :registrar_id, :class => :user

  has_many :treatments
  has_many :billings

end
