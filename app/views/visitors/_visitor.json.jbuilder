json.extract! visitor, :id, :name, :arrived_at, :departed_at, :host_id, :host_name, :visit_purpose, :status, :created_at, :updated_at
json.url visitor_url(visitor, format: :json)