module ApplicationHelper

  def bootstrap_class_for flash_type
    case flash_type
      when :success
        "alert-success"
      when :error
        "alert-error"
      when :alert
        "alert-block"
      when :notice
        "alert-info"
      else
        flash_type.to_s
    end
  end

    def generate_report(from_date,to_date,rows_limit=10)
     pending = Customer.select("status").where("created_at >= ? and created_at <= ?", from_date, to_date).group("applicant_name").order("id desc").limit(rows_limit)    
logger.info "#####################"+to_date.inspect
  end  


end
