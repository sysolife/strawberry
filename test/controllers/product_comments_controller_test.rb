require 'test_helper'

class ProductCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_comment = product_comments(:one)
  end

  test "should get index" do
    get product_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_product_comment_url
    assert_response :success
  end

  test "should create product_comment" do
    assert_difference('ProductComment.count') do
      post product_comments_url, params: { product_comment: { content: @product_comment.content } }
    end

    assert_redirected_to product_comment_url(ProductComment.last)
  end

  test "should show product_comment" do
    get product_comment_url(@product_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_comment_url(@product_comment)
    assert_response :success
  end

  test "should update product_comment" do
    patch product_comment_url(@product_comment), params: { product_comment: { content: @product_comment.content } }
    assert_redirected_to product_comment_url(@product_comment)
  end

  test "should destroy product_comment" do
    assert_difference('ProductComment.count', -1) do
      delete product_comment_url(@product_comment)
    end

    assert_redirected_to product_comments_url
  end
end
