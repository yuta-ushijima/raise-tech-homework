require 'spec_helper'

describe "nginxについてのテスト" do
  context "環境設定" do
    describe service('nginx'), :if => os[:family] == 'amazon' do
      it "インストールされていること" do
        expect be_installed
      end

      it "enbaledであること" do
        expect be_enabled
      end

      it "runningであること" do
        expect be_running
      end
    end

    describe port(80) do
      it "80ポートがrunningであること" do
        expect be_listening
      end
    end
  end
end

