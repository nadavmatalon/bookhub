require "rails_helper"

describe "author listing page" do

    context "no authors" do

        it "tells me there are no authors" do
            visit "/authors"
            expect(page).to have_content "No authors yet"
        end
    end

    context "there are authors" do

        before do
            Author.create(name: "Stephenson")
        end

        it "should show the name" do
            visit "/authors"
            expect(page).to have_content "Stephenson"
        end
    end

end
