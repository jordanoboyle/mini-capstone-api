json.array! @users, partial: "users/user", as: :user


json.admin do 
  json.admin @user.admin
end