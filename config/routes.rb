Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index" # mostrar todos os tasks
  get "tasks/new", to: "tasks#new" # pegar a informaçao do usuario

  post "tasks", to: "tasks#create" # mandar a informacao para o DB
  get "tasks/:id", to: "tasks#show" # mostrar a informacao de apenas um task pelo seu id

  get "tasks/:id/edit", to: "tasks#edit" # editar a informacao de um task pelo seu id
  patch "tasks/:id", to: "tasks#update" # enviar essa informacao de atualizacao para o DB

  delete "tasks/:id", to: "tasks#destroy" # deletar um task pelo seu id

end

# CRUD, create, read, update and delete
