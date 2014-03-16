RedmineApp::Application.routes.draw do
  resources :projects do |project|
    match 'wiki/:id/permissions', :to => 'wiki#permissions'
    match 'wiki/:id/permissions/create',  :to => 'wiki#create_wiki_page_user_permissions', via: [:get, :post]
    match 'wiki/:id/permissions/update',  :to => 'wiki#update_wiki_page_user_permissions', via: [:get, :post]
    match 'wiki/:id/permissions/delete',  :to => 'wiki#destroy_wiki_page_user_permissions', via: [:get, :post]
  end  
end
