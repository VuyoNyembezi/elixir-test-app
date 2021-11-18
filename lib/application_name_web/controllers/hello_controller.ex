defmodule ApplicationNameWeb.HelloController do
    use ApplicationNameWeb, :controller
    alias ApplicationName.Accounts
    alias ApplicationName.Accounts.User
   
  
    def index(conn, _params) do
        users =Accounts.list_users()
      render(conn, "index.html",users: users)
    end
  end