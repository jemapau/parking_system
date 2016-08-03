require 'rails_helper'

RSpec.describe User, type: :model do
	describe 'relations' do
		context 'when user has vehicles'
			it 'returns related vehicles' do
				let(:first_name){'Mock'}
				let(:last_name){'User'}
				let(:password){'123456'}
				let(:email){'mock_user@miemail.com'}
				let(:birthdate){Date.new('1988,12,06')}

				let (:user) {
					User.new (first_name: first_name,
							last_name: last_name,
							password: password,
							email: email,
							birthdate: birthdate)
				}
			end

			before do
				user.save
			end

			context 'when user has vehicle' do
				it 'returns related vehicles' do 
					Vehicle.create(vin: 'MOCK879', year: 1988, model: 'Chrysler', user: user)
					expect(user.vehicles).not_to be_empty
				end
				it 'returns number of related vehicles' do
					Vehicle.create(vin: 'MOCK879', year: 1988, model: 'Chrysler', user: user)
					Vehicle.create(vin: 'AURM123', year: 2008, model: 'Chrysler', user: user)
					expect(user.vehicles.length).to eq 2
				end
			end
		end
		context
			it 'returns no vehicle' do
				expect(user.vehicles).to be_empty
			end
		end 
	end	
end