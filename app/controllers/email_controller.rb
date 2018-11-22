class EmailController < ApplicationController
  def index
  	@email = Email.all
  end

  def show
  	@email = Email.find(params[:id])
    respond_to do |format|
    format.html
	format.js
	end
  end

  def destroy
  	@email = Email.destroy(params[:id])
  	@email.destroy
    alert[:notice] = "Supprimé"
	respond_to do |format|
	format.html
	format.js
	redirect_to root_path
  	end
  end

end