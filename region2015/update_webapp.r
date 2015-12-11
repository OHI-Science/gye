source('~/github/ohi-webapps/ohi-functions.R')

calculate_scores()         # JSL fix
create_results()           # worked as-is
push_branch('draft')       # error  with 'gh_token' but probably not necessary
push_branch('published')   # error  with 'gh_token'
create_pages()
