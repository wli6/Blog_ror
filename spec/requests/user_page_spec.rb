require 'spec_helper'

describe "USer pages" do  
	describe "edit" do
		let(:user) { FactoryGirl.create(:user)}
		before {visit edit_user_path(user)}

		describe "page" do
			it { should have_selector('hi', text: "Update your pofile")}
			it { should have_selector('title', text: "Eidt user")}
			it { should have_link('change', href: 'http://gravatar.com/emails')}
		end

		describe "with invaild infomation" do
			before { click_button "Save change"}
			it {should have_content('error')}

		end


	end
end 