require 'test_helper'

class CreateUserTest < ActionDispatch::IntegrationTest
    test "create new user on signing up" do
        get '/signup'
        assert_template 'users/new'
        assert_difference 'User.count',1 do
            post users_path, params:{user: {username: "Olena", email: "rolena@example.com",
                                     password: "password"}}
            follow_redirect!
        end
        assert_template 'users/show'
        assert_match "p", "Welcome to Olena's page"
    end
end
