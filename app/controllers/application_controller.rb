class ApplicationController < ActionController::Base
  inherit_resources
  protect_from_forgery
  before_filter :require_http_auth_on_staging
  respond_to :json

  def index
    index! do |format|
      if params[:callback]
        format.json { render :json => collection.to_json, :include => :category, :callback => params[:callback] }
      else
        format.json { render json: collection.to_json}
       end
    end
    
  end

  def show
    show! do |format|
      if params[:callback]
        format.json { render :json => resource.to_json, :include => :category, :callback => params[:callback] }
      else
        format.json { render json: resource.to_json}
       end
    end
    
  end

  def require_http_auth_on_staging
    if Rails.env == "production" && !request.headers['HTTP_USER_AGENT'].eql?('facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)')
      authenticate_or_request_with_http_basic do |username, password|
        username == "cdeliens" && password == "60599049"
      end
    end
  end


end
