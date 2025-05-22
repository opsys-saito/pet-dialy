class Users::CalendarsController < UsersController
  before_action :set_date
  def show
  end

  private
    def set_date
      begin
        @date = Date.parse params[:start_date]
      rescue ArgumentError, TypeError
        @date = Date.current
      end
      @one_month = @date.all_month
    end
end
