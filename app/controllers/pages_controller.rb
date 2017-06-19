class PagesController < ApplicationController
  def x
  	@user = User.all
  end

  def save_user
  	if params[:name].present? && params[:email].present? && params[:age].present?
  		@user = User.new(name: params[:name], email: params[:email], age: params[:age])
  		@user.save
  		redirect_to pages_x_path, notice: "Usuario creado correctamente"
  	else
  		redirect_to pages_x_path, alert: "Ingrese todos los campos solicitados"
  	end
  end
end
