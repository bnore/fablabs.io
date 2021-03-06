class MapSerializer < ActiveModel::Serializer

  attributes :id,
      :name,
      # TODO: disabling slug because it breaks http://api.fablabs.local:3000/0/labs/map with 'missing attribute'
      #:slug,
      :latitude,
      :longitude
      #:url,
      #:kind_name

  def url
    lab_url(object)
  end

  def kind_name
    kind
  end

end
