class InviteController < ApplicationController
  def reception
    if params[:rsvp]
      @rsvp = params[:rsvp]
    else
      @rsvp = ""
    end
    @fieldsmissing = params[:fieldsmissing]
  end

  def rsvp
    if params[:coming].nil?
      redirect_to '/reception?fieldsmissing=1'
    else
      response = Response.create(guest1: params[:guest1], guest2: params[:guest2], kids: params[:kids], coming: params[:coming], email: params[:email], dietary: params[:dietary], song: params[:song])
      redirect_to '/reception?rsvp=' + params[:coming]
    end
  end

  def responses
    pass = ""
    File.open("./config/responses.key").each do |line|
      pass = line
    end
    pass = pass.strip
    if pass == ""
      head :forbidden
    end

    authenticate_or_request_with_http_basic do |user_name, password|
      user_name == "pixie" && password == pass
    end

    @csv = params[:csv]
    @responses = Response.all
  end
end
