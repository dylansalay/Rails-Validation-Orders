class AccountController < ApplicationController

    def new
        @account = Account.new
        render 'account'
    end

    def create
        @account = Account.create(account_params)
        puts @account.errors.full_messages

        if @account.valid?
            flash.now[:notice] = "Account created successfully."
        end

        render 'account'
    end

    private

    def account_params
        params.require(:account).permit(:first_name, :last_name, :email, :phone_number)
    end

end
