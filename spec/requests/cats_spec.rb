require 'rails_helper'



describe "Cats API", type: :request do
    it "gets a list of Cats" do
        Cat.create(name: 'Tucker', age: 1, enjoys: 'Being fuzzy and eating treats')
        get '/cats'
        json = JSON.parse(response.body)
        expect(response).to have_http_status(:ok)
        expect(json.length).to eq 1
    end

    it "creates a cat" do
        cat_params = {
            cat: {
                name: 'Buster',
                age: 8,
                enjoys: 'Climbing trees and chasing bees.'
            }
        }
        post '/cats', params: cat_params
        expect(response).to have_http_status(:ok)
        new_cat = Cat.first
        expect(new_cat.name).to eq('Buster')
    end

    it "doesn't create a cat without a name" do
        cat_params = {
            cat: {
                age: 4,
                enjoys: 'Meow Mix and staying outdoors'
            }
        }
        post '/cats', params: cat_params
    end
end
