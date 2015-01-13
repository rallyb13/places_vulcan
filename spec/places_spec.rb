require('rspec')
require('places')

describe(Places) do
  before() do
    Places.clear()
  end

  describe("#add") do
    it("lets you add a place")do
      test_place = Places.new("Scotland")
      expect(test_place.add()).to eq("Scotland")
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Places.all()).to eq([])
    end
  end

  describe("#save") do
    it("saves the places to a list") do
      test_place = Places.new("Ecuador")
      test_place.save()
      expect(Places.all()).to eq([test_place])
    end
  end

  describe(".clear") do
    it("resets the list to empty") do
      Places.new("Hanover, New Hampshire").save()
      Places.clear()
      expect(Places.all()).to eq([])
    end
  end

end
