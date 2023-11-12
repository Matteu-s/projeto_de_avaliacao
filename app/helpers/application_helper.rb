module ApplicationHelper
  def date_formatted(date)
    return '' if date.blank?

    date.strftime('%d/%m/%Y')
  end

  def datetime_formatted(datetime)
    return '' if datetime.blank?

    datetime.strftime('%d/%m/%Y %H:%M:%S')
  end

  def mobile_formatted(mobile)
    return '' if mobile.blank?

    mobile = mobile.gsub(/\D/, '')
    "(#{mobile[0..1]}) #{mobile[2]}.#{mobile[3..6]}-#{mobile[-4..-1]}"
  end

  def phone_formatted(phone)
    return '' if phone.blank?

    phone = phone.gsub(/\D/, '')

    "(#{phone[0..1]}) #{phone[3..6]}-#{phone[-4..-1]}"
  end

  def cpf_formatted(cpf)
    return '' if cpf.blank?

    cpf = cpf.gsub(/\D/, '')

    "#{cpf[0..2]}.#{cpf[3..5]}.#{cpf[6..8]}-#{cpf[-2..-1]}"
  end

  def zip_code_formatted(zip_code)
    return '' if zip_code.blank?

    zip_code = zip_code.gsub(/\D/, '')
    "#{zip_code[0..4]}-#{zip_code[5..8]}"
  end
end
