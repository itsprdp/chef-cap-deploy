name 'nginx'

description 'nginx'

run_list 'recipe[apt]','recipe[nginx::default]','recipe[git]','recipe[curl]','recipe[build-essential]','recipe[rvm_req]','recipe[nodejs]'


