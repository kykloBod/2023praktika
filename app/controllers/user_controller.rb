class UsersController < ApplicationController
  def update_role
    @user = User.find(params[:id])
  
    if @user.update(role_id: params[:role_id])
      # Роль успешно обновлена
    else
     
    end
  end
end