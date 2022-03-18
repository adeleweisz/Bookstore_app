class BooksController < ApplicationController
  def index
    books = Book.all
    render json: books.as_json
  end

  def create
    book = Book.new(
      name: params[:name],
      year: params[:year],
      author: params[:author],
      description: params[:description]
    )
    book.save
    render json: book.as_json
  end

  def show
    book = Book.find_by(id: params[:id])
    render json: book.as_json
  end

  def update
    book = Book.find_by(id: params[:id])
    book.name = params[:name] || book.name
    book.year = params[:year] || book.year
    book.author = params[:author] || book.author
    book.description = params[:description] || book.description
    book.save
    render json: book.as_json
  end

  def destroy
    book = Book.find_by(id: params[:id])
    book.destroy
    render json: {message: "Book successfully destroyed."}
  end
end

