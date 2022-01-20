class UsersController < ApplicationController
  def index 
    @users = [
      {'id' => '1', 'username' => 'peter druid', 'number_of_posts' => '3'},
      {'id' => '2', 'username' => 'david armstrong', 'number_of_posts' => '1'},
      {'id' => '3', 'username' => 'james drew', 'number_of_posts' => '2'},
      {'id' => '4', 'username' => 'roman reigns', 'number_of_posts' => '4'},
      {'id' => '5', 'username' => 'brock lesnar', 'number_of_posts' => '5'}
    ]
  end

  def show
    @users = [
      {'id' => '1', 'username' => 'peter druid', 'number_of_posts' => '3'},
      {'id' => '2', 'username' => 'david armstrong', 'number_of_posts' => '1'},
      {'id' => '3', 'username' => 'james drew', 'number_of_posts' => '2'},
      {'id' => '4', 'username' => 'roman reigns', 'number_of_posts' => '4'},
      {'id' => '5', 'username' => 'brock lesnar', 'number_of_posts' => '5'}
    ]
    matched_user = @users.select{|i| i['id'] == params[:id]}
    @user_info = matched_user.reduce({}, :merge)

    @posts = [
      {'id' => '1', 
        'title' => 'First Post', 
        'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid iure possimus aut, soluta tenetur reiciendis placeat eos sunt totam consequuntur labore quas atque ipsa rem repellendus...'
      },
      {'id' => '2', 
        'title' => 'Second Post',
        'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid iure possimus aut, soluta tenetur reiciendis placeat eos sunt totam consequuntur labore quas atque ipsa rem repellendus...'
      },

      {'id' => '3',
        'title' => 'Third Post',
        'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid iure possimus aut, soluta tenetur reiciendis placeat eos sunt totam consequuntur labore quas atque ipsa rem repellendus...'
      },
      {'id' => '4',
        'title' => 'Fourth Post',
        'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid iure possimus aut, soluta tenetur reiciendis placeat eos sunt totam consequuntur labore quas atque ipsa rem repellendus...'
      },
      {'id' => '5',
        'title' => 'Fifth Post',
        'description' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid iure possimus aut, soluta tenetur reiciendis placeat eos sunt totam consequuntur labore quas atque ipsa rem repellendus...'
      }
    ]
    result_arr = @posts.select{|i| i['id'] == params[:user_id]}
    @post_info = result_arr.reduce({}, :merge)
  end  
end
