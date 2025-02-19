require 'spec_helper'

RSpec.describe License do

    before(:each) do
        @license_data = License.new
        @registrant_1 = Registrant.new('Bruce', 18, true )
        @registrant_2 = Registrant.new('Penny', 16 )
        @registrant_3 = Registrant.new('Tucker', 15 )
        @facility_1 = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
        @facility_2 = Facility.new({name: 'DMV Northeast Branch', address: '4685 Peoria Street Suite 101 Denver CO 80239', phone: '(720) 865-4600'})
    end
    it "can be initilized" do
        expect(@license_data).to be_an_instance_of(License)
    end
end
