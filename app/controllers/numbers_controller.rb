class NumbersController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        @number = @user.numbers.create(number_params)
        redirect_to user_path(@user)
    end
    
    def destroy
        @user = User.find(params[:user_id])
        @number = @user.numbers.find(params[:id])
        @number.destroy
        redirect_to user_path(@user), status: :see_other
    end

    private
        def number_params
            params.require(:number).permit(:phone_num)
        end
end
