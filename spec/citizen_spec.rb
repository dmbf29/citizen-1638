require_relative '../citizen'



describe Citizen do
  describe '#initialize' do
    it 'should create an instance of a Citizen' do
      citizen = Citizen.new('riya', 'sean', 40)
      expect(citizen).to be_a(Citizen)
    end
  end

  describe '#can_vote?' do
    it 'should true when 18 or over' do
      citizen = Citizen.new('riya', 'sean', 40)
      expect(citizen.can_vote?).to eq(true)
    end

    it 'should false when less than 18' do
      citizen = Citizen.new('riya', 'sean', 17)
      expect(citizen.can_vote?).to eq(false)
    end
  end

  describe '#full_name' do
    it 'should return a stylized full name with the first and last name' do
      citizen = Citizen.new('riya', 'sean', 17)
      expect(citizen.full_name).to eq('Riya Sean')
    end
  end
end
