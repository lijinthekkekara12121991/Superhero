class HomeController < ApplicationController
    before_action :common_content, :only => [:index, :team]

    def common_content
        @name = Faker::Superhero.name
        @power = Faker::Superhero.power
        @corp_title = (Faker::Job.title).titleize
        @corp_power = (Faker::Company.bs).capitalize

        @rand_num = rand(1..100)
        @set = "set" + rand(1..2).to_s
        @bg = "bg" + rand(1..2).to_s

        @avatar = Faker::Avatar.image(slug: @rand_num, size: "300x300", format: "png", set: @set, bgset: @bg)
    end

    def index
    end

    def team
    end
end
