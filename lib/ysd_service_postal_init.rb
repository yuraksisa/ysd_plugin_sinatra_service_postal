require 'ysd-plugins' unless defined?Plugins::Plugin

Plugins::SinatraAppPlugin.register :location do

   name=        'service_postal'
   author=      'yurak sisa'
   description= 'Manages messages (locations)'
   version=     '0.1'
   hooker       Huasi::ServicePostalExtension
   sinatra_extension Sinatra::YSD::ServicePostal
   
end