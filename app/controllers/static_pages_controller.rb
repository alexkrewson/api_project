class StaticPagesController < ApplicationController
    require 'flickr'

    def search

        if params[:user_id]
            flickr = Flickr.new(ENV['FLICKR_API_KEY'], ENV['FLICKR_SHARED_SECRET'])      
            @user_id = params[:user_id]
            @profile = flickr.profile.getProfile(:user_id => @user_id)
            @photos = flickr.people.getPhotos(:user_id => @user_id)
            flash.now[:notice] = "User search was successful!"
          end
      

    end



end