class PurchasesController < ApplicationController
  get '/purchases' do
    @purchases = Purchase.all
    erb :'purchases/index'
  end

  get '/purchases/new' do
    erb :'purchases/create'
  end

  post '/purchases' do
    @purchase = Purchase.create(params)
    redirect to "/purchases/#{@purchase.id}"
  end

  get '/purchases/:id' do
    @purchase = Purchase.find(params[:id])
    erb :'purchases/show'
  end

  get '/purchases/:id/edit' do

  end

  patch '/purchases/:id' do

  end

  delete '/purchases/:id/delete' do

  end

end
