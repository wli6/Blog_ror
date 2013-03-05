require '../test_helper'

class StaticPagesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  describe "Static pages" do

    describe "Home page" do

      it "should have the content 'Sample App'" do
        visit '/static_pages/home'
        page.should have_content('Sample App')
      end
    end
  end
end
