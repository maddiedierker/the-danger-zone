get '/' do
  # @cat = Kitter.get_cat_stream

  if request.xhr?
    erb :'kitter', layout: false
  else
    erb :'kitter'
  end
end
