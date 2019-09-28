require "spec_helper"

describe "MySQLについて" do
  context "環境構築" do
    describe package("mysql-community-server") do
      it "インストールされていること" do 
        expect be_installed
      end

      it "enabledであること" do
        expect be_enabled
      end

      it "runningであること" do
        expect be_running
      end
    end
  end
end
