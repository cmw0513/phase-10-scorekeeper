module GamesHelper
  def date_format(date_time)
    date_time.strftime('%d/%m/%Y %H:%M')
  end
end
