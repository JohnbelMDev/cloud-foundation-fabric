/**
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "custom_domain" {
  description = "Custom domain for the Application Load Balancer."
  value       = var.service_project.project_id != null ? "http://${var.custom_domain}" : "none"
}

output "default_URL_svc_a" {
  description = "Cloud Run service A default URL."
  value       = google_cloud_run_v2_service.svc_a.uri
}

output "default_URL_svc_b" {
  description = "Cloud Run service B default URL."
  value       = module.cloud-run-svc-b.service.status[0].url
}

output "load_balancer_ip" {
  description = "Load Balancer IP address."
  value       = var.service_project.project_id != null ? module.int-alb[0].address : "none"
}