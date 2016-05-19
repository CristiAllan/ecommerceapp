require 'rails_helper'
require 'spec_helper'

RSpec.describe ProductsController, type: :controller do
    describe "GET #index" do
            let(:my_products) { create_list(:product, 10) }

            before(:each) do
                get :index
            end

            it 'assigns all products as @products' do
                expect(assigns(:products)).to eq(my_products)
            end
        end
end