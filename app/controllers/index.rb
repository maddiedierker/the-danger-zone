get '/' do
  @cat = Kitter.get_cat_stream

  if request.xhr?
    @cat.to_json
  else
    erb :'kitter'
  end
end
