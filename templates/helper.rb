class Hai

  def cmonth

    month = quote.date[0..1]

    if month == "01"
      month = "GEN"
    elsif month == "02"
      month = "FEB"
    elsif month == "03"
      month = "MAR"
    elsif month == "04"
      month = "APR"
    elsif month == "05"
      month = "MAY"
    elsif month == "06"
      month = "JUN"
    elsif month == "07"
      month = "JUL"
    elsif month == "08"
      month = "AUG"
    elsif month == "09"
      month = "SEP"
    elsif month == "10"
      month = "OCT"
    elsif month == "11"
      month = "NOV"
    elsif month == "12"
      month = "DEC"
    end
  end
end
