Rails.application.routes.draw do
  devise_for :admin, controllers: {
	  sessions:      'admin/sessions',
	  registrations: 'admin/registrations'
	}
  devise_for :users, controllers: {
	  sessions:      'public/sessions',
	  registrations: 'public/registrations'
	}

  root 'home#top'

  scope module: :public do
  end

  namespace :admin do
  end
end
