require 'spec_helper'

describe Movie do

  describe "add director to existing movie" do
    before do
      @movie = FactoryGirl.create(:movie)
      @movie.director = "Ridley Scott"
      @movie.save
    end
    subject { @movie }

    its(:director) { should eql "Ridley Scott" }

    describe "find movie with same director" do
      before do
        [:star_wars, :blade_runner, :thx].each do |m|
          FactoryGirl.create(m)
        end
      end

      it { @movie.find_all_by_director.should eql(Movie.find_all_by_director("Ridley Scott")) }
    end
  end

  #Unhappy path
end
