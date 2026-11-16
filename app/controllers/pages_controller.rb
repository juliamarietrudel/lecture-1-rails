class PagesController < ApplicationController
  def homepage
  end

  def contact
    # Instance variables are available in this action's view.
    @members = [ "Charles", "Jack", "Lily" ]

    # The GET form sends its input as params[:employee], e.g. /contact?employee=Ch.
    if params[:employee]
      @members = @members.select { |member| member.start_with?(params[:employee]) }
    end
  end

  def about
  end
end
