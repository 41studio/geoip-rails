module Geoip
  class Base < ActiveRecord::Base
    
    self.abstract_class = true
    
    # establish_connection(ActiveRecord::Base.configurations["geoip_#{::Rails.env}"])
    establish_connection(YAML.load_file("#{RAILS_ROOT}/config/geoip.yml")[::Rails.env])
  end
end
