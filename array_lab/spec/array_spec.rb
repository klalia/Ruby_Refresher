require 'spec_helper'

describe 'working through various arrays' do

  context 'standard 1 dimensional arrays' do
    dog_breeds = ['jack russell', 'boxer', 'bloodhound', 'greyhound']

    it 'the first entry should equal jack russel' do
      # puts dog_breeds.methods
      # Use array methods only
    end

    it 'the last entry should equal greyhound' do
      expect(dog_breeds[-1]).to eq 'greyhound'
    end

    it 'the second entry should equal boxer' do
      expect(dog_breeds[1]).to eq 'boxer'
    end

  end

  context 'test 2 dimensional arrays' do

    dog_breed_and_names = [['jack russell', 'archie'],['boxer', 'bruce'],['bloodhound', 'droopy'], ['greyhound', 'streak']]

    it 'the first dog name should equal archie' do
      expect(dog_breed_and_names[0][1]).to eq 'archie'
    end

    it 'the second last entry should be a bloodhound called droopy' do
      expect(dog_breed_and_names[2][1]).to eq 'droopy'
    end

    it 'the second entry should be a boxer' do
      expect(dog_breed_and_names[1][0]).to eq 'boxer'
    end

  end

  context 'test multidimensional arrays' do
    dog_breed_names_age_and_health = [['jack russell', 'archie',[4, 'healthy']],['boxer', 'bruce',[7,'bad back']],['bloodhound', 'droopy', [6, 'healthy']], ['greyhound', 'streak',[12, 'old dog']]]

    it 'the last dog should be called streak and is an old dog' do
      expect(dog_breed_names_age_and_health[3][1]).to eq 'streak'
      expect(dog_breed_names_age_and_health[3][2][1]).to eq 'old dog'
    end

    it 'the bloodhound should be 6 years old and healthy' do
      expect(dog_breed_names_age_and_health[2][2][0]).to eq 6
      expect(dog_breed_names_age_and_health[2][2][1]).to eq 'healthy'
    end

    it 'the first dog should be a jack russell and 4 years old' do
      expect(dog_breed_names_age_and_health[0][0]).to eq 'jack russell'
      expect(dog_breed_names_age_and_health[0][2][0]).to eq 4
    end

  end

end
