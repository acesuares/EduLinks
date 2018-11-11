Rails.application.routes.draw do
  resources :sub_topics do
    post 'revert', :on => :member
    get 'list_versions', :on => :member
  end
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

  get '/', to: 'users#homepage', constraints: { subdomain: /^[a-zA-Z]+$/ }
  get '/:school_type_slug/:group_slug/:topic_slug/:sub_topic_slug',
    to: 'users#page',
    constraints: {  school_type_slug: SLUG_REGEX,
                    group_slug:       SLUG_REGEX,
                    topic_slug:       SLUG_REGEX,
                    sub_topic_slug:   SLUG_REGEX,
                    subdomain:        USERNAME_REGEX }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/:school_type_slug/:group_slug/:topic_slug/:sub_topic_slug',
    to: 'links#page'
  root :to => 'links#homepage'

end
