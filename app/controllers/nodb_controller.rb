class NodbController < ApplicationController

  def just_json
    render :json => {:message => "No DB calls made, No Page rendered. Just Json returned."}
  end
end
