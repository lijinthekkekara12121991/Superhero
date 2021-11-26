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
        @team_number = params[:team_number].to_i
        @team_name = []
        @team_power = []
        @team_job = []
        @team_superpower = []
        @team_avatar = []
        @team_number.times do
            @team_name << Faker::Superhero.name
            @team_power << Faker::Superhero.power
            @team_job << (Faker::Job.title).titleize
            @team_superpower << (Faker::Company.bs).capitalize
            @team_avatar << Faker::Avatar.image(slug: rand(1..100), size: "300x300", format: "png", set: "set" + rand(1..2).to_s, bgset: "bg" + rand(1..2).to_s)
        end
    end
end
