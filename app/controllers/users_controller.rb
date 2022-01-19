class UsersController < ApplicationController
  def index 
    @posts = [
      {'username' => 'peter druid', 'number_of_posts' => '3'},
      {'username' => 'david armstrong', 'number_of_posts' => '1'},
      {'username' => 'james drew', 'number_of_posts' => '2'},
      {'username' => 'roman reigns', 'number_of_posts' => '4'},
      {'username' => 'brock lesnar', 'number_of_posts' => '5'}
    ]
  end

  def show; end
end
