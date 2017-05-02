require 'yaml'
thing = YAML.load_file('data.yml')
puts thing['CEP']['BARUERI']