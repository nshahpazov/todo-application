Rails.application.routes.draw do
  scope '/api' do
    scope '/todos' do
      get '/' => 'todo#index'
      post '/' => 'todo#create'
      scope '/:todo_name' do
        get '/' => 'todo#show'
        put '/' => 'todo#update'
      end
    end
  end
end
