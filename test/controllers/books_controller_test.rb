require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should get new" do
    get new_book_url
    assert_response :success
  end

  test "should create book" do
    assert_difference("Book.count") do
      post books_url, params: { book: { author_id: @book.author_id, book_status: @book.book_status, classification_id: @book.classification_id, date_added: @book.date_added, isbd: @book.isbd, language_id: @book.language_id, location_id: @book.location_id, number_of_page: @book.number_of_page, publisher_id: @book.publisher_id, publishing_year: @book.publishing_year, quantity: @book.quantity, student_id: @book.student_id, title: @book.title } }
    end

    assert_redirected_to book_url(Book.last)
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_url(@book)
    assert_response :success
  end

  test "should update book" do
    patch book_url(@book), params: { book: { author_id: @book.author_id, book_status: @book.book_status, classification_id: @book.classification_id, date_added: @book.date_added, isbd: @book.isbd, language_id: @book.language_id, location_id: @book.location_id, number_of_page: @book.number_of_page, publisher_id: @book.publisher_id, publishing_year: @book.publishing_year, quantity: @book.quantity, student_id: @book.student_id, title: @book.title } }
    assert_redirected_to book_url(@book)
  end

  test "should destroy book" do
    assert_difference("Book.count", -1) do
      delete book_url(@book)
    end

    assert_redirected_to books_url
  end
end
