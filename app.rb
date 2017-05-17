# Create a blogs table and a users table. Blogs should be associated with a user.
#
# Create a sign up and login form. If I sign up, it should automatically also log me in.
#
# A signed-in user should be able to create blogs that are associated with that signed-in user.
#
#  If I click the title of a blog post, it should take me to a page for just that blog post that was clicked.
#
# Create a comments table that is associated with both users and blogs (as in, a blog belongs to a user and a blog).
#
#  A user should be able to go to a blog’s page and comment on the blog post. All comments on a blog post should be shown underneath the blog with the author of the comment listed.

require 'sinatra'
require 'sinatra/activerecord'

set :database, "sqlite3:userblog.sqlite3"

require './models'

get '/' do
    @blogs = Blog.all
    erb :index
end

post '/login' do
    username = params[:username]
    password = params[:password]
    redirect '/'
end

post '/new_user' do
    username = params[:new_user]
    password = params[:new_password]
    redirect '/'
end
