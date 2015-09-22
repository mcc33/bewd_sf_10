class BooksController < ApplicationController

  #New method is an http 'get' request, it corresponds the 'new' view,
  #and it gets a user's input for a new instance of the class book
  def new
    @book = Book.new
  end

#Receives passed argument of book_params from the above 'new' method, to create the captured user input.
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book)
      #based on the routes (@ localhost.../routes, or rakes route, we can use the defined path as opposed to a link)
    else
      render 'new'
      #goes back to the new method if the book is not saved
    end
  end

#Index will retrieve all books through active record. The model contains the database with the books,
#in the controller we assign that to @books. This will then be translated to the view. Index is 'get' request
  def index
    @books = Book.all
  end

#Read/get action.
  def show
    @book = get_book
  end

#Read/get action. Retrives 'get_book', sets it equal to @book, displays it in the view so the user can update it.
  def edit
    @book = get_book
  end

# Is passed information from edit method.
#If the book is updated, redirects to the page with updated parameters.
#If not, goes back to the 'edit' form.
  def update
    @book = get_book
    if @book.update(book_params)
      redirect_to book_path(@book)
    else
      render 'edit'
    end
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :year_published, :author, :available, :genre, :image_url)
    #params is a library within rails. here were require book model to determine which attributes on the book can be changed.
  end

  def get_book
    Book.find(params[:id])
  end

end
