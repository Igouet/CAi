class IntranetController < ApplicationController
  
  def inicio
    @title = 'Inicio'
  end
  
  def posts
    @title = "Posts"
    @publicaciones = Post.all
  end
  
  def web
    @title = "Web"
    @submenu = "web"
  end
end
