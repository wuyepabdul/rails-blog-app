class UsersController < ApplicationController
  def index 
    @posts = [
      {'id' => '1', 'username' => 'peter druid', 'number_of_posts' => '3'},
      {'id' => '2', 'username' => 'david armstrong', 'number_of_posts' => '1'},
      {'id' => '3', 'username' => 'james drew', 'number_of_posts' => '2'},
      {'id' => '4', 'username' => 'roman reigns', 'number_of_posts' => '4'},
      {'id' => '5', 'username' => 'brock lesnar', 'number_of_posts' => '5'}
    ]
  end

  def show
    @posts = [
      {'id' => '1', 'username' => 'peter druid', 'number_of_posts' => '3'},
      {'id' => '2', 'username' => 'david armstrong', 'number_of_posts' => '1'},
      {'id' => '3', 'username' => 'james drew', 'number_of_posts' => '2'},
      {'id' => '4', 'username' => 'roman reigns', 'number_of_posts' => '4'},
      {'id' => '5', 'username' => 'brock lesnar', 'number_of_posts' => '5'}
    ]
    result_arr = @posts.select{|i| i['id'] == params[:id]}
    print 'params =>'
    @user_info = result_arr.reduce({}, :merge) 
  end
end
