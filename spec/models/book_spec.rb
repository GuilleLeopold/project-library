require 'spec_helper'

describe Book do
	 it{ is_expected.to validate_presence_of(:title).on(:create) }
	 it{ is_expected.to validate_presence_of(:year).on(:create)}
	 it{ is_expected.to validate_presence_of(:ISBN).on(:create)}
	 it{ is_expected.to validate_presence_of(:author).on(:create)}
	 it{ is_expected.to validate_presence_of(:description).on(:create)}
	 it { should belong_to(:author) }
	 it {should validate_numericality_of(:year).is_less_than_or_equal_to(2016)}
	 it { should validate_length_of(:description).is_at_most(2000) }	
	 it { should validate_length_of(:description).is_at_least(20) }
end
