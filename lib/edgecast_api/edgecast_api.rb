class EdgecastApi
  include HTTParty

  headers 'Host' => 'api.edgecast.com', 'Accept' => 'Application/JSON', 'Content-Type' => 'Application/JSON'
  format :json

  MEDIA_TYPES = {:flash_media_streaming => 2, :http_large_object => 3, :http_small_object => 8, :application_delivery_network => 14}


  def initialize(account_id, api_token, media_base_uri)
    self.class.base_uri "https://api.edgecast.com/v2/mcc/customers/#{account_id}"
    self.class.default_options[:headers]['Authorization'] = "TOK:#{api_token}"
    @media_base_uri = media_base_uri
  end

  def purge(media_type, path)
    object_url = File.join(@media_base_uri, path)
    self.class.put('/edge/purge', {:body => {'MediaType' => MEDIA_TYPES[media_type.to_sym], 'MediaPath' => object_url}.to_json})
  end

  def load(media_type, path)
    object_url = File.join(@media_base_uri, path)
    self.class.put('/edge/load', {:body => {'MediaType' => MEDIA_TYPES[media_type.to_sym], 'MediaPath' => object_url}.to_json})
  end

  def purge_status(id)
    self.class.get("/edge/purge/#{id}")
  end
end