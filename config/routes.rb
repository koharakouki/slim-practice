Rails.application.routes.draw do

devise_for :users, controllers: {
  sessions: 'devise/users/sessions',
  registrations: 'devise/users/registrations',
  passwords: 'devise/users/passwords',
}

root to: 'home#top'

end
