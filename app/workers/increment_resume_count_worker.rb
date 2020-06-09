class IncrementResumeCountWorker
  include Sidekiq::Worker

  def perform(employment_id)
    employment = Employment.find(employment_id)

    employment.resume_count ||= 0
    employment.resume_count += 1
    employment.save
  end
end
