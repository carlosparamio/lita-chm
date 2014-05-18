require "spec_helper"

describe Lita::Handlers::Chm, lita_handler: true do

  it { routes_command("today in computer history").to(:history) }
  it { routes_command("tdih").to(:history) }
  it { routes_command("chm").to(:history) }

  describe("#history") do

    let(:http_response) do
      double("Faraday::Response").tap do |response|
        allow(response).to receive(:status).and_return(200)
        allow(response).to receive(:body).and_return(File.read("spec/fixtures/chm.html"))
      end
    end

    before do
      allow_any_instance_of(Faraday::Connection).to receive(:get).and_return(http_response)
    end

    it "replies with the short history lesson of the day" do
      send_command("today in computer history")
      expect(replies.last).to eq("May 18, 1998\nUnited States Justice Department Files Antitrust against Microsoft \nThe United States Department of Justice and twenty US states filed a set of civil actions against Microsoft Corporation. The plaintiffs alleged that Microsoft abused monopoly power regarding operating system and Web browser sales. The central issue was whether it was monopolistic of Microsoft to bundle Internet Explorer software with its Windows operating system. This practice was alleged to have been responsible for Microsoft's victory in the “browser wars” because every Windows user had a copy of Internet Explorer. It was further alleged that this unfairly restricted the market for competing web browsers (such as Netscape Navigator or Opera), which were slow to download over a modem or had to be purchased at a store. The case was tried before U.S. District Court Judge Thomas Penfield Jackson. Joel I. Klein was the lead prosecutor. David Boies initially represented the Department of Justice.")
    end

  end
end
