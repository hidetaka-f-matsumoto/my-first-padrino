MyFirstPadrino::App.controllers :posts do
  
  # get :index, :map => '/foo/bar' do
  #   session[:foo] = 'bar'
  #   render 'index'
  # end

  # get :sample, :map => '/sample/url', :provides => [:any, :js] do
  #   case content_type
  #     when :js then ...
  #     else ...
  # end

  # get :foo, :with => :id do
  #   "Maps to url '/foo/#{params[:id]}'"
  # end

  # get '/example' do
  #   'Hello world!'
  # end
  
  get :index do
    @posts = Post.order(Sequel.desc(:id)).all
    render 'posts/index'
  end

  get :index, with: :id do
    @post = Post[params[:id]]
    render 'posts/show'
  end

end
