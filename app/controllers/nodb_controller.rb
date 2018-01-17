class NodbController < ApplicationController

  def just_json
    render :json => {:message => controller_message }
  end

  def one_second_json
    sleep 1
    render :json => {:message => "#{controller_message} with 1 second delay"}
  end

  def two_second_json
    sleep 2
    render :json => {:message => "#{controller_message} with 2 second delay"}
  end

  def three_second_json
    sleep 3
    render :json => {:message => "#{controller_message} with 3 second delay"}
  end

  def four_second_json
    sleep 4
    render :json => {:message => "#{controller_message} with 4 second delay"}
  end

  def five_second_json
    sleep 5
    render :json => {:message => "#{controller_message} with 5 second delay"}
  end

  def thirty_second_json
    sleep 30
    render :json => {:message => "#{controller_message} with 30 second delay"}
  end

  def one_minute_json
    sleep 60
    render :json => {:message => "#{controller_message} with 60 second delay"}
  end

  def custom_second_json
    sleep params[:id].to_i
    render :json => {:message => "#{controller_message} with #{params[:id]} second delay"}
  end

  private
  def controller_message
    "No DB calls made, No Page rendered. Just Json returned"
  end
end
