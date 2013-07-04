class PagesController < InheritedResources::Base
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
end