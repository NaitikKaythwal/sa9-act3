# spec/prob1_spec.rb
require 'prob1'
RSpec.describe VendingMachine do
  let(:vendingmachine) { VendingMachine.new(20) }
  describe "#purchase" do
    it "decreases the inventory by the purchase amount if bottles are available" do
      vendingmachine.purchase(20)
      expect(vendingmachine.bottles).to eq(0)
    end
    it "does not change the inventory if bottles are insufficient" do
      vendingmachine.purchase(40)
      expect(vendingmachine.bottles).to eq(20)
    end
  end

  describe "#restock" do
    it "increases the inventory by the restock amount" do
      vendingmachine.restock(40)
      expect(vendingmachine.bottles).to eq(60)
    end
  end

  describe "#get_inventory" do
    it "returns the current inventory" do
      expect(vendingmachine.bottles).to eq(20)
    end
  end

  describe "#report" do
    it "reports the current inventory with a print statement" do
      expect { vendingmachine.report }.to output("Inventory: 20 bottles\n").to_stdout
    end
  end
end
