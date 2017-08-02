Gem::Specification.new do |s|
  s.name    = "ysd_plugin_service_postal"
  s.version = "0.1.0"
  s.authors = ["Yurak Sisa Dream"]
  s.date    = "2011-12-09"
  s.email   = ["yurak.sisa.dream@gmail.com"]
  s.files   = Dir['lib/**/*.rb']
  s.summary = "A postal service"

  s.add_runtime_dependency "ysd_service_postal"
  #s.add_runtime_dependency "ysd_plugin_configuration"

end
