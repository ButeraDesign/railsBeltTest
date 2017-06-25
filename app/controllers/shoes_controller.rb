class ShoesController < ApplicationController

  def index
    @user = User.find(session[:user_id])
    @shoesForSale = Shoe.all.where(sold: false)
  end

  def create
    puts 'In Shoes Create'
    user_id = session[:user_id]
    #@user = User.find(user_id)

    @shoe = Shoe.new(name: params[:name], amount: params[:amount], seller_id: session[:user_id], buyer_id: session[:user_id], sold: false)
    #@shoe = Shoe.new(name: params[:name], amount: params[:amount], seller_id: session[:user_id], buyer_id: 0, sold: false)
    #binding.pry
    #@shoe.seller_id = 1
    #@shoe.buyer_id = 1

    if @shoe.save
      #binding.pry
      #user created, have them logon now (or maybe log them in and go to show?)
      #session[:user_id] = @user.id
      redirect_to "/dashboard/#{session[:user_id]}"
      #redirect_to "/sessions/new"
    else
      #binding.pry
      puts 'Create Error'
      flash[:errors] = @shoe.errors.full_messages
      # redirect_to :back
      redirect_to "/dashboard/#{session[:user_id]}"
    end

  end

  def update
    puts 'In Student Update'
    #binding.pry
    @theShoe = Shoe.find(params[:id])
    #binding.pry
    @theShoe.update(buyer_id: session[:user_id])
    @theShoe.update(sold: true)
    #binding.pry
    #@theStudent.update(id: params[:dojo_id])
    redirect_to "/dashboard/#{session[:user_id]}"
  end

end
