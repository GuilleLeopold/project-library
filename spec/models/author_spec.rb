require 'spec_helper'

describe Author do
	 it{ is_expected.to validate_presence_of(:name).on(:create) }
	 it{ is_expected.to validate_presence_of(:last_name).on(:create)}
end