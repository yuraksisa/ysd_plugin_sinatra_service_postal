require 'ysd-plugins_viewlistener' unless defined?Plugins::ViewListener

#
# Huasi Profile Extension
#
module Huasi

  class ServicePostalExtension < Plugins::ViewListener
        
    # ========= Installation =================

    # 
    # Install the plugin
    #
    def install(context={})

      SystemConfiguration::SecureVariable.first_or_create(
          {:name => 'smtp.from'},
          {:value => '.',
           :description => 'smtp settings : from address',
           :module => :service_postal})  

        SystemConfiguration::SecureVariable.first_or_create(
          {:name => 'smtp.host'},
          {:value => '.',
           :description => 'smtp settings : host',
           :module => :service_postal})  

        SystemConfiguration::SecureVariable.first_or_create(
          {:name => 'smtp.port'},
          {:value => '.',
           :description => 'smtp settings : port',
           :module => :service_postal})  

        SystemConfiguration::SecureVariable.first_or_create(
          {:name => 'smtp.username'},
          {:value => '.',
           :description => 'smtp settings : username',
           :module => :service_postal})  

        SystemConfiguration::SecureVariable.first_or_create(
          {:name => 'smtp.password'},
          {:value => '.',
           :description => 'smtp settings : password',
           :module => :service_postal})            

        SystemConfiguration::SecureVariable.first_or_create(
          {:name => 'smtp.domain'},
          {:value => 'localhost@localdomain',
           :description => 'smtp settings : domain',
           :module => :service_postal})  

        SystemConfiguration::SecureVariable.first_or_create(
          {:name => 'smtp.authentication'},
          {:value => 'login',
           :description => 'smtp settings : login',
           :module => :service_postal})                                 

        SystemConfiguration::SecureVariable.first_or_create(
          {:name => 'smtp.starttls_auto'},
          {:value => 'true',
           :description => 'smtp settings : startls auto',
           :module => :service_postal})  
    end  
    
  end
end