# == Route Map
#
#               Prefix Verb   URI Pattern                                        Controller#Action
#                users GET    /users(.:format)                                   users#index
#                      POST   /users(.:format)                                   users#create
#             new_user GET    /users/new(.:format)                               users#new
#            edit_user GET    /users/:id/edit(.:format)                          users#edit
#                 user GET    /users/:id(.:format)                               users#show
#                      PATCH  /users/:id(.:format)                               users#update
#                      PUT    /users/:id(.:format)                               users#update
#                      DELETE /users/:id(.:format)                               users#destroy
#              quizzes GET    /quizzes(.:format)                                 quizzes#index
#                      POST   /quizzes(.:format)                                 quizzes#create
#             new_quiz GET    /quizzes/new(.:format)                             quizzes#new
#            edit_quiz GET    /quizzes/:id/edit(.:format)                        quizzes#edit
#                 quiz GET    /quizzes/:id(.:format)                             quizzes#show
#                      PATCH  /quizzes/:id(.:format)                             quizzes#update
#                      PUT    /quizzes/:id(.:format)                             quizzes#update
#                      DELETE /quizzes/:id(.:format)                             quizzes#destroy
#     question_options GET    /questions/:question_id/options(.:format)          options#index
#                      POST   /questions/:question_id/options(.:format)          options#create
#  new_question_option GET    /questions/:question_id/options/new(.:format)      options#new
# edit_question_option GET    /questions/:question_id/options/:id/edit(.:format) options#edit
#      question_option GET    /questions/:question_id/options/:id(.:format)      options#show
#                      PATCH  /questions/:question_id/options/:id(.:format)      options#update
#                      PUT    /questions/:question_id/options/:id(.:format)      options#update
#                      DELETE /questions/:question_id/options/:id(.:format)      options#destroy
#            questions GET    /questions(.:format)                               questions#index
#                      POST   /questions(.:format)                               questions#create
#         new_question GET    /questions/new(.:format)                           questions#new
#        edit_question GET    /questions/:id/edit(.:format)                      questions#edit
#             question GET    /questions/:id(.:format)                           questions#show
#                      PATCH  /questions/:id(.:format)                           questions#update
#                      PUT    /questions/:id(.:format)                           questions#update
#                      DELETE /questions/:id(.:format)                           questions#destroy
#

Rails.application.routes.draw do

  root 'questions#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
  get '/signup' => 'users#new'

  resources :users

  resources :quizzes

  resources :questions do
    resources :options



  end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
