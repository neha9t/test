require 'rest-client'
require 'rspec/expectations'
#For debugging load the Pry gem
require 'pry'
require 'yaml'

USER_CREDENTIALS = YAML.load_file("features/support/data/api/login_data.yml")
