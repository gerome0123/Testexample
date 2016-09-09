require 'test_helper'

class BookSubjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_subject = book_subjects(:one)
  end

  test "should get index" do
    get book_subjects_url
    assert_response :success
  end

  test "should get new" do
    get new_book_subject_url
    assert_response :success
  end

  test "should create book_subject" do
    assert_difference('BookSubject.count') do
      post book_subjects_url, params: { book_subject: { book_id: @book_subject.book_id, subject_id: @book_subject.subject_id } }
    end

    assert_redirected_to book_subject_url(BookSubject.last)
  end

  test "should show book_subject" do
    get book_subject_url(@book_subject)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_subject_url(@book_subject)
    assert_response :success
  end

  test "should update book_subject" do
    patch book_subject_url(@book_subject), params: { book_subject: { book_id: @book_subject.book_id, subject_id: @book_subject.subject_id } }
    assert_redirected_to book_subject_url(@book_subject)
  end

  test "should destroy book_subject" do
    assert_difference('BookSubject.count', -1) do
      delete book_subject_url(@book_subject)
    end

    assert_redirected_to book_subjects_url
  end
end
