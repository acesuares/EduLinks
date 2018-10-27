Rails.application.routes.draw do
  resources :school_types do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end
  resources :links do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
    get 'homepage', on: :collection
  end
  resources :topics do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end
  resources :groups do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end
  resources :inline_forms_translations do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end
  resources :inline_forms_keys do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end
  resources :inline_forms_locales do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end
  mount Ckeditor::Engine => '/ckeditor'
  resources :roles do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end
  resources :locales do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end
  devise_for :users, :path_prefix => 'auth'
    resources :users do
      post 'revert', :on => :member
      get 'list_versions', :on => :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root :to => 'links#index'

end
