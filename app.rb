require 'sinatra/base'

class Battle < Sinatra::Base
  # app code here...

  get '/' do
    'Hello Battle!'
  end

  run! if app_file == $0

end