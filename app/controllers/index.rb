get '/' do
  @cats = Kitter.get_cat_stream
  erb :'kitter'
end
