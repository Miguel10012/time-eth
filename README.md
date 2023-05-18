# time-eth


```- app
  - controllers
    - api
      - v1
        - appointments_controller.rb
  - models
    - appointment.rb
  - views
    - appointments
      - show.json.jbuilder
  - serializers
    - appointment_serializer.rb
  - services
    - appointment_service.rb
  - helpers
    - appointment_helper.rb
  - mailers
    - appointment_mailer.rb
  - jobs
    - appointment_reminder_job.rb
- config
  - routes.rb
- db
  - migrations
    - YYYYMMDDHHMMSS_create_appointments.rb
- spec
  - controllers
    - api
      - v1
        - appointments_controller_spec.rb
  - models
    - appointment_spec.rb
  - services
    - appointment_service_spec.rb
  - helpers
    - appointment_helper_spec.rb
  - mailers
    - appointment_mailer_spec.rb
  - jobs
    - appointment_reminder_job_spec.rb
- lib
  - tasks
    - appointment_cleanup_task.rb
- config.ru
- Gemfile
- README.md



```
