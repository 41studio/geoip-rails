module Geoip
  class Base < ActiveRecord::Base
    
    self.abstract_class = true
    
    # establish_connection(ActiveRecord::Base.configurations["geoip_#{::Rails.env}"])
    establish_connection(YAML.load_file("#{::Rails.root}/config/geoip.yml")["geoip_#{::Rails.env}"])
  end
end
