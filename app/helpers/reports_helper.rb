module ReportsHelper
 def all_reports(start_date, end_date)
   customers = Customer.where("created_at >= ? and created_at <= ?", start_date, end_date)
   co_applicants = CoApplicant.where("created_at >= ? and created_at <= ?", start_date, end_date)
   business = Business.where("created_at >= ? and created_at <= ?", start_date, end_date)
   co_app_business = CoApplicantBusiness.where("created_at >= ? and created_at <= ?", start_date, end_date)
   reports = customers+co_applicants+business+co_app_business
 end
end
