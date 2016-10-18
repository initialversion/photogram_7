class OrangesController < ApplicationController
  def index
    @oranges = Orange.all
  end

  def show
    @orange = Orange.find(params[:id])
  end

  def new
    @orange = Orange.new
  end

  def create
    @orange = Orange.new
    @orange.vote_id = params[:vote_id]
    @orange.orange_name = params[:orange_name]

    if @orange.save
      redirect_to "/oranges", :notice => "Orange created successfully."
    else
      render 'new'
    end
  end

  def edit
    @orange = Orange.find(params[:id])
  end

  def update
    @orange = Orange.find(params[:id])

    @orange.vote_id = params[:vote_id]
    @orange.orange_name = params[:orange_name]

    if @orange.save
      redirect_to "/oranges", :notice => "Orange updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @orange = Orange.find(params[:id])

    @orange.destroy

    redirect_to "/oranges", :notice => "Orange deleted."
  end
end
