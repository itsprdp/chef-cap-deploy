name 'nginx'

description 'nginx'

run_list 'recipe[apt]','recipe[nginx::default]','recipe[git]','recipe[curl]'


