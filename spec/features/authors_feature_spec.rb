require "rails_helper"

describe "author listing page" do

    context "no authors" do

        it "tells me there are no authors" do
            visit "/authors"
            expect(page).to have_content "No authors yet"
        end
    end

    # context "there are books" do

    #     before do
    #         Book.create(title: "Snowcrash")
    #     end

    #     it "should show the title" do
    #         visit "/books"
    #         expect(page).to have_content "Snowcrash"
    #     end
    # end

end
