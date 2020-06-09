# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

employment_company = EmploymentCompany.create(name: "자소설닷컴 2020")
employment = Employment.create(field: "개발자", employment_company_id: employment_company.id)
