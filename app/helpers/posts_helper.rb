module PostsHelper
  def show_author(post)
    if user_signed_in?
      render partial: 'author', locals: { post: post }
    else
      'Author: Anonymous'
    end
  end
end
