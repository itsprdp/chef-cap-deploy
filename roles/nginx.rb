name 'nginx'

description 'nginx'

run_list 'recipe[nginx::default]','recipe[apt]', 'recipe[git]'


