Signin::Application.routes.draw do
  get '/hi' => 'Greetings#hello'
  post '/mynameis' => 'Greetings#introduce'
  delete '/bye' => 'Greetings#goodbye'
end
