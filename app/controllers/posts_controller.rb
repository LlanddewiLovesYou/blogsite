class PostsController < ApplicationController

  def new
    render plain: "this is posts#new"
  end

  def create
    render plain: "this is posts#create"
  end

  def index
    render plain: "this is posts#index"
  end

  def show
    render plain: "this is posts#show"
  end

  def edit
    render plain: "this is posts#edit"
  end

  def update
    render plain: "this is posts#update"
  end

  def destroy
    render plain: "this is posts#destr"
  end
end
