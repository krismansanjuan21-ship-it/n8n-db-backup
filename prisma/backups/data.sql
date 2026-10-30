SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- \restrict 7Ez3VlNhPhOSjMfJhrBKgm7DMWVFs7YmfS6Sje38DFA0BaauchuVyCx3oowHSmA

-- Dumped from database version 17.11
-- Dumped by pg_dump version 17.11

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") FROM stdin;
\.


--
-- Data for Name: custom_oauth_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."custom_oauth_providers" ("id", "provider_type", "identifier", "name", "client_id", "client_secret", "acceptable_client_ids", "scopes", "pkce_enabled", "attribute_mapping", "authorization_params", "enabled", "email_optional", "issuer", "discovery_url", "skip_nonce_check", "cached_discovery", "discovery_cached_at", "authorization_url", "token_url", "userinfo_url", "jwks_uri", "created_at", "updated_at", "custom_claims_allowlist") FROM stdin;
\.


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."flow_state" ("id", "user_id", "auth_code", "code_challenge_method", "code_challenge", "provider_type", "provider_access_token", "provider_refresh_token", "created_at", "updated_at", "authentication_method", "auth_code_issued_at", "invite_token", "referrer", "oauth_client_state_id", "linking_target_id", "email_optional") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") FROM stdin;
\.


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") FROM stdin;
\.


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."instances" ("id", "uuid", "raw_base_config", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_clients" ("id", "client_secret_hash", "registration_type", "redirect_uris", "grant_types", "client_name", "client_uri", "logo_uri", "created_at", "updated_at", "deleted_at", "client_type", "token_endpoint_auth_method") FROM stdin;
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag", "oauth_client_id", "refresh_token_hmac_key", "refresh_token_counter", "scopes") FROM stdin;
\.


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") FROM stdin;
\.


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_factors" ("id", "user_id", "friendly_name", "factor_type", "status", "created_at", "updated_at", "secret", "phone", "last_challenged_at", "web_authn_credential", "web_authn_aaguid", "last_webauthn_challenge_data") FROM stdin;
\.


--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_challenges" ("id", "factor_id", "created_at", "verified_at", "ip_address", "otp_code", "web_authn_session_data") FROM stdin;
\.


--
-- Data for Name: mfa_recovery_code_sets; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_recovery_code_sets" ("id", "user_id", "mfa_factor_id", "failed_verification_count", "verification_locked_until", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: mfa_recovery_codes; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."mfa_recovery_codes" ("id", "mfa_recovery_code_set_id", "code_hash", "consumed_at", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_authorizations; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_authorizations" ("id", "authorization_id", "client_id", "user_id", "redirect_uri", "scope", "state", "resource", "code_challenge", "code_challenge_method", "response_type", "status", "authorization_code", "created_at", "expires_at", "approved_at", "nonce") FROM stdin;
\.


--
-- Data for Name: oauth_client_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_client_states" ("id", "provider_type", "code_verifier", "created_at") FROM stdin;
\.


--
-- Data for Name: oauth_consents; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."oauth_consents" ("id", "user_id", "client_id", "scopes", "granted_at", "revoked_at") FROM stdin;
\.


--
-- Data for Name: one_time_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."one_time_tokens" ("id", "user_id", "token_type", "token_hash", "relates_to", "created_at", "updated_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") FROM stdin;
\.


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_providers" ("id", "resource_id", "created_at", "updated_at", "disabled") FROM stdin;
\.


--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_providers" ("id", "sso_provider_id", "entity_id", "metadata_xml", "metadata_url", "attribute_mapping", "created_at", "updated_at", "name_id_format") FROM stdin;
\.


--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."saml_relay_states" ("id", "sso_provider_id", "request_id", "for_email", "redirect_to", "created_at", "updated_at", "flow_state_id") FROM stdin;
\.


--
-- Data for Name: scim_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."scim_tokens" ("id", "sso_provider_id", "token_hash", "prefix", "created_at", "expires_at", "revoked_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: scim_users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."scim_users" ("id", "sso_provider_id", "user_id", "resource", "created_at", "updated_at", "deleted_at") FROM stdin;
\.


--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."sso_domains" ("id", "sso_provider_id", "domain", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: webauthn_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_challenges" ("id", "user_id", "challenge_type", "session_data", "created_at", "expires_at") FROM stdin;
\.


--
-- Data for Name: webauthn_credentials; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

COPY "auth"."webauthn_credentials" ("id", "user_id", "credential_id", "public_key", "attestation_type", "aaguid", "sign_count", "transports", "backup_eligible", "backed_up", "friendly_name", "created_at", "updated_at", "last_used_at") FROM stdin;
\.


--
-- Data for Name: role; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role" ("slug", "displayName", "description", "roleType", "systemRole", "createdAt", "updatedAt") FROM stdin;
global:chatUser	Chat User	Can only use workflows through the chat interface, not build them	global	t	2026-10-25 14:20:53.119+00	2026-10-25 14:20:53.119+00
global:owner	Owner	Owner	global	t	2026-10-25 14:14:45.323+00	2026-10-25 14:20:55.469+00
global:admin	Admin	Full control of the instance, including all workflows and credentials	global	t	2026-10-25 14:14:45.323+00	2026-10-25 14:20:55.469+00
global:member	Member	Can create and use their own workflows and credentials	global	t	2026-10-25 14:14:45.323+00	2026-10-25 14:20:55.469+00
project:admin	Project Admin	Full control of settings, members, workflows, credentials and executions	project	t	2026-10-25 14:14:45.323+00	2026-10-25 14:20:57.177+00
project:personalOwner	Project Owner	Project Owner	project	t	2026-10-25 14:14:45.323+00	2026-10-25 14:20:57.177+00
project:editor	Project Editor	Create, edit, and delete workflows, credentials, and executions	project	t	2026-10-25 14:14:45.323+00	2026-10-25 14:20:57.177+00
project:viewer	Project Viewer	Read-only access to workflows, credentials, and executions	project	t	2026-10-25 14:14:45.323+00	2026-10-25 14:20:57.177+00
project:chatUser	Project Chat User	Chat-only access to chatting with workflows that have n8n Chat enabled	project	t	2026-10-25 14:14:45.323+00	2026-10-25 14:20:57.177+00
credential:owner	Credential Owner	Credential Owner	credential	t	2026-10-25 14:20:53.119+00	2026-10-25 14:20:53.119+00
credential:user	Credential User	Credential User	credential	t	2026-10-25 14:20:53.119+00	2026-10-25 14:20:53.119+00
workflow:owner	Workflow Owner	Workflow Owner	workflow	t	2026-10-25 14:20:53.119+00	2026-10-25 14:20:53.119+00
workflow:editor	Workflow Editor	Workflow Editor	workflow	t	2026-10-25 14:20:53.119+00	2026-10-25 14:20:53.119+00
secretsProviderConnection:owner	Secrets Provider Connection Owner	Full control of secrets provider connection settings and secrets	secretsProviderConnection	t	2026-10-25 14:20:53.119+00	2026-10-25 14:20:53.119+00
secretsProviderConnection:user	Secrets Provider Connection User	Read-only access to use secrets from the connection	secretsProviderConnection	t	2026-10-25 14:20:53.119+00	2026-10-25 14:20:53.119+00
\.


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user" ("id", "email", "firstName", "lastName", "password", "personalizationAnswers", "createdAt", "updatedAt", "settings", "disabled", "mfaEnabled", "mfaSecret", "mfaRecoveryCodes", "lastActiveAt", "roleSlug") FROM stdin;
63efb5cb-23b6-43d7-bea6-bd1d7984f46d	krismansanjuan21@gmail.com	Krisman	San Juan	$2a$10$50B2YjoOzdfG.PinBIakyuA03O8DtoQP4eGfFPpyzDBUg2WcKraNq	{"version":"v4","personalization_survey_submitted_at":"2026-10-25T14:25:33.161Z","personalization_survey_n8n_version":"2.44.6","companyType":"saas"}	2026-10-25 14:14:45.323+00	2026-10-27 06:23:02.773+00	{"userActivated": false}	f	f	\N	\N	2026-10-27	global:owner
\.


--
-- Data for Name: project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project" ("id", "name", "type", "createdAt", "updatedAt", "icon", "description", "creatorId", "customTelemetryTags") FROM stdin;
Z7jFGj3g0zBL4lSy	Krisman San Juan <krismansanjuan21@gmail.com>	personal	2026-10-25 14:14:45.323+00	2026-10-25 14:24:40.041+00	\N	\N	63efb5cb-23b6-43d7-bea6-bd1d7984f46d	[]
\.


--
-- Data for Name: activity_event; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."activity_event" ("id", "category", "action", "typeVersion", "userId", "projectId", "resourceType", "resourceId", "resourceName", "data", "createdAt") FROM stdin;
\.


--
-- Data for Name: agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents" ("id", "name", "projectId", "integrations", "schema", "tools", "skills", "versionId", "createdAt", "updatedAt", "activeVersionId", "availableInMCP", "setupCompletedAt", "revision") FROM stdin;
\.


--
-- Data for Name: agent_background_job; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_background_job" ("id", "kind", "status", "parentAgentId", "parentThreadId", "title", "subAgentId", "childThreadId", "childExecutionId", "workflowId", "timeoutAt", "result", "error", "settledAt", "createdAt", "updatedAt", "notifiedAt", "parentResourceId", "parentPrincipalHash", "pauseRequestId") FROM stdin;
\.


--
-- Data for Name: agent_budget_applied_call; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_budget_applied_call" ("callId", "createdAt") FROM stdin;
\.


--
-- Data for Name: agent_budget_spend; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_budget_spend" ("key", "totalUsd", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_channel_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_channel_status" ("agentId", "integrationType", "credentialId", "hostId", "status", "errorMessage", "attempts", "backoffUntil", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_chat_attachments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_chat_attachments" ("id", "agentId", "projectId", "threadId", "resourceId", "binaryDataId", "fileName", "mimeType", "fileSizeBytes", "source", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_chat_subscriptions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_chat_subscriptions" ("agentId", "integrationType", "credentialId", "threadId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_checkpoints; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_checkpoints" ("runId", "agentId", "state", "expired", "createdAt", "updatedAt", "threadId") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_resolver; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_resolver" ("id", "name", "type", "config", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: credentials_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credentials_entity" ("name", "data", "type", "createdAt", "updatedAt", "id", "isManaged", "isGlobal", "isResolvable", "resolvableAllowFallback", "resolverId", "usageScope", "description", "pendingAuthorizationExpiresAt") FROM stdin;
Airtable Personal Access Token account	U2FsdGVkX19kfLSnDwsQMHKIUyj8Q8LUoJ7ZtWoCUYBIeD0zQ4HyU21RME1k93SzgfTr8oj8qVvWQC04u4Fw89mxZH2U5lfq5lUWARz/kYBxgfdmyfbpj/fH3RDTGLo3169ovhushJA6LKKPHy4dr/UHo8wCMTQXBbtg8covA0Q=	airtableTokenApi	2026-10-25 15:18:47.417+00	2026-10-25 15:18:45.766+00	8lMiwdMZwMCQBiLW	f	f	f	f	\N	project	\N	\N
\.


--
-- Data for Name: agent_credential_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_credential_dependency" ("agentId", "credentialId", "createdAt") FROM stdin;
\.


--
-- Data for Name: agent_eval_dataset; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_eval_dataset" ("id", "name", "description", "agentId", "datasetSource", "datasetRef", "columnMapping", "createdById", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_eval_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_eval_run" ("id", "datasetId", "agentVersionId", "status", "runAt", "completedAt", "metrics", "errorCode", "errorDetails", "runningInstanceId", "cancelRequested", "createdById", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_eval_result; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_eval_result" ("id", "runId", "sourceRowId", "runIndex", "status", "input", "output", "toolCalls", "metrics", "runAt", "completedAt", "errorCode", "errorDetails", "createdAt", "updatedAt", "verdict") FROM stdin;
\.


--
-- Data for Name: agent_eval_rating; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_eval_rating" ("id", "resultId", "vote", "comment", "correction", "ratedById", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_history" ("versionId", "agentId", "schema", "tools", "skills", "publishedById", "author", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_execution_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_execution_threads" ("id", "agentId", "agentName", "projectId", "sessionNumber", "totalPromptTokens", "totalCompletionTokens", "totalCost", "totalDuration", "title", "emoji", "createdAt", "updatedAt", "taskId", "taskVersionId", "parentThreadId", "parentAgentId", "ownerId", "accessScope") FROM stdin;
\.


--
-- Data for Name: agent_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_execution" ("id", "threadId", "status", "startedAt", "stoppedAt", "duration", "userMessage", "model", "promptTokens", "completionTokens", "totalTokens", "cost", "timeline", "error", "hitlStatus", "source", "createdAt", "updatedAt", "storedAt", "attachments", "failureSummary", "author", "acceptsSteering") FROM stdin;
\.


--
-- Data for Name: agents_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_threads" ("id", "resourceId", "title", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_messages" ("id", "threadId", "resourceId", "role", "type", "content", "createdAt", "updatedAt", "author", "origin", "modelContent", "modelContextAt") FROM stdin;
\.


--
-- Data for Name: agent_execution_message_links; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_execution_message_links" ("executionId", "messageId", "direction", "position", "createdAt") FROM stdin;
\.


--
-- Data for Name: agent_files; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_files" ("id", "agentId", "binaryDataId", "fileName", "mimeType", "fileSizeBytes", "createdAt", "updatedAt", "storedAt", "storageKey") FROM stdin;
\.


--
-- Data for Name: agent_message_queue; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_message_queue" ("id", "threadId", "payload", "executionId", "createdAt", "updatedAt", "messageId", "steeringExecutionId", "steeringOrder", "position") FROM stdin;
\.


--
-- Data for Name: agent_plan; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_plan" ("id", "threadId", "revision", "formatVersion", "data", "closedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_plan_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_plan_history" ("planId", "revision", "formatVersion", "data", "closedAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: agent_task_definition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_task_definition" ("id", "agentId", "name", "objective", "cronExpression", "createdAt", "updatedAt", "timezone") FROM stdin;
\.


--
-- Data for Name: agent_task_run_lock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_task_run_lock" ("agentId", "taskId", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agent_task_snapshot; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_task_snapshot" ("versionId", "taskId", "enabled", "name", "objective", "cronExpression", "createdAt", "updatedAt", "timezone") FROM stdin;
\.


--
-- Data for Name: agent_thread_grants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_thread_grants" ("threadId", "grantKey", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: folder; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder" ("id", "name", "parentFolderId", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_entity" ("name", "active", "nodes", "connections", "createdAt", "updatedAt", "settings", "staticData", "pinData", "versionId", "triggerCount", "id", "meta", "parentFolderId", "isArchived", "versionCounter", "description", "activeVersionId", "nodeGroups", "sourceWorkflowId") FROM stdin;
My workflow	f	[]	{}	2026-10-25 15:03:35.252+00	2026-10-27 07:49:12.656+00	{"executionOrder":"v1","binaryMode":"separate"}	\N	{}	c12ba686-498f-4028-8d2d-691f3a34ed1a	0	n1jqwOzlm0darTR5	{"templateCredsSetupCompleted":true}	\N	f	93	\N	\N	[]	\N
\.


--
-- Data for Name: agent_workflow_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agent_workflow_dependency" ("agentId", "workflowId", "createdAt") FROM stdin;
\.


--
-- Data for Name: agents_resources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_resources" ("id", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entries; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entries" ("id", "agentId", "resourceId", "content", "contentHash", "status", "supersededBy", "embeddingModel", "embedding", "metadata", "lastSeenAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_candidates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entry_candidates" ("id", "agentId", "resourceId", "threadId", "sourceMessageId", "runId", "toolCallId", "content", "evidenceText", "kind", "status", "attemptCount", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entry_locks" ("agentId", "resourceId", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_observations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_observations" ("id", "agentId", "observationScopeId", "marker", "text", "parentId", "tokenCount", "status", "supersededBy", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_memory_entry_sources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_memory_entry_sources" ("id", "agentId", "memoryEntryId", "observationId", "threadId", "evidenceHash", "evidenceText", "createdAt", "updatedAt", "candidateId") FROM stdin;
\.


--
-- Data for Name: agents_observation_cursors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_observation_cursors" ("agentId", "observationScopeId", "lastObservedMessageId", "lastObservedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: agents_observation_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."agents_observation_locks" ("agentId", "observationScopeId", "taskKind", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_threads; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_threads" ("id", "resourceId", "title", "metadata", "createdAt", "updatedAt", "projectId") FROM stdin;
ad38cc92-d002-4156-8ad4-de65bbad1ad7	63efb5cb-23b6-43d7-bea6-bd1d7984f46d		{"source":"canvas_action_button","origin":"internal"}	2026-10-26 07:09:40.337+00	2026-10-26 07:09:40.337+00	Z7jFGj3g0zBL4lSy
1081b88e-ffe9-4ccb-86be-935195e70a42	63efb5cb-23b6-43d7-bea6-bd1d7984f46d		{"source":"canvas_action_button","origin":"internal"}	2026-10-27 07:29:31.711+00	2026-10-27 07:29:31.711+00	Z7jFGj3g0zBL4lSy
\.


--
-- Data for Name: ai_builder_temporary_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ai_builder_temporary_workflow" ("workflowId", "threadId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: ai_preference; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."ai_preference" ("id", "content", "userId", "projectId", "createdById", "createdAt", "updatedAt", "source") FROM stdin;
\.


--
-- Data for Name: annotation_tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."annotation_tag_entity" ("id", "name", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_identity" ("userId", "providerId", "providerType", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: auth_provider_sync_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."auth_provider_sync_history" ("id", "providerType", "runMode", "status", "startedAt", "endedAt", "scanned", "created", "updated", "disabled", "error") FROM stdin;
\.


--
-- Data for Name: binary_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."binary_data" ("fileId", "sourceType", "sourceId", "data", "mimeType", "fileName", "fileSize", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: chat_hub_agents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agents" ("id", "name", "description", "systemPrompt", "ownerId", "credentialId", "provider", "model", "createdAt", "updatedAt", "icon", "files", "suggestedPrompts") FROM stdin;
\.


--
-- Data for Name: chat_hub_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_tools" ("id", "name", "type", "typeVersion", "ownerId", "definition", "enabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: chat_hub_agent_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_agent_tools" ("agentId", "toolId") FROM stdin;
\.


--
-- Data for Name: chat_hub_sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_sessions" ("id", "title", "ownerId", "lastMessageAt", "credentialId", "provider", "model", "workflowId", "createdAt", "updatedAt", "agentId", "agentName", "type") FROM stdin;
\.


--
-- Data for Name: execution_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_entity" ("id", "finished", "mode", "retryOf", "retrySuccessId", "startedAt", "stoppedAt", "waitTill", "status", "workflowId", "deletedAt", "createdAt", "storedAt", "tracingContext", "deduplicationKey", "jsonSizeBytes", "workflowVersionId", "binaryDataSizeBytes", "usedPrivateCredentials") FROM stdin;
26	f	manual	\N	\N	2026-10-26 07:08:04.834+00	2026-10-26 07:08:13.315+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:08:03.725+00	db	\N	\N	16101	f7dc48b7-b241-4ab9-a2f3-e4cf42100e1c	0	f
1	t	manual	\N	\N	2026-10-25 15:03:55.098+00	2026-10-25 15:03:59.777+00	\N	success	n1jqwOzlm0darTR5	\N	2026-10-25 15:03:53.78+00	db	\N	\N	2390	b0ca63e9-12b6-48e3-a5c2-2a6442f155be	0	f
25	f	manual	\N	\N	2026-10-26 07:07:43.335+00	2026-10-26 07:07:59.785+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:07:41.927+00	db	\N	\N	16101	f7dc48b7-b241-4ab9-a2f3-e4cf42100e1c	0	f
2	t	manual	\N	\N	2026-10-25 15:04:03.137+00	2026-10-25 15:04:06.237+00	\N	success	n1jqwOzlm0darTR5	\N	2026-10-25 15:04:01.915+00	db	\N	\N	2389	b0ca63e9-12b6-48e3-a5c2-2a6442f155be	0	f
3	t	manual	\N	\N	2026-10-25 15:22:09.146+00	2026-10-25 15:22:13.044+00	\N	success	n1jqwOzlm0darTR5	\N	2026-10-25 15:22:07.57+00	db	\N	\N	6703	a81ef7da-4a7d-44d6-9f4c-fa327203bb4a	0	f
8	t	manual	\N	\N	2026-10-25 15:36:47.209+00	2026-10-25 15:36:56.471+00	\N	success	n1jqwOzlm0darTR5	\N	2026-10-25 15:36:45.487+00	db	\N	\N	6041	3a89153a-3655-444c-8bbd-273dba797837	0	f
27	f	manual	\N	\N	2026-10-26 07:08:07.059+00	2026-10-26 07:08:14.336+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:08:05.138+00	db	\N	\N	16101	f7dc48b7-b241-4ab9-a2f3-e4cf42100e1c	0	f
4	t	manual	\N	\N	2026-10-25 15:22:28.861+00	2026-10-25 15:22:32.529+00	\N	success	n1jqwOzlm0darTR5	\N	2026-10-25 15:22:28.121+00	db	\N	\N	6702	a81ef7da-4a7d-44d6-9f4c-fa327203bb4a	0	f
9	t	manual	\N	\N	2026-10-25 15:36:48.193+00	2026-10-25 15:36:57.304+00	\N	success	n1jqwOzlm0darTR5	\N	2026-10-25 15:36:46.329+00	db	\N	\N	6251	3a89153a-3655-444c-8bbd-273dba797837	0	f
5	f	manual	\N	\N	2026-10-25 15:34:46.515+00	2026-10-25 15:34:50.966+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-25 15:34:45.772+00	db	\N	\N	12867	54ecdb56-a505-43a8-9bb0-5e4a732a6d41	0	f
28	f	manual	\N	\N	2026-10-26 07:08:07.483+00	2026-10-26 07:08:14.967+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:08:05.386+00	db	\N	\N	16102	f7dc48b7-b241-4ab9-a2f3-e4cf42100e1c	0	f
6	t	manual	\N	\N	2026-10-25 15:35:24.539+00	2026-10-25 15:35:31.371+00	\N	success	n1jqwOzlm0darTR5	\N	2026-10-25 15:35:22.872+00	db	\N	\N	6251	54ecdb56-a505-43a8-9bb0-5e4a732a6d41	0	f
14	f	manual	\N	\N	2026-10-26 07:00:05.761+00	2026-10-26 07:00:09.113+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:00:04.711+00	db	\N	\N	12757	3a89153a-3655-444c-8bbd-273dba797837	0	f
30	f	manual	\N	\N	2026-10-26 07:10:06.566+00	2026-10-26 07:10:17.898+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:10:04.602+00	db	\N	\N	15894	6c7336f7-195c-4640-ab51-a612ee10e4f8	0	f
7	t	manual	\N	\N	2026-10-25 15:35:34.931+00	2026-10-25 15:35:37.5+00	\N	success	n1jqwOzlm0darTR5	\N	2026-10-25 15:35:33.845+00	db	\N	\N	6340	54ecdb56-a505-43a8-9bb0-5e4a732a6d41	0	f
29	f	manual	\N	\N	2026-10-26 07:09:18.661+00	2026-10-26 07:09:21.94+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:09:17.953+00	db	\N	\N	15893	6c7336f7-195c-4640-ab51-a612ee10e4f8	0	f
18	f	manual	\N	\N	2026-10-26 07:04:03.261+00	2026-10-26 07:04:07.021+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:04:01.681+00	db	\N	\N	12798	d80bf821-edb3-4bb1-ab9a-4c238c3c4580	0	f
10	t	manual	\N	\N	2026-10-25 15:37:07.122+00	2026-10-25 15:37:13.606+00	\N	success	n1jqwOzlm0darTR5	\N	2026-10-25 15:37:05.767+00	db	\N	\N	6251	3a89153a-3655-444c-8bbd-273dba797837	0	f
11	t	manual	\N	\N	2026-10-25 15:37:08.622+00	2026-10-25 15:37:14.573+00	\N	success	n1jqwOzlm0darTR5	\N	2026-10-25 15:37:06.989+00	db	\N	\N	6253	3a89153a-3655-444c-8bbd-273dba797837	0	f
12	t	manual	\N	\N	2026-10-25 15:37:09.339+00	2026-10-25 15:37:18.167+00	\N	success	n1jqwOzlm0darTR5	\N	2026-10-25 15:37:07.293+00	db	\N	\N	6251	3a89153a-3655-444c-8bbd-273dba797837	0	f
32	t	manual	\N	\N	2026-10-27 06:27:34.591+00	2026-10-27 06:27:39.581+00	\N	success	n1jqwOzlm0darTR5	\N	2026-10-27 06:27:33.758+00	db	\N	\N	6619	f7d1f420-2c93-4919-ae98-253e4bdd3b9c	0	f
15	f	manual	\N	\N	2026-10-26 07:00:54.237+00	2026-10-26 07:00:59.415+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:00:53.491+00	db	\N	\N	12837	6dbc948f-59af-46a3-96d6-83920c502295	0	f
31	t	manual	\N	\N	2026-10-26 07:20:10.528+00	2026-10-26 07:20:15.952+00	\N	success	n1jqwOzlm0darTR5	\N	2026-10-26 07:20:09.811+00	db	\N	\N	6288	c1b55e2b-fbb7-416b-8f43-eb6714fb3691	0	f
13	t	manual	\N	\N	2026-10-25 15:37:49.694+00	2026-10-25 15:37:53.365+00	\N	success	n1jqwOzlm0darTR5	\N	2026-10-25 15:37:48.982+00	db	\N	\N	6341	3a89153a-3655-444c-8bbd-273dba797837	0	f
19	f	manual	\N	\N	2026-10-26 07:04:03.605+00	2026-10-26 07:04:07.718+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:04:02.486+00	db	\N	\N	12798	d80bf821-edb3-4bb1-ab9a-4c238c3c4580	0	f
16	f	manual	\N	\N	2026-10-26 07:01:02.639+00	2026-10-26 07:01:08.721+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:01:01.839+00	db	\N	\N	12758	6dbc948f-59af-46a3-96d6-83920c502295	0	f
17	f	manual	\N	\N	2026-10-26 07:03:51.8+00	2026-10-26 07:03:57.615+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:03:50.633+00	db	\N	\N	12798	d80bf821-edb3-4bb1-ab9a-4c238c3c4580	0	f
20	f	manual	\N	\N	2026-10-26 07:04:49.876+00	2026-10-26 07:04:52.91+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:04:49.169+00	db	\N	\N	16011	fd70970e-ff4e-443f-abe1-b95c77d70388	0	f
22	f	manual	\N	\N	2026-10-26 07:06:05.248+00	2026-10-26 07:06:14.796+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:06:03.885+00	db	\N	\N	16172	a960cc2b-1b8b-491d-bbee-bff1f8e4f80c	0	f
21	f	manual	\N	\N	2026-10-26 07:05:48.354+00	2026-10-26 07:05:55.477+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:05:47.334+00	db	\N	\N	16172	a960cc2b-1b8b-491d-bbee-bff1f8e4f80c	0	f
23	f	manual	\N	\N	2026-10-26 07:06:05.984+00	2026-10-26 07:06:15.039+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:06:04.513+00	db	\N	\N	16172	a960cc2b-1b8b-491d-bbee-bff1f8e4f80c	0	f
24	f	manual	\N	\N	2026-10-26 07:06:20.787+00	2026-10-26 07:06:28.458+00	\N	error	n1jqwOzlm0darTR5	\N	2026-10-26 07:06:19.425+00	db	\N	\N	16172	a960cc2b-1b8b-491d-bbee-bff1f8e4f80c	0	f
\.


--
-- Data for Name: chat_hub_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_messages" ("id", "sessionId", "previousMessageId", "revisionOfMessageId", "retryOfMessageId", "type", "name", "content", "provider", "model", "workflowId", "executionId", "createdAt", "updatedAt", "agentId", "status", "attachments") FROM stdin;
\.


--
-- Data for Name: chat_hub_session_tools; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."chat_hub_session_tools" ("sessionId", "toolId") FROM stdin;
\.


--
-- Data for Name: credential_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."credential_dependency" ("id", "credentialId", "dependencyType", "dependencyId", "createdAt") FROM stdin;
\.


--
-- Data for Name: data_table; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table" ("id", "name", "projectId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: data_table_column; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."data_table_column" ("id", "name", "type", "index", "dataTableId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: deployment_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."deployment_key" ("id", "type", "value", "algorithm", "status", "createdAt", "updatedAt") FROM stdin;
8q3IFL5JIn8unMVS	instance.id	849ac7cafa2851ef642b3bd05216dd3fa10b3867edafeef782f96dfa3e413f30	\N	active	2026-10-25 14:20:38.716+00	2026-10-25 14:20:38.716+00
2vt5UWL48hOE0tAa	signing.hmac	AdkvLGIMiAoG+0ZuuQp9A0rcfi92WBtYifCloGMapdfKwa41iqKO1Fp0pJ/aMYAMghIxJwsSudrAxKGVBy+tYygHf0NXq+gJtHoL0cgxem97rbNUwGQpNh/jo969IMy56YD992JjXsoJy/hetpKN5YE=	aes-256-gcm	active	2026-10-25 14:20:39.646+00	2026-10-25 14:20:39.646+00
K2v3HLUgE6C1SdUd	data_encryption	AUENnu3EqTAssgtjCqdctt37pP6TxqQgXYztUiBVV9rzlfYIgsA+Mj7AD3ofHmqHGE4vgOu2u0F+T5V8nHjtqk+lMsSEDApiF6TxHpWjU9RWbn09L0iRinjeNsRzff+6PhG7Pkv31X6AKwULrLuonBY=	aes-256-cbc	inactive	2026-10-25 14:20:40.893+00	2026-10-25 14:20:40.893+00
qegC4sz1NzMNHPMG	data_encryption	ATKMXGtosaembYgPzUwCpuZyC5dCOlQx0LEh3B99RvoO3y7mqtQ8F9pPZSi/jrcvAMWH8LnO/S7rX3jgtySjyxEOb9LiVvWBLhzy5ZVjEBWlmjV9hzumpvCNAVE3j9a06fuTee8UgXgyOKsxL46yIls=	aes-256-gcm	active	2026-10-25 14:20:41.925+00	2026-10-25 14:20:41.925+00
ZB428LlLF5K0Qdgm	signing.jwt	AeOUHJrIaaIX2LYL801RgUDfeutxibBQCrslp2XkgGO+mHLjaqp/D5FaTWim6SbVO0+8KvlNvEGYr1mNSc8fVUGMGoLmJ0QdYmhDPnkVdGJvK4kpuTRbWSyOrYXc7MJbtA0o1pFqj8n7+9AJCPi8KCY=	aes-256-gcm	active	2026-10-25 14:20:50.22+00	2026-10-25 14:20:50.22+00
gNhIX0gfjwPIWU1s	signing.binary_data	Ad1vwaBcIhB/MkJcsrUJhCl0nueFEx0ov1n32IMycpP2ra2ZrYes3qQsJvypLk3dv2w9QJBFxfrj0pxoXAmEaSMrwM9gkVtywYWbiqvH/EJguiTfb8ixsiVwFWqq	aes-256-gcm	active	2026-10-25 14:20:51.216+00	2026-10-25 14:20:51.216+00
bnrEP3mphFnpXVx5	oauth-server.signing-key	Af6PZAEpOKbSG6Kmd75sMJmb9WtCMQLWgwgnTrRLqhvRuVIs7v/TtakwnWWo5bIUwc2iJLKOBBnESZXWKFlef9ZW5BJqbcWFNaQiU2RDXI++w4tT/YKiDAkWl5YNFNZJZZ9S3WRcJcaKJgRkFLDC9yLuL5EXPwF1X4IPSYUCLp3sSuU6jLZ+Ev7PX8Ji7ds0oQyzQoHG1ZcVFBcZTnLh5odUzQ5wLTq0DElmzEfPIeb56gJt86y3tiEtR3x1MTFhiGaveXlQ0kCC5GL5GgGeJrLq9jVr08w/OOTjz7OBqanLrnGmnshcNxn0v39W+C72htCTUjcvykIQH529bhQOUPNpHWPg9ySaG/A1svsr7MUc6SUh	ES256	active	2026-10-25 14:22:07.826+00	2026-10-25 14:22:07.826+00
QX1H9imc5VX4nznF	jwe.private-key	AR4wjjX6EUWqsE0xi6NyNTPAfpJYwbn3pHaKwMQ+VGnLjL3HRjaDxuAzQCKdSbPWY7fgleC3m7oRRnlbMOUT4odmejhZI4i09mo747XF4ROyr0lD8b8x3NbwMIkemN6uf0qpg/Lsah3nJLr6b0SYhoAB7f9E/bj5zL0aLiyeYMryEx6LmnhZLs9SKuaf5jP3NhyQc0AsWAdHOuteaHrV7Wik60akaZVI28M7gOFkPHCpoV2wRPx21gu/YaMZFvaZScPKxRKeBj6iK2vFTet9OxWs/NSm8o3k5IDP8kUO9C5edLtBJLFcCRErYSF3DGEwg8qSJ4xnQ+Udv/Q3HBE7mC2nnNtFu1kEs+N7ClQ1gcpXH5USDMRVqJ6q85L70qJBiHi131CS3CD5grmUETTtJAC80dnfX8QnTihHQKCpE+3EO3osQfVOcw5orHgu4fFaNbeNG/dHTPKK/ApVnFi0mNAGJc5roCARMMG+imUvUJbhVrZN21Y/yyxN/3MMtf0OClpzFLcFobqlZC8XuLi0gFOcAlXeVRRfl4pHTnviwhZk1FDmYjxkvhO0ic9YCH8nxtomreDGOg1ub8ozah2fJDunUePljnpatO7Ssw8lQN7NPPMX3/w84Uf8N0K9Yza+k9o9PzthYEmJHO0hi+40TDl+tDUNzLlf28cF4Wc6bCZFjBprDrSyUr7F2hYTY0pbkHBlX1C2kMw+9kZKSyjc9mcmQdbJbmxmLM9luisnTKkoKikQ9jKgZNsS9wJwcoxFgtG0HAKGJG4T3rOhMTECEO/ratTnZBl2VKfX+WQPljZe2pff6NpG6OJd2rWHZJTIwLI0qVyOaxV5FEiXlBSt9cRKsnWHBRwemeJvBt3w1vJJt70xU8bg/XaA9OFwcN9qSpR9leN6WeYFgqENBlq7m3ihFRdI6PrGEEmhsvNwOiXyc03SZ3EcBiWCpznXe7ERjIm6dPypdplLS32H4fFrdYoSZdL5fBVH/t66cF4+kJk9hRyzcM4q5H456WXkIZHZtyBTDpy85j/okicuJwMD001d4qLz9+UE0NfZt7C/W33eUjJkkHVSItE/zujFpk2w+cA/lQODH1YP7Pm7YNfbn7lnMNPm+OLB8nxuxrMAENfCswQ7E2a4NfQlMdym20mYyQH2us36K1XPUtvbGRZsCN9SLnYWPhjoe1UQRNO33micWk7ZLPD3mMLZu+WidUfSP03ExXF0OOTarvSIkuzKiq4VWQpOB1bQfhny4TkG/SwJf3osGYKOyRZTQRPa+VnC+sPS1Hns/WuLx0c/2GKEl/P6+Cchu3Z4bJT/yJyB+fLrjCNZE4fA3tyeNmC1RgQILkAZ9mxxjTK8GJmaYBnDORWltQGySRGakJQ5QDI6cQkENu+WuHlQPoVYTOAzO3JDMjE+eaD0J5HNTo06vIRML9WuPYZ/jsnlbzCl7nZoq9iVUWxaPGYElhPxV3+c4NsXLHMbmJCcUkSoFFI/04JdCEutewL/et/pIM66FbOwVBCISD/G1rsMSvKJpxgse3+eZQJc0uSnYk0OJdOsLfIfv7H0CP6rfyBBRPRSMTmjdWMXncAPz6Hiyt2fgqluqJdAK/DXCyAvmmni/6dyccRA8LtQXsrgQeCNJpxPyr24DpsamTKBEmnhgSxbtfSWnkxphfygz4fyvEHM/lwdU6eQzIP6vKkmkFGu9yw0IyVTr9IXIja02agl1uWJKFHX2WOTeSKyOE2ufs3nxNXwpATEjM+3SJYCKiio/ZF51F1dglDtuPu/XLi2cQeqbvz5oGg93MDTr09iGnKna4KvXfznoBo+6ck/YXqqZRZGZ8KNmHTMx+apGZdl1aUWrAt8PAH0KxhVvZUF9SJjC3OalJuCq2k7ayn7QuMVWgrQ3qN13WQjn2H6OUVVQ+VcVSDpzw6/qie6aK/eDl/2FXGkOHtWulS942H1cgSdxlx0IE9viLKb4KZONThe6dFLRfofJoonqpPnMiw8AgxXP+ZAyZEzu6MrrcViIRUqnPuZQRGNFWNCii38VICR2tzWCNi/NwCO1LxVM10pWdWo34R0i9lYZJLMhpiQmfJm36X/hcCS4lLy/e13DTYfzx7djClgikACzseEQ+LL2ouZgFs/B4OMo5BY0YEFbY1nZzxQRj1Sjp/IATPy7Zt3F/WRYAh334UaHXR3hxwEclOw36SdLwLsOQ0KKZ7OmC9EtZPPSeHy6NuYXquCK+DIqiHTDGy9xEx9748YCFM1yZHxPkAcqZqSmUukTMpjhd+/ojiMchHtu/zevhrK6BlAKRNS	RSA-OAEP-256	active	2026-10-25 14:22:19.426+00	2026-10-25 14:22:19.426+00
\.


--
-- Data for Name: dynamic_credential_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_entry" ("credential_id", "subject_id", "resolver_id", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: dynamic_credential_user_entry; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."dynamic_credential_user_entry" ("credentialId", "userId", "resolverId", "data", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: evaluation_config; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."evaluation_config" ("id", "workflowId", "name", "status", "invalidReason", "datasetSource", "datasetRef", "startNodeName", "endNodeName", "metrics", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: evaluation_collection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."evaluation_collection" ("id", "name", "description", "workflowId", "evaluationConfigId", "createdById", "insightsCache", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: event_destinations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."event_destinations" ("id", "destination", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotations" ("id", "executionId", "vote", "note", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: execution_annotation_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_annotation_tags" ("annotationId", "tagId") FROM stdin;
\.


--
-- Data for Name: execution_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_data" ("executionId", "workflowData", "data", "workflowVersionId") FROM stdin;
1	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]},"misfirePolicy":"skip","misfireGraceSeconds":0,"skipDurableScheduler":false},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"b3a2b549-48a8-4bd1-8337-ea2865f85651","name":"Schedule Trigger"}],"connections":{},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"f08ead88179f6962eac78e22f2faef62487975d5653e960d17f55d78944574cf",{"nodeName":"9","mode":"16"},["9"],{"Schedule Trigger":"17"},{},"Schedule Trigger",{},[],{},{},{},{"version":1,"establishedAt":1792940638930,"source":"18","triggerNode":"19","redaction":"20","credentials":"21"},"inclusive",["22"],"manual",{"name":"9","type":"23"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1/wZ33as3VkFsCCbxs3k7YFkwvvUR7kF9C8EdrHgpGn6WfpbGxyQgUENjgqNHvk5tHUxwbRbil6yRJDpqLP8OjwUnDV21qG5EhMU1SCvbc4YxE6mFSGxOmqJRKnD7Teagy40eBwWrY6WEMuDYVMkkq5CYRAFkvme3jpm1l9TCYonMqZoKKhTtlj34hEQ+j1S78pwW0F+nMeYxRr7Dcmlvf+bi/HSoMFIk57WL5KbOCAX/8+wdczsrNj1bkv+dZ4Osj79Z2WfxbAY1lWyTAC5r1SWTN5y0Vov8W0h8gbQ1bz6SjOH97DE5rLvyN92YyjquIpFjujNBFpNl1Fr0vP60blYgNCpyvh04I5pqPH6lulChQfu35pAwUxSZuPFrA56VfNf9jlTalffElXI3Q0D3S6GxRRLdkQdkzZ+XVn2QbuBys6p6+t0bBMCOtLYLXvzz+gFOm4dgl3ao8ueu2eeebNK6jgpQaT1pWvfmmPcWbwx7/LoOSzg+AUNews0lLZTQyL9V4dQXk4pyAlE+Z7K1oN9ohskHL3yKFWwxr/7NGWnJA1CICWcB2V",{"startTime":1792940639706,"executionIndex":0,"source":"24","hints":"25","executionTime":69,"executionStatus":"26","data":"27"},"n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"28"},["29"],["30"],{"json":"31","pairedItem":"32"},{"timestamp":"33","Readable date":"34","Readable time":"35","Day of week":"36","Year":"37","Month":"38","Day of month":"39","Hour":"40","Minute":"41","Second":"42","Timezone":"43"},{"item":0},"2026-10-25T11:03:59.770-04:00","October 25th 2026, 11:03:59 am","11:03:59 am","Sunday","2026","October","25","11","03","59","America/New_York (UTC-04:00)"]	b0ca63e9-12b6-48e3-a5c2-2a6442f155be
2	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]},"misfirePolicy":"skip","misfireGraceSeconds":0,"skipDurableScheduler":false},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[0,0],"id":"b3a2b549-48a8-4bd1-8337-ea2865f85651","name":"Schedule Trigger"}],"connections":{},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"f135a9ba562cbf6b683bd590cdfcd94dea553304dd1bf1cb79e3a2714a8fc484",{"nodeName":"9","mode":"16"},["9"],{"Schedule Trigger":"17"},{},"Schedule Trigger",{},[],{},{},{},{"version":1,"establishedAt":1792940645142,"source":"18","triggerNode":"19","redaction":"20","credentials":"21"},"inclusive",["22"],"manual",{"name":"9","type":"23"},{"version":2,"production":false,"manual":false},"U2FsdGVkX18swAm1a/mLR+m+7NwmWkiG2f2T5rpMcuBbrQ7QvNVDq1OcczykyWPOnZeiuyvmM22JR7ZICYQjfDzXMiksXkO//b2fPJ1qkpTZGgJ3QSsplSrihBGifWK1YDiFC229tC9Yny3yVAaFioA+Zho5IdWDFd4QHv6+8EWIECKyX4QkGEjT3f/ZywMzplCdXX92aFsiKySTeOTvJbcjAqpc8Ug6r0C2rCCRXAnxa+OOSbdiyFjCeDLNGpflccPoUSr+vrC51P+u2KKZgIwbtIeWtdLesjNjQYW/buWUOdOMISu44ovj5Ar3xOLG5WDBlsJ+oUBTZ+gqoGzQh5aV8mum4zmMXt7Fcsfo0X9k+xIEBXZiIRtY51OOm7Ltk0LPmmzr2I/Smla4JBH39UpHTG9Ddh9PCMVdvVPHqNepi4QNepin4VvVU6TV4WtvIAnLHkEH2K8e319PYgjhRpefAbVth7p9Tej1l9C8n22Fzz7v6EqT4LMgozgdZHr3yZOs4nQkJ5dVp+g21hc6QR3sszslceRYLyVyDhxMuhCX1/tMOvuure4xOi+brECs",{"startTime":1792940646231,"executionIndex":0,"source":"24","hints":"25","executionTime":2,"executionStatus":"26","data":"27"},"n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"28"},["29"],["30"],{"json":"31","pairedItem":"32"},{"timestamp":"33","Readable date":"34","Readable time":"35","Day of week":"36","Year":"37","Month":"38","Day of month":"39","Hour":"40","Minute":"41","Second":"42","Timezone":"43"},{"item":0},"2026-10-25T11:04:06.233-04:00","October 25th 2026, 11:04:06 am","11:04:06 am","Sunday","2026","October","25","11","04","06","America/New_York (UTC-04:00)"]	b0ca63e9-12b6-48e3-a5c2-2a6442f155be
3	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]},"misfirePolicy":"skip","misfireGraceSeconds":0,"skipDurableScheduler":false},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[-352,-656],"id":"b3a2b549-48a8-4bd1-8337-ea2865f85651","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Table for Client's Details","Description":"It will be used to store Client Data"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-128,-656],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"12362273ca4276388de3e737377e401bf24e1171991e00ea5bdeb606c842ca42",{"nodeName":"9","mode":"16"},["17","9"],{"Schedule Trigger":"18","Create a record":"19"},{},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1792941731070,"source":"20","triggerNode":"21","redaction":"22","credentials":"23"},"inclusive","Schedule Trigger",["24"],["25"],"manual",{"name":"9","type":"26"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1/2RMSrIVqK9DYFw3W6RPa/n2x8WOEf6PEaS2AE/hHwcLKvcishlRpnQPaiwz8bPFOZgzz6yfqxYHgblOIjhFjhJK5jbxRia0E0csvY1cLHYS2dA+wFCBQUAY10F3N7sXh+NMXGJ52fpMtfr/hmdMDWwcHUrfSzV1J+4tuUVI5ie/sbF07wr1yV6Rqadz7UVNuBAfTdRqAGhuGM3jb2O8R3+bAgySos8XAe2Fx8SVwzJpLwSo669/C+dC+S9+9hOoYgmlOTCbOyctSktUAWSjFTwRohnxlppF/O3gMlQBBjxUJ3hH8ym0gGI7xVAPMJ8serY49VeV4ljG/9et79QMtvWlaQCAR7DYbWrA4BaqAY6a7YkJR2lFtnBb3gFfI2usX6QmHGLf60rM9W2yT9Y/NFZcHMFSsjpRzEpaWcxYKln95UdJkHAp7yRkKpIo8cbjxyUFqWt+Sx4uuJ6bAhPi5CzGvrThjFAWZhZmUT5R0Xw0ot0T1mfxKymJ56yHBf036PpYi4OHThk4928G2X5SCq574MoNgOSfitZgQxL3+t/qFxf5K7HTqu",{"startTime":1792940639706,"executionIndex":0,"source":"27","hints":"28","executionTime":69,"executionStatus":"29","data":"30"},{"startTime":1792941731974,"executionIndex":1,"source":"31","hints":"32","executionTime":1068,"executionStatus":"29","data":"33"},"n8n-nodes-base.airtable",[],[],"success",{"main":"34"},["35"],[],{"main":"36"},["37"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["38"],["39"],["40"],{"json":"41","pairedItem":"42"},{"json":"43","pairedItem":"44"},{"timestamp":"45","Readable date":"46","Readable time":"47","Day of week":"48","Year":"49","Month":"50","Day of month":"51","Hour":"52","Minute":"53","Second":"54","Timezone":"55"},{"item":0},{"id":"56","createdTime":"57","fields":"58"},{"item":0},"2026-10-25T11:03:59.770-04:00","October 25th 2026, 11:03:59 am","11:03:59 am","Sunday","2026","October","25","11","03","59","America/New_York (UTC-04:00)","recsqCZ0w0i1546Vy","2026-10-25T15:22:13.000Z",{"Total Milestones":0,"Overdue Milestones":0,"Completed Milestones":0,"Description":"59","Open Hours Remaining":0,"Progress (%)":0,"Project Name":"60"},"It will be used to store Client Data","Create Table for Client's Details"]	a81ef7da-4a7d-44d6-9f4c-fa327203bb4a
10	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"=","Start Date":"=","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","pinData":"6","lastNodeExecuted":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"f592a3e53d9b43e4dd0575bd30adec0a02a11b4a9579b8a815c33b9409acb4b5",{"When clicking ‘Execute workflow’":"14","Create a record":"15"},{"Create a record":"16"},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1792942630337,"source":"17","triggerNode":"18","redaction":"19","credentials":"20"},["21"],["22"],["23"],"manual",{"name":"24","type":"25"},{"version":2,"production":false,"manual":false},"U2FsdGVkX19LomdBS9LOFKQ4rws5fDneDa1Xwxv7Oo+zDtXla+N7sm1F5of5dkGIiRrSM6aKAJc5t4X+5kUiNAohgU9YPU1cVATqjOGsvLgQlI+pJWY5UcHXjgnHiPmU8wtakWTNLGlStlUWCb46fCXaDcjZjFiPMn9GhSJpCIToHVvHZa7vba89d02xpswIu/SLWUKOT6RPcNIJcu7qYglcaJAtWr0XYxPFnGHj1zEqmCpesrDZ/tqzdUWQtlgK4DBxBI4XdC2CsqtcdkLckzgWg7G8IuS70LQDnZO4jfrnxErEPXO8raJiAZ3+EPmrSRBQNACuSO0zMd5jvtPLhZ/EmR3RsCfU2tAp7qMfAKaD1wbvRyfI2hC1R0jk8lf0nfce7pmfq71JXrxQJQXSCwPvAqIXr2cz+vgvwEyFAamJc8uIGOsoRhVlRSsKmpopjHUlf+3vKECwm/9VZqfQAWqwrXLTDFKPhDvdUjzMbKITgP492++39RPE6wHJkdIv2oia3t68JJHUXvd7YlP5um0Lk/wnBV9rVb2L+6yfl4e6SK19P1VkdTb373quVmiT",{"startTime":1792942633602,"executionIndex":0,"source":"26","hints":"27","executionTime":2,"executionStatus":"28","data":"29"},{"startTime":1792942633605,"executionIndex":1,"source":"30","hints":"31","executionTime":0,"executionStatus":"28","data":"32"},{"json":"33","pairedItem":"34"},"When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger",[],[],"success",{"main":"35"},["36"],[],{"main":"37"},{"id":"38","createdTime":"39","fields":"40"},{"item":0},["41"],{"previousNode":"24","previousNodeOutput":0,"previousNodeRun":0},["16"],"rec4ys1CUcchxILFb","2026-10-25T15:22:32.000Z",{"Total Milestones":0,"Overdue Milestones":0,"Completed Milestones":0,"Description":"42","Open Hours Remaining":0,"Progress (%)":0,"Project Name":"43"},["44"],"It will be used to store Client Data","Create Table for Client's Details",{"json":"45","pairedItem":"46"},{},{"item":0}]	3a89153a-3655-444c-8bbd-273dba797837
12	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"=","Start Date":"=","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","pinData":"6","lastNodeExecuted":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"a6ac94cc87d3dc986524d55b64f29c75d8fff12a9b194505bf1144b12afb7445",{"When clicking ‘Execute workflow’":"14","Create a record":"15"},{"Create a record":"16"},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1792942632681,"source":"17","triggerNode":"18","redaction":"19","credentials":"20"},["21"],["22"],["23"],"manual",{"name":"24","type":"25"},{"version":2,"production":false,"manual":false},"U2FsdGVkX18rptKCrKQsAY57AMDzYSRMZBo1XUXn7O9iAss3T+Rw1k/HLQbBTQKEu0GONyFOBKmyfFOtEtPJvMyMYr+f7nRv4VfiJ3J9GBRlpnbt1pWd8ajlWdufNHtLUk3aGQz9JATzR/bAuSahXGk+mTHqDUs3e4hYoFcp4yH/YuC4fwqSMGJlh46A8VUgNcX2STr4zBCahopYCUp11WVc4O68R0ZCFw6WTRHgiKXeegVD7jvVfScOQZB9+OyPWunPPsctCfozUFPE6hX/bQvRJFF7iTdu6Op084RrF7HaSP3s1TzaspabsPcmump+09CQQFf1k1EjIOGbhw8i0rdka+ycAI9nhJ6hv7xY8LL3Ju3oB9IsE04c1dR+IbFlkJ7GE60RSd/2bSnAmjbVtfDftgdSoEK38++yHKdAkV61rzxw2EEzOCTSi7sTFUgKrd8JyqSSdWLkpC3+biqx407UrzWyOrqe9Z/7t3iVazkYP6bjOFGZw21NdKwvcgvC45PH7gP2Vji3ESsjRr8Hp2cpGNJ7LlprOUXjgigr3i3SZjlG8V1HWwYESrqD1na/",{"startTime":1792942638077,"executionIndex":0,"source":"26","hints":"27","executionTime":0,"executionStatus":"28","data":"29"},{"startTime":1792942638166,"executionIndex":1,"source":"30","hints":"31","executionTime":0,"executionStatus":"28","data":"32"},{"json":"33","pairedItem":"34"},"When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger",[],[],"success",{"main":"35"},["36"],[],{"main":"37"},{"id":"38","createdTime":"39","fields":"40"},{"item":0},["41"],{"previousNode":"24","previousNodeOutput":0,"previousNodeRun":0},["16"],"rec4ys1CUcchxILFb","2026-10-25T15:22:32.000Z",{"Total Milestones":0,"Overdue Milestones":0,"Completed Milestones":0,"Description":"42","Open Hours Remaining":0,"Progress (%)":0,"Project Name":"43"},["44"],"It will be used to store Client Data","Create Table for Client's Details",{"json":"45","pairedItem":"46"},{},{"item":0}]	3a89153a-3655-444c-8bbd-273dba797837
4	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]},"misfirePolicy":"skip","misfireGraceSeconds":0,"skipDurableScheduler":false},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[-352,-656],"id":"b3a2b549-48a8-4bd1-8337-ea2865f85651","name":"Schedule Trigger"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Table for Client's Details","Description":"It will be used to store Client Data"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-128,-656],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"d0e0bf8e1b57ac2cb4cb367be708c1dd45232452cf128ba6d89e0cc8f75bb702",{"nodeName":"9","mode":"16"},["17","9"],{"Schedule Trigger":"18","Create a record":"19"},{},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1792941750118,"source":"20","triggerNode":"21","redaction":"22","credentials":"23"},"inclusive","Schedule Trigger",["24"],["25"],"manual",{"name":"9","type":"26"},{"version":2,"production":false,"manual":false},"U2FsdGVkX19hvyv67mk9WUndgx4nL9BNRqQssfEX330OfTr7eX8EebOd/TIKbBWkxeZlU1cbf9cJ9PiswcisupRL8NKHusgxBV+O14WJ+XF4Coir7B70N2qXvtVaUOLNhug/lvS5I9W5hgG2H+YCl4kBGVzAexVg9Qg2tEEQhwmm8+iwzsTE3Bm6GBLuT6xHDDAPWMVx0BRx9H6l40nAW6/R6xmIkJQD2wv4rpQTLMIsCWJCvwj7B4XdwoSHOANJyIw6G+QAGqZXomfBMHCP49JO5/LF3hKys6/mN1R5OL7YP0NkJbj80Ke9+nPGq6xqvh/SlmQ6326FLkPysqLJfUn+94+KPmv+uec/0WvXdGYAqb6PA2tgrfmIedof/dLQkOteceLW1fAuztx7b+LHTAmEGXHaJxd1zsHEBi/TLkQP5MCxUPKzP+62IAB/rjqFX2B38gvT6GMrlZXIJBii7f48LsC1KfaUaEaHnt9HBP+dF/wETdXjWQyZsxDoZ+MaXszjCpDgXbvS+qVIcBOBig/FmF3SqbwN7OT2VNpkPfXEPea8VjvQ1gI3Bb2HWyRQ",{"startTime":1792940639706,"executionIndex":0,"source":"27","hints":"28","executionTime":69,"executionStatus":"29","data":"30"},{"startTime":1792941751703,"executionIndex":1,"source":"31","hints":"32","executionTime":825,"executionStatus":"29","data":"33"},"n8n-nodes-base.airtable",[],[],"success",{"main":"34"},["35"],[],{"main":"36"},["37"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["38"],["39"],["40"],{"json":"41","pairedItem":"42"},{"json":"43","pairedItem":"44"},{"timestamp":"45","Readable date":"46","Readable time":"47","Day of week":"48","Year":"49","Month":"50","Day of month":"51","Hour":"52","Minute":"53","Second":"54","Timezone":"55"},{"item":0},{"id":"56","createdTime":"57","fields":"58"},{"item":0},"2026-10-25T11:03:59.770-04:00","October 25th 2026, 11:03:59 am","11:03:59 am","Sunday","2026","October","25","11","03","59","America/New_York (UTC-04:00)","rec4ys1CUcchxILFb","2026-10-25T15:22:32.000Z",{"Total Milestones":0,"Overdue Milestones":0,"Completed Milestones":0,"Description":"59","Open Hours Remaining":0,"Progress (%)":0,"Project Name":"60"},"It will be used to store Client Data","Create Table for Client's Details"]	a81ef7da-4a7d-44d6-9f4c-fa327203bb4a
5	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"=","Start Date":"=","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-448,-1392],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-608,-1392],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"d3ad8b11fd4913817288819b3c151466b80f0b1a0fc821edc280d8d324c71dbc",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","shouldReport":false,"description":"20","tags":"21","timestamp":1792942489280,"context":"22","functionality":"23","name":"24","message":"25","stack":"26"},{"When clicking ‘Execute workflow’":"27","Create a record":"28"},{},"Create a record",{},["29"],{},{},{},{"version":1,"establishedAt":1792942488396,"source":"30","triggerNode":"31","redaction":"32","credentials":"33"},"inclusive","When clicking ‘Execute workflow’","warning","'Target Launch Date' expects a dateTime but we got '' <br/><br/> Consider using <a href=\\"https://moment.github.io/luxon/api-docs/index.html#datetimefromformat\\" target=\\"_blank\\"><code>DateTime.fromFormat</code></a> to work with custom date formats.",{},{"runIndex":0,"itemIndex":0,"nodeCause":"10"},"regular","ExpressionError","Invalid input for 'Target Launch Date' [item 0]","ExpressionError: Invalid input for 'Target Launch Date' [item 0]\\n    at validateValueAgainstSchema (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/validate-value-against-schema.ts:242:9)\\n    at ExecuteContext._getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/node-execution-context.ts:610:42)\\n    at ExecuteContext.getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/execute-context.ts:120:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:75:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:67)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:23)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:31)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:22)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:38\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)",["34"],["35"],{"node":"36","data":"37","source":"38"},"manual",{"name":"18","type":"39"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1+xdJf5EW9IYVITkuaGj6ZKnoURwtRmm0c1JHkizzQvs25EWG7splB9sdzCs4i5T5ldHZI7AuC6Tr0Q0nxfgKL5hkRUnOKUiecAdJKEMUL51lJgquRehI5LQyrD1gnIEmPcHyCYZZyaXsR4CLHGmIoCBhR/ZoFzgwFtqjqPoYkWWZ3A8D+xweIl07zWGxfCrnERu1aS4TigPfBFCZLkADZJhyenRDht/2o7T/y3lg0b8BI3/CLW9azcvbWFxqY4M3BcGSD+3tkjI9jPIv0+2WMILeAOS+oNNwdQmLTI8n4t2lyU0BEGnG1/wUiL1rOoDrxFjYAsGuGOSbmsbAqAFYd0QkpQ8B7ve/87aM6KP9b5K7OhA7pUMgYmKERSHfhiVHuAREeRGyasAoLf20uwNHkTCgcxL6FwUqDpZv+FKMX6vyOlLSM+QpNNfz5ipvCX32Z6K5WWd6gTbCFE54H+KHU4lh1SLvDXaKimd6axURmqcEfaTSQahoWEpJ67HNnDrpSl/xZtMPuldL947v9skx4/4CXC0oLx0hYX6iEUQAz7WG9V33tCbldZ",{"startTime":1792942489198,"executionIndex":0,"source":"40","hints":"41","executionTime":2,"executionStatus":"42","data":"43"},{"startTime":1792942489202,"executionIndex":1,"source":"44","hints":"45","executionTime":1569,"executionStatus":"46","error":"47"},{"parameters":"48","type":"49","typeVersion":2.2,"position":"50","id":"51","name":"10","credentials":"52"},{"main":"53"},{"main":"44"},"n8n-nodes-base.manualTrigger",[],[],"success",{"main":"54"},["55"],[],"error",{"level":"19","shouldReport":false,"description":"20","tags":"21","timestamp":1792942489280,"context":"22","functionality":"23","name":"24","message":"25","stack":"26"},{"authentication":"56","resource":"57","operation":"58","base":"59","table":"60","columns":"61","options":"62"},"n8n-nodes-base.airtable",[-448,-1392],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"63"},["64"],["65"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},"airtableTokenApi","record","create",{"__rl":true,"value":"66","mode":"67","cachedResultName":"68","cachedResultUrl":"69"},{"__rl":true,"value":"70","mode":"67","cachedResultName":"71","cachedResultUrl":"72"},{"mappingMode":"73","value":"74","matchingColumns":"75","schema":"76","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"77","name":"78"},["79"],["80"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"81","Target Launch Date":"82","Start Date":"82","Description":"83"},[],["84","85","86","87","88","89","90","91","92","93","94","95","96"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",{"json":"97","pairedItem":"98"},{"json":"97","pairedItem":"99"},"Create Module for n8n Course","=","for everyone who want to familiarize the n8n",{"id":"100","displayName":"100","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"101","readOnly":false,"removed":false},{"id":"102","displayName":"102","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"101","readOnly":false,"removed":false},{"id":"103","displayName":"103","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"104","options":"105","readOnly":false,"removed":false},{"id":"106","displayName":"106","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"104","options":"107","readOnly":false,"removed":false},{"id":"108","displayName":"108","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"109","readOnly":false,"removed":false},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"109","readOnly":false,"removed":false},{"id":"111","displayName":"111","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"112","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","readOnly":false,"removed":false},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"101","readOnly":true,"removed":true},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"101","readOnly":true,"removed":true},{"id":"117","displayName":"117","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"101","readOnly":true,"removed":true},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"101","readOnly":true,"removed":true},{"id":"119","displayName":"119","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"101","readOnly":true,"removed":true},{},{"item":0},{"item":0},"Project Name","string","Description","Status","options",["120","121","122","123","124"],"Priority",["125","126","127"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"name":"128","value":"128"},{"name":"129","value":"129"},{"name":"130","value":"130"},{"name":"131","value":"131"},{"name":"132","value":"132"},{"name":"133","value":"133"},{"name":"134","value":"134"},{"name":"135","value":"135"},"Planning","In Progress","At Risk","On Hold","Completed","High","Medium","Low"]	54ecdb56-a505-43a8-9bb0-5e4a732a6d41
6	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"=","Start Date":"=","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-448,-1392],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-608,-1392],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","pinData":"6","lastNodeExecuted":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"25fc4ec2e58fa16f9968d3bb0355b3c43b21853029180e8f0365eef40a5f7662",{"When clicking ‘Execute workflow’":"14","Create a record":"15"},{"Create a record":"16"},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1792942526726,"source":"17","triggerNode":"18","redaction":"19","credentials":"20"},["21"],["22"],["23"],"manual",{"name":"24","type":"25"},{"version":2,"production":false,"manual":false},"U2FsdGVkX19Dr+ScXtl7jQ5Za0+o3ByPIQAdmEDqdBq3YixkFapycpWQhb0KgaSSuKxZ/cxnT8O93xCHbEKDRs/jiCrb0ht39GFjd2i0/1gpiPVgdRI7l13rws2JVtGMRmxJmRf9SiX78OLCWjANjyiHvVckl3HJkpvK9QrjJkTrBPlHGBpX+D+U9/Rpp/rwO7KAWh09H3oMSjZ4lxIwdo9Qf7E5suUgU/zECIfIDI8WlfOcdJICVbx0BZrMe13/4FOiM3r0ekpv9O18Gcy+QZHF4Cusg8I65fIiqEAIXN74IJMz0gYA+/OdnjSUOBo6+RWwqzsbolWdnV/P71HIBsi9+Q/dBu2JP6LMrttHlecjXXpz3M25TFsolEhMpARzZdl3UqKQshfw01X+wVBgW4LSrn75lHn7NrZoiCzg+P34QiKio8kI3EBGW0spI7gBP2ItcJXoCqfoOCOLayfPV1eFh6ojZsbyeZQum0l9BHumOsGRky9oQ/N2yspIko3I1wA9xLyIbc/27R4bz6Z6dgRdMG1gggCQmQYJlNb56CawkYUCu1N2TssEAfdKyhPN",{"startTime":1792942531366,"executionIndex":0,"source":"26","hints":"27","executionTime":3,"executionStatus":"28","data":"29"},{"startTime":1792942531370,"executionIndex":1,"source":"30","hints":"31","executionTime":0,"executionStatus":"28","data":"32"},{"json":"33","pairedItem":"34"},"When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger",[],[],"success",{"main":"35"},["36"],[],{"main":"37"},{"id":"38","createdTime":"39","fields":"40"},{"item":0},["41"],{"previousNode":"24","previousNodeOutput":0,"previousNodeRun":0},["16"],"rec4ys1CUcchxILFb","2026-10-25T15:22:32.000Z",{"Total Milestones":0,"Overdue Milestones":0,"Completed Milestones":0,"Description":"42","Open Hours Remaining":0,"Progress (%)":0,"Project Name":"43"},["44"],"It will be used to store Client Data","Create Table for Client's Details",{"json":"45","pairedItem":"46"},{},{"item":0}]	54ecdb56-a505-43a8-9bb0-5e4a732a6d41
7	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"=","Start Date":"=","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-448,-1392],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-608,-1392],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"d46b683dc5c87e5fa03c823945a1aedaff51fdfa1b3a5fb44a23c34df5adeb5d",{"nodeName":"9","mode":"16"},["17","9"],{"When clicking ‘Execute workflow’":"18","Create a record":"19"},{"Create a record":"20"},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1792942536449,"source":"21","triggerNode":"22","redaction":"23","credentials":"24"},"inclusive","When clicking ‘Execute workflow’",["25"],["26"],["27"],"manual",{"name":"9","type":"28"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1+2kvTaFyIbdziljlcceP0a/WwlUG8WR5be+Y2HPNuzGVoL/kGa6QaivCUybrTkFaYvGzv9BlqBWpTeh95COnx1330lMjxkwsCdby5FjhsOFFmHKIVz7wd0ecxdAVX3e2gdEAbH1UXwa07Cs+yLm/kWhK8yjiN8U6Nvxjt3tb8SDEyZTDl+tmm6h5VgyQst1hXP/A9Imd0B0Bf4ID8dEraonfx80dE816aV3kBTyzTlE4m5BYAw1tmtPT5Jq3O1f47sSTplWvAjt2gtdA+5HMSG+pYobCFL5OWmehqTJk+JCWvt92YYaH90FnRhNtdUg8ukrw2LgYSaoTGfoy8MutoObvtBW8QHjhJoKXn1Am7aHeoHRo5gvp6T1tvjgsx/wuJhnNy0gEd+kiq3Y7bFAr8Fb2CvjFXw7YDDzpowYFG1x3LjIsji6LTNxDlCFTQ+m6Sp7vI88/EWeefSZKexrhajmcM4Qcmb8DBV4yu5DW5hAZhvxxUYR9BfaJ3cG+S0yEl6scThxdDLrc+8nzfarjLJXO46PUpowILhOQHCZeo9jtF572MtYPLs",{"startTime":1792942489198,"executionIndex":0,"source":"29","hints":"30","executionTime":2,"executionStatus":"31","data":"32"},{"startTime":1792942537496,"executionIndex":1,"source":"33","hints":"34","executionTime":3,"executionStatus":"31","data":"35"},{"json":"36","pairedItem":"37"},"n8n-nodes-base.airtable",[],[],"success",{"main":"38"},["39"],[],{"main":"40"},{"id":"41","createdTime":"42","fields":"43"},{"item":0},["44"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["20"],"rec4ys1CUcchxILFb","2026-10-25T15:22:32.000Z",{"Total Milestones":0,"Overdue Milestones":0,"Completed Milestones":0,"Description":"45","Open Hours Remaining":0,"Progress (%)":0,"Project Name":"46"},["47"],"It will be used to store Client Data","Create Table for Client's Details",{"json":"48","pairedItem":"49"},{},{"item":0}]	54ecdb56-a505-43a8-9bb0-5e4a732a6d41
8	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"=","Start Date":"=","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"e500c92c9313a658e9e9029140dc91c6f8121ee3424c094e5f8753b59fb1810c",{"nodeName":"9","mode":"16"},["9"],{"When clicking ‘Execute workflow’":"17"},{"Create a record":"18"},"When clicking ‘Execute workflow’",{},[],{},{},{},{"version":1,"establishedAt":1792942611168,"source":"19","triggerNode":"20","redaction":"21","credentials":"22"},"inclusive",["23"],["24"],"manual",{"name":"9","type":"25"},{"version":2,"production":false,"manual":false},"U2FsdGVkX18ufIFoTIe2c13QTieWNej04TXxcd980N7Q3BY0fZxaJv4feuZHCR5mwZTMUV321csr/jcnd1KcXUSd/WfgUW6UnwdSQ+5WZ5hcEhElVyvhv7znSzmgKi3trhkhNRog4LGB0XfE4DsznDLOgs20qUylE8f+WSoQkRXqQuf9w7Ok85vH77+1H0Jkg2sI4YLe9NJjX2s4fNKbUunq7AJplE/xCug+VorXHsYXLmdnRJdcSXtkVz1YEGwH7IMmmqtKjI7SrPJYpAOx9CsgP68REnleFHs9uOI2U8wCX5dipU3/4EKg29f5XqGmzdahGpIrKCBC0brO/eGhAF1Jp1QAcAfdlO98hGXdwmZ17DeucSIUdzhirXV+4tU0R710IbTbsZwX3OT7jPHPh3SGuv1hphcw0na80GFlnIofqZRFrrefdJfj39MLzfD8rnxYBo1nsLD4Wg75TLisekJ5ANVamO2jFZcGplKWWtr8LjCfuWsqZtD1i8mrlKPeX10YFqfmENh6/sMSRiHg0+thSRO5GsvRkG3t1HeGYt7X91fYsNkORXDfftjcWG+D",{"startTime":1792942616392,"executionIndex":0,"source":"26","hints":"27","executionTime":78,"executionStatus":"28","data":"29"},{"json":"30"},"n8n-nodes-base.manualTrigger",[],[],"success",{"main":"31"},{"id":"32","createdTime":"33","fields":"34"},["35"],"rec4ys1CUcchxILFb","2026-10-25T15:22:32.000Z",{"Total Milestones":0,"Overdue Milestones":0,"Completed Milestones":0,"Description":"36","Open Hours Remaining":0,"Progress (%)":0,"Project Name":"37"},["38"],"It will be used to store Client Data","Create Table for Client's Details",{"json":"39","pairedItem":"40"},{},{"item":0}]	3a89153a-3655-444c-8bbd-273dba797837
9	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"=","Start Date":"=","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","pinData":"6","lastNodeExecuted":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"876beb8cce1028b086e46d82b8c4e99492a569df6713ed03f47b3491ff9b1ce0",{"When clicking ‘Execute workflow’":"14","Create a record":"15"},{"Create a record":"16"},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1792942613502,"source":"17","triggerNode":"18","redaction":"19","credentials":"20"},["21"],["22"],["23"],"manual",{"name":"24","type":"25"},{"version":2,"production":false,"manual":false},"U2FsdGVkX19TvrAlKYhz1j/vVWmAwsHng2xSh53sCVuav8x7UyA6D9ilYkgI1bONtpY1843MHKzUlWFdq58P4HP4LAqAm6jKWHf8++yZKBr+A7oUuww+xoTuzm89rLkNzp17sGhlsOyLsCjITcOZXYPrZMj0cK8uqFk7g9yxp7aKTmDbPK0MAHa3sR7/7u0PpjqTpTB0bacKjq1nXk97rbaozvCyngHuq00zMKASoakpTQaXJOEsIk+/xVcmA0OUGjtxPpPV+Y+s54EI+c5fBcg9QTu/sfm6n22M+zxiWNDAxyZ7o7ilOQrqEqhW806GjwRh/UE2npIF0zX2k/KgCfsPcQBkvpJ9a/2JzQVF1drruO592/VkU0kmZ0rtPAEyrjjkLclWyCFrdqUlPOVflvYbFP0fKeTVUJl+EJPF67f5180SFpy0SmVkCFLK7hYH+IjagLlGen1OskL4dsFeHQwAo7w4S0kg814zUnUxzEeKddKWjdi9Fz1YkEuA7gXbg2qNZDimdIzAXDSLOqfz9EukWHKQ8pfKbrlpeIrvUAKjA2hK1ijdxw1VfdS7o6iQ",{"startTime":1792942617296,"executionIndex":0,"source":"26","hints":"27","executionTime":1,"executionStatus":"28","data":"29"},{"startTime":1792942617302,"executionIndex":1,"source":"30","hints":"31","executionTime":1,"executionStatus":"28","data":"32"},{"json":"33","pairedItem":"34"},"When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger",[],[],"success",{"main":"35"},["36"],[],{"main":"37"},{"id":"38","createdTime":"39","fields":"40"},{"item":0},["41"],{"previousNode":"24","previousNodeOutput":0,"previousNodeRun":0},["16"],"rec4ys1CUcchxILFb","2026-10-25T15:22:32.000Z",{"Total Milestones":0,"Overdue Milestones":0,"Completed Milestones":0,"Description":"42","Open Hours Remaining":0,"Progress (%)":0,"Project Name":"43"},["44"],"It will be used to store Client Data","Create Table for Client's Details",{"json":"45","pairedItem":"46"},{},{"item":0}]	3a89153a-3655-444c-8bbd-273dba797837
11	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"=","Start Date":"=","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","pinData":"6","lastNodeExecuted":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"a84b488e1dd960fc7a1fe0bf701d7cc53ebe3a301246e6e70bb847c61e706cd5",{"When clicking ‘Execute workflow’":"14","Create a record":"15"},{"Create a record":"16"},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1792942631915,"source":"17","triggerNode":"18","redaction":"19","credentials":"20"},["21"],["22"],["23"],"manual",{"name":"24","type":"25"},{"version":2,"production":false,"manual":false},"U2FsdGVkX182eDVCLSN2C+6j2+qaWBL54fl3EVhCE73tit+WtpA+BcYAfNWREGpeCFT+gAaPRJLksivYkVX9fVCgO42Lt7+z0tmf6n292V1ovS2V1w15chs6HfD4NLn8Lt/sl4AmufKtFLlFJVH9qVGjvoXWGie9NkJMY1iCtVGRK87ydn5jp3RfKiosZgO56rFGND7uOIBwHDan4WUWiUd9yYyYzKYNul+3/IQdx/WB+rlVKq6G9e5PCuAPnEbbH3ga8iUsQKN/sFRghOG9iZ0sC2yMOIYySGEzHkPTbLI8DumF7+BdmcHYMSphDLJ6hxvWaeYRG+yzWSm5eM0X4g/PxrWVSNho6bAv+a0NvSEIar8frBikYNHqMkvz9AeqMAtXmjF24DlTgPbPkQLFUHqZDHFxEApWbyWJYGzzSU6MXVWLCbAvBAqGMt06oWVtiWbtBdIH8kmyIQVvBBA03mmH+KUfzNgNfHMbJTVRHEBo+vHm4TmxJueCWgN6ItTan2o4z9W7T2KmzcDPcMGODrqEce/OkdvLrDF0EFWtM/qHto0ikCbx1k7tLqdfIph8",{"startTime":1792942634347,"executionIndex":0,"source":"26","hints":"27","executionTime":3,"executionStatus":"28","data":"29"},{"startTime":1792942634367,"executionIndex":1,"source":"30","hints":"31","executionTime":205,"executionStatus":"28","data":"32"},{"json":"33","pairedItem":"34"},"When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger",[],[],"success",{"main":"35"},["36"],[],{"main":"37"},{"id":"38","createdTime":"39","fields":"40"},{"item":0},["41"],{"previousNode":"24","previousNodeOutput":0,"previousNodeRun":0},["16"],"rec4ys1CUcchxILFb","2026-10-25T15:22:32.000Z",{"Total Milestones":0,"Overdue Milestones":0,"Completed Milestones":0,"Description":"42","Open Hours Remaining":0,"Progress (%)":0,"Project Name":"43"},["44"],"It will be used to store Client Data","Create Table for Client's Details",{"json":"45","pairedItem":"46"},{},{"item":0}]	3a89153a-3655-444c-8bbd-273dba797837
13	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"=","Start Date":"=","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"a0ba8f1d56b9274204e2b25d370d551a39a51e11d27a4389d8f0ddd8f76e70b8",{"nodeName":"9","mode":"16"},["17","9"],{"When clicking ‘Execute workflow’":"18","Create a record":"19"},{"Create a record":"20"},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1792942670916,"source":"21","triggerNode":"22","redaction":"23","credentials":"24"},"inclusive","When clicking ‘Execute workflow’",["25"],["26"],["27"],"manual",{"name":"9","type":"28"},{"version":2,"production":false,"manual":false},"U2FsdGVkX19LAvi+r27XPTqutvUnItzcnCTxPUV5iIS0UUBnIWy6i7l0lFmhBjZmv70z+uIn8TBnDvDcKdzSaNBUazMYcCQL6ArutIEcsfXblwRHDIX3QLWgxpNnm+NvG2NINTR9ky32PwPI1KCyBFojwwz+5XT+FQfXwAgXE+F0Qa8SAAcAKlGc1qaUID87VMoBIwPBWH4VCbHAliI98SGGOvLOi6WielUepiFai2/QLoum/E2m4/wd2Kl+8j0FLMTJxE913xc6f1E6KMbMLzxy/9f+A2qNb2pWl6OveaNyp+fRr2StHPWk2p8ZRrT9plCaPW5qIMCR07QX89Jv+FBChJd2vqqCt7o6o+MbzvfW6XHYIIWbfGF8OOGRP+Iwa8nBG/uNcDzi6QgeotQL9JP/5cWfiyXoY3235iaoMyo72kxV6tML7c+nVY6DZRz0XkgZQBIns/AVHPe+Vxt+nJ360cQrdpEpE118E+k5T8JYNhisJF9+VktFJT8tYTkZ5oAw14roDmEfUce9K9jrUg9TcSa/5bOOwUBbginn/JA+J7Q9NfBZzrO4lK8Xt24J",{"startTime":1792942616392,"executionIndex":0,"source":"29","hints":"30","executionTime":78,"executionStatus":"31","data":"32"},{"startTime":1792942672965,"executionIndex":1,"source":"33","hints":"34","executionTime":1,"executionStatus":"31","data":"35"},{"json":"36","pairedItem":"37"},"n8n-nodes-base.airtable",[],[],"success",{"main":"38"},["39"],[],{"main":"40"},{"id":"41","createdTime":"42","fields":"43"},{"item":0},["44"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["20"],"rec4ys1CUcchxILFb","2026-10-25T15:22:32.000Z",{"Total Milestones":0,"Overdue Milestones":0,"Completed Milestones":0,"Description":"45","Open Hours Remaining":0,"Progress (%)":0,"Project Name":"46"},["47"],"It will be used to store Client Data","Create Table for Client's Details",{"json":"48","pairedItem":"49"},{},{"item":0}]	3a89153a-3655-444c-8bbd-273dba797837
14	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"=","Start Date":"=","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"error":"5","runData":"6","pinData":"7","lastNodeExecuted":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13","runtimeData":"14"},"baa52e8562f3f1f6413e8893198a4c13a31d85c95f89608ec8ee46e41396e740",{"level":"15","shouldReport":false,"description":"16","tags":"17","timestamp":1792998008625,"context":"18","functionality":"19","name":"20","message":"21","stack":"22"},{"When clicking ‘Execute workflow’":"23","Create a record":"24"},{},"Create a record",{},["25"],{},{},{},{"version":1,"establishedAt":1792998007148,"source":"26","triggerNode":"27","redaction":"28","credentials":"29"},"warning","'Target Launch Date' expects a dateTime but we got '' <br/><br/> Consider using <a href=\\"https://moment.github.io/luxon/api-docs/index.html#datetimefromformat\\" target=\\"_blank\\"><code>DateTime.fromFormat</code></a> to work with custom date formats.",{},{"runIndex":0,"itemIndex":0,"nodeCause":"8"},"regular","ExpressionError","Invalid input for 'Target Launch Date' [item 0]","ExpressionError: Invalid input for 'Target Launch Date' [item 0]\\n    at validateValueAgainstSchema (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/validate-value-against-schema.ts:242:9)\\n    at ExecuteContext._getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/node-execution-context.ts:610:42)\\n    at ExecuteContext.getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/execute-context.ts:120:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:75:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:67)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:23)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:31)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:22)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:38\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)",["30"],["31"],{"node":"32","data":"33","source":"34"},"manual",{"name":"35","type":"36"},{"version":2,"production":false,"manual":false},"U2FsdGVkX19lyJum8bJ2Em2TXPELo4QWul4a5bvlsd+fCXZX9LDDkKO3RcANyelNbpE4npoe7mjEiZ5BLzX+NmoMsaYtehf3dwifQ/D55E2hfHHfs6b3FIC/J6VCWdB+5vrKSux/YZuyl54BTg5Mmoz+6mSs1AFq5JKpT0U2vIsGbohq75afbq8+yObOqfmndxtaa8r2R7O+Hpxt69vbPpTh07RIxf9s7V040joECLgWADZJDu1uFiIJymkO1JaVgyS7ly3mc/hNK99MTn+VM6wo0WGX3e+lSemYnCf1tdM/NxnZwh+LC/GpLyW4v20/MvWlJgn3Q29gx3Gonhvi0FuCPm72/zt4guDHw9dDKIlb+ss87pyZ7XvCcuxt3YK24/Egb9xp+Qp+tzJER94ExzOTViuAGEPMHATkczQSe7lgk390W1mQM+4GNCY/0aoA9BHPk2tCjrfCMjO5m3pZBnKNflivqnMiXceuoFZaEp20b0zjzFxXuD++qXUBf8Mv5O/oPJ2IGpRYhZhEGVnyuk+sad9+VP6PnaVsQeY+Qxb0QLz1iRikRLveY/tADGIE",{"startTime":1792998008240,"executionIndex":0,"source":"37","hints":"38","executionTime":81,"executionStatus":"39","data":"40"},{"startTime":1792998008326,"executionIndex":1,"source":"41","hints":"42","executionTime":784,"executionStatus":"43","error":"44"},{"parameters":"45","type":"46","typeVersion":2.2,"position":"47","id":"48","name":"8","credentials":"49"},{"main":"50"},{"main":"41"},"When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger",[],[],"success",{"main":"51"},["52"],[],"error",{"level":"15","shouldReport":false,"description":"16","tags":"17","timestamp":1792998008625,"context":"18","functionality":"19","name":"20","message":"21","stack":"22"},{"authentication":"53","resource":"54","operation":"55","base":"56","table":"57","columns":"58","options":"59"},"n8n-nodes-base.airtable",[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"60"},["61"],["62"],{"previousNode":"35","previousNodeOutput":0,"previousNodeRun":0},"airtableTokenApi","record","create",{"__rl":true,"value":"63","mode":"64","cachedResultName":"65","cachedResultUrl":"66"},{"__rl":true,"value":"67","mode":"64","cachedResultName":"68","cachedResultUrl":"69"},{"mappingMode":"70","value":"71","matchingColumns":"72","schema":"73","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"74","name":"75"},["76"],["77"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"78","Target Launch Date":"79","Start Date":"79","Description":"80"},[],["81","82","83","84","85","86","87","88","89","90","91","92","93"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",{"json":"94","pairedItem":"95"},{"json":"94","pairedItem":"96"},"Create Module for n8n Course","=","for everyone who want to familiarize the n8n",{"id":"97","displayName":"97","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"98","readOnly":false,"removed":false},{"id":"99","displayName":"99","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"98","readOnly":false,"removed":false},{"id":"100","displayName":"100","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"101","options":"102","readOnly":false,"removed":false},{"id":"103","displayName":"103","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"101","options":"104","readOnly":false,"removed":false},{"id":"105","displayName":"105","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"106","readOnly":false,"removed":false},{"id":"107","displayName":"107","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"106","readOnly":false,"removed":false},{"id":"108","displayName":"108","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"109","readOnly":false,"removed":false},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"98","readOnly":true,"removed":true},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"98","readOnly":true,"removed":true},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"98","readOnly":true,"removed":true},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"98","readOnly":true,"removed":true},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"98","readOnly":true,"removed":true},{},{"item":0},{"item":0},"Project Name","string","Description","Status","options",["117","118","119","120","121"],"Priority",["122","123","124"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"name":"125","value":"125"},{"name":"126","value":"126"},{"name":"127","value":"127"},{"name":"128","value":"128"},{"name":"129","value":"129"},{"name":"130","value":"130"},{"name":"131","value":"131"},{"name":"132","value":"132"},"Planning","In Progress","At Risk","On Hold","Completed","High","Medium","Low"]	3a89153a-3655-444c-8bbd-273dba797837
15	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"= ","Start Date":"= ","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"b20e1e46aee3cbf5d7e2385123458aa0cd711968a2366aa88bfd4d0f0815360b",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","shouldReport":false,"description":"20","tags":"21","timestamp":1792998059414,"context":"22","functionality":"23","name":"24","message":"25","stack":"26"},{"When clicking ‘Execute workflow’":"27","Create a record":"28"},{},"Create a record",{},["29"],{},{},{},{"version":1,"establishedAt":1792998057354,"source":"30","triggerNode":"31","redaction":"32","credentials":"33"},"inclusive","When clicking ‘Execute workflow’","warning","'Target Launch Date' expects a dateTime but we got ' ' <br/><br/> Consider using <a href=\\"https://moment.github.io/luxon/api-docs/index.html#datetimefromformat\\" target=\\"_blank\\"><code>DateTime.fromFormat</code></a> to work with custom date formats.",{},{"runIndex":0,"itemIndex":0,"nodeCause":"10"},"regular","ExpressionError","Invalid input for 'Target Launch Date' [item 0]","ExpressionError: Invalid input for 'Target Launch Date' [item 0]\\n    at validateValueAgainstSchema (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/validate-value-against-schema.ts:242:9)\\n    at ExecuteContext._getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/node-execution-context.ts:610:42)\\n    at ExecuteContext.getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/execute-context.ts:120:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:75:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:67)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:23)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:31)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:22)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:38\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)",["34"],["35"],{"node":"36","data":"37","source":"38"},"manual",{"name":"10","type":"39"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1/mXyRZpd+VCsP/g+K9elGkPeZsfNu4w+U8oTsHbLBCLHSRbNsWYZeRjHGMzQMtXlU4R1ygxw7/s+wkbhE35fhOtg/vwrBUKqMMC1xkX/Q+0FNTxYZpIH3Vfd7QjL4zxiHyPyB6JbbEU8L5xKt4bXh8S55FsPgOD/CZOk34IxO8AelWpieneBLxkKXJ/QKOgNmgbZ5toxydGwj76NnSMycqX/P3exp2A2WjmgaaYWTljxnnqrl6E8BZPtCyX+0j9HHK1ptEkS3x6rQhudZPkN1EBmed0zU1xaJgXsijW4LRC4poxqxYHW15A3qMmOw7/ZjM5vACQ84ha/siNCp057Q4aASEs4RFtMcByxmSJhAoVq6OKJRayVRRmMp2RK+AshLhBz2vDGStJubMAtpEElVC19bs0QEcClruN8O0NchZWxnJRLstMsUrr/yDbHq3RiiE54WL5eOOXlrREVkxCC6ze9j+Y0iSRqczDmYTttFgMfmTNFmvjml2EUB5bMQXv+QQJqK70UMkMuCl9aPeF5Erp0bEq65Az1Ak9syX7mNzlRmuzupLMP8b",{"startTime":1792998008240,"executionIndex":0,"source":"40","hints":"41","executionTime":81,"executionStatus":"42","data":"43"},{"startTime":1792998059375,"executionIndex":1,"source":"44","hints":"45","executionTime":39,"executionStatus":"46","error":"47"},{"parameters":"48","type":"39","typeVersion":2.2,"position":"49","id":"50","name":"10","credentials":"51"},{"main":"52"},{"main":"44"},"n8n-nodes-base.airtable",[],[],"success",{"main":"53"},["54"],[],"error",{"level":"19","shouldReport":false,"description":"20","tags":"21","timestamp":1792998059414,"context":"22","functionality":"23","name":"24","message":"25","stack":"26"},{"authentication":"55","resource":"56","operation":"57","base":"58","table":"59","columns":"60","options":"61"},[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"62"},["63"],["64"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},"airtableTokenApi","record","create",{"__rl":true,"value":"65","mode":"66","cachedResultName":"67","cachedResultUrl":"68"},{"__rl":true,"value":"69","mode":"66","cachedResultName":"70","cachedResultUrl":"71"},{"mappingMode":"72","value":"73","matchingColumns":"74","schema":"75","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"76","name":"77"},["78"],["79"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"80","Target Launch Date":"81","Start Date":"81","Description":"82"},[],["83","84","85","86","87","88","89","90","91","92","93","94","95"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",{"json":"96","pairedItem":"97"},{"json":"96","pairedItem":"98"},"Create Module for n8n Course","= ","for everyone who want to familiarize the n8n",{"id":"99","displayName":"99","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":false,"removed":false},{"id":"101","displayName":"101","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":false,"removed":false},{"id":"102","displayName":"102","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"103","options":"104","readOnly":false,"removed":false},{"id":"105","displayName":"105","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"103","options":"106","readOnly":false,"removed":false},{"id":"107","displayName":"107","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"108","readOnly":false,"removed":false},{"id":"109","displayName":"109","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"108","readOnly":false,"removed":false},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"117","displayName":"117","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{},{"item":0},{"item":0},"Project Name","string","Description","Status","options",["119","120","121","122","123"],"Priority",["124","125","126"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"name":"127","value":"127"},{"name":"128","value":"128"},{"name":"129","value":"129"},{"name":"130","value":"130"},{"name":"131","value":"131"},{"name":"132","value":"132"},{"name":"133","value":"133"},{"name":"134","value":"134"},"Planning","In Progress","At Risk","On Hold","Completed","High","Medium","Low"]	6dbc948f-59af-46a3-96d6-83920c502295
16	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"= ","Start Date":"= ","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"error":"5","runData":"6","pinData":"7","lastNodeExecuted":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13","runtimeData":"14"},"7ea5ab5eaa6348bfe579211cdcd783458761637c5de20cc26020824bae473869",{"level":"15","shouldReport":false,"description":"16","tags":"17","timestamp":1792998068719,"context":"18","functionality":"19","name":"20","message":"21","stack":"22"},{"When clicking ‘Execute workflow’":"23","Create a record":"24"},{},"Create a record",{},["25"],{},{},{},{"version":1,"establishedAt":1792998067021,"source":"26","triggerNode":"27","redaction":"28","credentials":"29"},"warning","'Target Launch Date' expects a dateTime but we got ' ' <br/><br/> Consider using <a href=\\"https://moment.github.io/luxon/api-docs/index.html#datetimefromformat\\" target=\\"_blank\\"><code>DateTime.fromFormat</code></a> to work with custom date formats.",{},{"runIndex":0,"itemIndex":0,"nodeCause":"8"},"regular","ExpressionError","Invalid input for 'Target Launch Date' [item 0]","ExpressionError: Invalid input for 'Target Launch Date' [item 0]\\n    at validateValueAgainstSchema (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/validate-value-against-schema.ts:242:9)\\n    at ExecuteContext._getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/node-execution-context.ts:610:42)\\n    at ExecuteContext.getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/execute-context.ts:120:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:75:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:67)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:23)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:31)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:22)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:38\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)",["30"],["31"],{"node":"32","data":"33","source":"34"},"manual",{"name":"35","type":"36"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1/6mBfOCbFZZt+uu8ogGttb9tNnhp3OS4nmdQyv5058L252Qrz4/KGg11+E2vFmx8i9DXuBt8DI5ieuPUt3ntvpWP8n5kkIfARMPDtm/NJapUwpySy3gL3+Vpxd0PSFzd7WRAunQQu1t4aGhWUnnhIqMpJU3vi1+DLoZ55/ztDnp+QMeBTIdtTnw7X4PuCIW0dUpqsUAx/NRB2kX2iLjiOgu+BjEG4Cuh6g3WxCIXD1LM46bky1F2mTULEmw8/DvCbXrxJnY+CTOAF3qLyxdK8UdiOm565uasgtLZWkqnj4dc++BU9SOfYB8iGYxeJOzJlrBSrGGD8Zyqo0R/FYUyxSSw/JRoD3ztrltZMipE9Ntchsh+g34BaBq9HsebCjfSglodc4U2QX/lJqivmHCfcEeDM9jonIfaxOUcutFC0RlI7n9sBqw2nSXZd6yuaMW+K0Me3QZnBfQUBZNQh9ii6oH6rmye3XUFUbVqPAEbfaJ6KXLlP4oH/xw6kBYDwc/rkK47O4bW1HWkzHajk5pcnfvxXehnyUMKqRsjCZK3iMYHssNoLKRswn",{"startTime":1792998068641,"executionIndex":0,"source":"37","hints":"38","executionTime":1,"executionStatus":"39","data":"40"},{"startTime":1792998068712,"executionIndex":1,"source":"41","hints":"42","executionTime":8,"executionStatus":"43","error":"44"},{"parameters":"45","type":"46","typeVersion":2.2,"position":"47","id":"48","name":"8","credentials":"49"},{"main":"50"},{"main":"41"},"When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger",[],[],"success",{"main":"51"},["52"],[],"error",{"level":"15","shouldReport":false,"description":"16","tags":"17","timestamp":1792998068719,"context":"18","functionality":"19","name":"20","message":"21","stack":"22"},{"authentication":"53","resource":"54","operation":"55","base":"56","table":"57","columns":"58","options":"59"},"n8n-nodes-base.airtable",[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"60"},["61"],["62"],{"previousNode":"35","previousNodeOutput":0,"previousNodeRun":0},"airtableTokenApi","record","create",{"__rl":true,"value":"63","mode":"64","cachedResultName":"65","cachedResultUrl":"66"},{"__rl":true,"value":"67","mode":"64","cachedResultName":"68","cachedResultUrl":"69"},{"mappingMode":"70","value":"71","matchingColumns":"72","schema":"73","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"74","name":"75"},["76"],["77"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"78","Target Launch Date":"79","Start Date":"79","Description":"80"},[],["81","82","83","84","85","86","87","88","89","90","91","92","93"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",{"json":"94","pairedItem":"95"},{"json":"94","pairedItem":"96"},"Create Module for n8n Course","= ","for everyone who want to familiarize the n8n",{"id":"97","displayName":"97","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"98","readOnly":false,"removed":false},{"id":"99","displayName":"99","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"98","readOnly":false,"removed":false},{"id":"100","displayName":"100","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"101","options":"102","readOnly":false,"removed":false},{"id":"103","displayName":"103","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"101","options":"104","readOnly":false,"removed":false},{"id":"105","displayName":"105","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"106","readOnly":false,"removed":false},{"id":"107","displayName":"107","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"106","readOnly":false,"removed":false},{"id":"108","displayName":"108","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"109","readOnly":false,"removed":false},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"98","readOnly":true,"removed":true},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"98","readOnly":true,"removed":true},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"98","readOnly":true,"removed":true},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"98","readOnly":true,"removed":true},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"98","readOnly":true,"removed":true},{},{"item":0},{"item":0},"Project Name","string","Description","Status","options",["117","118","119","120","121"],"Priority",["122","123","124"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"name":"125","value":"125"},{"name":"126","value":"126"},{"name":"127","value":"127"},{"name":"128","value":"128"},{"name":"129","value":"129"},{"name":"130","value":"130"},{"name":"131","value":"131"},{"name":"132","value":"132"},"Planning","In Progress","At Risk","On Hold","Completed","High","Medium","Low"]	6dbc948f-59af-46a3-96d6-83920c502295
17	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"=","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"510a1b8d9671d098f5653f0b21180941b33fa4bd559043c86bd2c37b98801c7f",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","shouldReport":false,"description":"20","tags":"21","timestamp":1792998237612,"context":"22","functionality":"23","name":"24","message":"25","stack":"26"},{"When clicking ‘Execute workflow’":"27","Create a record":"28"},{},"Create a record",{},["29"],{},{},{},{"version":1,"establishedAt":1792998235523,"source":"30","triggerNode":"31","redaction":"32","credentials":"33"},"inclusive","When clicking ‘Execute workflow’","warning","'Target Launch Date' expects a dateTime but we got '' <br/><br/> Consider using <a href=\\"https://moment.github.io/luxon/api-docs/index.html#datetimefromformat\\" target=\\"_blank\\"><code>DateTime.fromFormat</code></a> to work with custom date formats.",{},{"runIndex":0,"itemIndex":0,"nodeCause":"10"},"regular","ExpressionError","Invalid input for 'Target Launch Date' [item 0]","ExpressionError: Invalid input for 'Target Launch Date' [item 0]\\n    at validateValueAgainstSchema (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/validate-value-against-schema.ts:242:9)\\n    at ExecuteContext._getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/node-execution-context.ts:610:42)\\n    at ExecuteContext.getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/execute-context.ts:120:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:75:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:67)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:23)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:31)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:22)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:38\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)",["34"],["35"],{"node":"36","data":"37","source":"38"},"manual",{"name":"10","type":"39"},{"version":2,"production":false,"manual":false},"U2FsdGVkX18UGqUXdYBOiJDk4OfF04oxOXx0u9Sx6GWkInIJu2jhIYuTHihnGa5ETWS4wmTQn2brxNSJUrG1vYTbFVTr+Y7oWhOr72c+J8ICEQGBH+JXTBlAAPViD5no2kABOlJOK6WhOZv4JBeu1fmOwnMimiwY1d+7bhjjWLLmzWWTZPi29dDyO576wrzmvrTOIcBN/NPrvQfd2WNaMKPz2OtvmLPj83jl0G8rMwMu1Lao6PQQbsEFOM4IIhN1l+abowVrqz8HZceJFR1kraKRCuADCSeg/4a91okHV1Qk1OA3BYsP/Ar+klGHD7QdSlrBB5Cc2bEU7QeuXgd8VlHMCtNsxG8SekBAn2Kts8MUjlgfUYSZVPN3IpuzLoi1jjZTCEGp5Jd8R3UdV0PiAclI9S/bLM+oqPkqELNatf4B5S/OAYH88YVevDy+fj+riIOucw6glDuXT4NqVPzchelt3wmzp1bi+fraA95dUaHepbSavqyjrRgYDBk3Xr1qMjPpLcJj9+3xNSYoIImJdPytxSYKefbmwqVYWh1gWS7BUynCGzLJ1v9E7dBrY3xK",{"startTime":1792998008240,"executionIndex":0,"source":"40","hints":"41","executionTime":81,"executionStatus":"42","data":"43"},{"startTime":1792998237588,"executionIndex":1,"source":"44","hints":"45","executionTime":26,"executionStatus":"46","error":"47"},{"parameters":"48","type":"39","typeVersion":2.2,"position":"49","id":"50","name":"10","credentials":"51"},{"main":"52"},{"main":"44"},"n8n-nodes-base.airtable",[],[],"success",{"main":"53"},["54"],[],"error",{"level":"19","shouldReport":false,"description":"20","tags":"21","timestamp":1792998237612,"context":"22","functionality":"23","name":"24","message":"25","stack":"26"},{"authentication":"55","resource":"56","operation":"57","base":"58","table":"59","columns":"60","options":"61"},[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"62"},["63"],["64"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},"airtableTokenApi","record","create",{"__rl":true,"value":"65","mode":"66","cachedResultName":"67","cachedResultUrl":"68"},{"__rl":true,"value":"69","mode":"66","cachedResultName":"70","cachedResultUrl":"71"},{"mappingMode":"72","value":"73","matchingColumns":"74","schema":"75","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"76","name":"77"},["78"],["79"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"80","Target Launch Date":"81","Description":"82"},[],["83","84","85","86","87","88","89","90","91","92","93","94","95"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",{"json":"96","pairedItem":"97"},{"json":"96","pairedItem":"98"},"Create Module for n8n Course","=","for everyone who want to familiarize the n8n",{"id":"99","displayName":"99","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":false,"removed":false},{"id":"101","displayName":"101","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":false,"removed":false},{"id":"102","displayName":"102","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"103","options":"104","readOnly":false,"removed":false},{"id":"105","displayName":"105","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"103","options":"106","readOnly":false,"removed":false},{"id":"107","displayName":"107","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"108","readOnly":false,"removed":false},{"id":"109","displayName":"109","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"108","readOnly":false,"removed":false},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"117","displayName":"117","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{},{"item":0},{"item":0},"Project Name","string","Description","Status","options",["119","120","121","122","123"],"Priority",["124","125","126"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"name":"127","value":"127"},{"name":"128","value":"128"},{"name":"129","value":"129"},{"name":"130","value":"130"},{"name":"131","value":"131"},{"name":"132","value":"132"},{"name":"133","value":"133"},{"name":"134","value":"134"},"Planning","In Progress","At Risk","On Hold","Completed","High","Medium","Low"]	d80bf821-edb3-4bb1-ab9a-4c238c3c4580
18	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"=","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"d4a2c894febc3219d0969461547cbb788f101cc1d0a67267e9b4e3da80187d19",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","shouldReport":false,"description":"20","tags":"21","timestamp":1792998247017,"context":"22","functionality":"23","name":"24","message":"25","stack":"26"},{"When clicking ‘Execute workflow’":"27","Create a record":"28"},{},"Create a record",{},["29"],{},{},{},{"version":1,"establishedAt":1792998245126,"source":"30","triggerNode":"31","redaction":"32","credentials":"33"},"inclusive","When clicking ‘Execute workflow’","warning","'Target Launch Date' expects a dateTime but we got '' <br/><br/> Consider using <a href=\\"https://moment.github.io/luxon/api-docs/index.html#datetimefromformat\\" target=\\"_blank\\"><code>DateTime.fromFormat</code></a> to work with custom date formats.",{},{"runIndex":0,"itemIndex":0,"nodeCause":"10"},"regular","ExpressionError","Invalid input for 'Target Launch Date' [item 0]","ExpressionError: Invalid input for 'Target Launch Date' [item 0]\\n    at validateValueAgainstSchema (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/validate-value-against-schema.ts:242:9)\\n    at ExecuteContext._getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/node-execution-context.ts:610:42)\\n    at ExecuteContext.getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/execute-context.ts:120:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:75:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:67)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:23)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:31)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:22)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:38\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)",["34"],["35"],{"node":"36","data":"37","source":"38"},"manual",{"name":"10","type":"39"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1+kZr8cHcIXHYewrlbrOjF1khDmovOU984NZ1lT4VK+jiJBiT69CRf8NT6kMnDH0sED/sYc4YRH/FeGEdOuNQWPJpyjK0XvWZ1mXyO5SeSxGvx79zn0vFJTTTGd4H2VjYJ0JVkDRwsmqYAliUOzZUa/dACXRaPnX2KBr/1GTWtRL6E0/whskKs8hoh8Cj92xiJcBUicPl2oKYKiecMux3BXUX/gojNhP7efUDUCBXw2VcYH4jxsAq1gYRGbEhAdGJ8HOnJLoQlNBgLbLMtMlsWryCbwdoP8KJSd2a/Hf+iY08+P3YBPuTcvA7DSZqMNVdc/Nai5uP60rxlRTOeh9s8PZULbZhDZ3P6T2zocM1RzK4r59vVQixw5zfOPlYL5Lmntgqua2skXU+usqtEUTcHVuOQIa0LOGYLdPTfbrPttcVlm6SxoPi/yZKmLlSBpveQE3x25QydqQF4BCrVmY92Rqjt4GpFrBhshvWM336goYHk6BTd3IN58pm/aU8oQYN2Y2FMkYRmHD4R4EoKoODQrtXWVgsioZvlQP5q4LRa/o9iKWAH8Nguq",{"startTime":1792998008240,"executionIndex":0,"source":"40","hints":"41","executionTime":81,"executionStatus":"42","data":"43"},{"startTime":1792998246936,"executionIndex":1,"source":"44","hints":"45","executionTime":83,"executionStatus":"46","error":"47"},{"parameters":"48","type":"39","typeVersion":2.2,"position":"49","id":"50","name":"10","credentials":"51"},{"main":"52"},{"main":"44"},"n8n-nodes-base.airtable",[],[],"success",{"main":"53"},["54"],[],"error",{"level":"19","shouldReport":false,"description":"20","tags":"21","timestamp":1792998247017,"context":"22","functionality":"23","name":"24","message":"25","stack":"26"},{"authentication":"55","resource":"56","operation":"57","base":"58","table":"59","columns":"60","options":"61"},[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"62"},["63"],["64"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},"airtableTokenApi","record","create",{"__rl":true,"value":"65","mode":"66","cachedResultName":"67","cachedResultUrl":"68"},{"__rl":true,"value":"69","mode":"66","cachedResultName":"70","cachedResultUrl":"71"},{"mappingMode":"72","value":"73","matchingColumns":"74","schema":"75","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"76","name":"77"},["78"],["79"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"80","Target Launch Date":"81","Description":"82"},[],["83","84","85","86","87","88","89","90","91","92","93","94","95"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",{"json":"96","pairedItem":"97"},{"json":"96","pairedItem":"98"},"Create Module for n8n Course","=","for everyone who want to familiarize the n8n",{"id":"99","displayName":"99","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":false,"removed":false},{"id":"101","displayName":"101","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":false,"removed":false},{"id":"102","displayName":"102","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"103","options":"104","readOnly":false,"removed":false},{"id":"105","displayName":"105","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"103","options":"106","readOnly":false,"removed":false},{"id":"107","displayName":"107","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"108","readOnly":false,"removed":false},{"id":"109","displayName":"109","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"108","readOnly":false,"removed":false},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"117","displayName":"117","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{},{"item":0},{"item":0},"Project Name","string","Description","Status","options",["119","120","121","122","123"],"Priority",["124","125","126"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"name":"127","value":"127"},{"name":"128","value":"128"},{"name":"129","value":"129"},{"name":"130","value":"130"},{"name":"131","value":"131"},{"name":"132","value":"132"},{"name":"133","value":"133"},{"name":"134","value":"134"},"Planning","In Progress","At Risk","On Hold","Completed","High","Medium","Low"]	d80bf821-edb3-4bb1-ab9a-4c238c3c4580
22	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Description":"for everyone who want to familiarize the n8n","Target Launch Date":"={{ $today }}","Status":"In Progress","Priority":"High","Start Date":"={{ $today }}"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"0eb7cf5ef7d9ae4904636dd88872a6e4ad1bf928d19684e2dfa45e29c6545a1a",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","shouldReport":true,"description":"20","tags":"21","timestamp":1792998374787,"context":"22","functionality":"23","name":"24","node":"25","messages":"26","httpCode":"27","message":"28","stack":"29"},{"When clicking ‘Execute workflow’":"30","Create a record":"31"},{},"Create a record",{},["32"],{},{},{},{"version":1,"establishedAt":1792998367832,"source":"33","triggerNode":"34","redaction":"35","credentials":"36"},"inclusive","When clicking ‘Execute workflow’","warning","Field \\"Target Launch Date\\" cannot accept the provided value. Consider using 'Typecast' option",{},{"itemIndex":0},"regular","NodeApiError",{"parameters":"37","type":"38","typeVersion":2.2,"position":"39","id":"40","name":"10","credentials":"41"},["42"],"422","Your request is invalid or could not be processed by the service","NodeApiError: Your request is invalid or could not be processed by the service\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/authentication.ts:329:10)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/factory.ts:179:11)\\n    at ExecuteContext.apiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/transport/index.ts:50:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:84:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:18)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:10)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:27",["43"],["44"],{"node":"45","data":"46","source":"47"},"manual",{"name":"10","type":"38"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1+kwdKxZ70rLWJeWvsaCQI+lUHvxR4tJrwRVqcy/Vp7XLBthkrL32bS8kqO/Wc8fNomF2Um6w8r1rfWh685hQu4JgQBeKePUR+2EmYup4yf7AEPBBAqPignUYjblnu0yHU6E1lgwxBxrCCeWiH1N7aRrSxoP4rNA+nJusL2MONUkYRNXgkTftcaSRz2nIi6lLDv++l7sFcgajho9/l2kqnmhNoZjkaDBkR4Tyg0fwGWpq41+fOT/4KVWnwdASoidOJqdzyokqp0ELCNHzB2tOQERW7BoijbKGzw0rGF1nEH+XRov+PS+J3P0us1UdWxPYcjp2Uhi/aUt5TQD+mbsvd/xloHAMjQv91/D4z3aEq4QW6Gx6Tm5vvmevOBmlKQSpsS67BCmR28Jq29ZnxOYERBHjcgzme724QbEXsqK3A7Zc0qk87aDQnKaUwAt5hLdAGq+KLZ9HtF2zdcgisjOhLEyD8eW2ASsvD7FNcL8onAVEqYJHpW2jTOM+Fk5xfVcK/N+JbxU/3OYZJAYjGwiZb3lWp2t7QkyMyRrrZ9btoJZ8CbpGw1Jb9q",{"authentication":"48","resource":"49","operation":"50","base":"51","table":"52","columns":"53","options":"54"},"n8n-nodes-base.airtable",[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"55"},"422 - {\\"error\\":{\\"type\\":\\"INVALID_VALUE_FOR_COLUMN\\",\\"message\\":\\"Field \\\\\\"Target Launch Date\\\\\\" cannot accept the provided value\\"}}",{"startTime":1792998008240,"executionIndex":0,"source":"56","hints":"57","executionTime":81,"executionStatus":"58","data":"59"},{"startTime":1792998369851,"executionIndex":1,"source":"60","hints":"61","executionTime":4940,"executionStatus":"62","error":"63"},{"parameters":"64","type":"38","typeVersion":2.2,"position":"65","id":"40","name":"10","credentials":"66"},{"main":"67"},{"main":"60"},"airtableTokenApi","record","create",{"__rl":true,"value":"68","mode":"69","cachedResultName":"70","cachedResultUrl":"71"},{"__rl":true,"value":"72","mode":"69","cachedResultName":"73","cachedResultUrl":"74"},{"mappingMode":"75","value":"76","matchingColumns":"77","schema":"78","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"79","name":"80"},[],[],"success",{"main":"81"},["82"],[],"error",{"level":"19","shouldReport":true,"description":"20","tags":"21","timestamp":1792998374787,"context":"22","functionality":"23","name":"24","node":"25","messages":"26","httpCode":"27","message":"28","stack":"29"},{"authentication":"48","resource":"49","operation":"50","base":"83","table":"84","columns":"85","options":"86"},[-240,-1168],{"airtableTokenApi":"87"},["88"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"89","Description":"90","Target Launch Date":"91","Status":"92","Priority":"93","Start Date":"91"},[],["94","95","96","97","98","99","100","101","102","103","104","105","106"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",["107"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},{"__rl":true,"value":"68","mode":"69","cachedResultName":"70","cachedResultUrl":"71"},{"__rl":true,"value":"72","mode":"69","cachedResultName":"73","cachedResultUrl":"74"},{"mappingMode":"75","value":"108","matchingColumns":"109","schema":"110","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"79","name":"80"},["111"],"Create Module for n8n Course","for everyone who want to familiarize the n8n","={{ $today }}","In Progress","High",{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"117","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"122","displayName":"122","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"126","readOnly":false,"removed":false},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"130","displayName":"130","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"131","displayName":"131","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},["132"],{"Project Name":"89","Description":"90","Target Launch Date":"91","Status":"92","Priority":"93","Start Date":"91"},[],["133","134","135","136","137","138","139","140","141","142","143","144","145"],{"json":"146","pairedItem":"147"},"Project Name","string","Description","Status","options",["148","149","150","151","152"],"Priority",["153","154","155"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"json":"146","pairedItem":"156"},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"157","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"158","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"122","displayName":"122","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"126","readOnly":false,"removed":false},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"130","displayName":"130","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"131","displayName":"131","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{},{"item":0},{"name":"159","value":"159"},{"name":"92","value":"92"},{"name":"160","value":"160"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"name":"93","value":"93"},{"name":"163","value":"163"},{"name":"164","value":"164"},{"item":0},["165","166","167","168","169"],["170","171","172"],"Planning","At Risk","On Hold","Completed","Medium","Low",{"name":"159","value":"159"},{"name":"92","value":"92"},{"name":"160","value":"160"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"name":"93","value":"93"},{"name":"163","value":"163"},{"name":"164","value":"164"}]	a960cc2b-1b8b-491d-bbee-bff1f8e4f80c
19	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Target Launch Date":"=","Description":"for everyone who want to familiarize the n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"dc5262f7f5d4a2ee12921d54927f12f68ef95704331f1b4330e789e274cbe468",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","shouldReport":false,"description":"20","tags":"21","timestamp":1792998247715,"context":"22","functionality":"23","name":"24","message":"25","stack":"26"},{"When clicking ‘Execute workflow’":"27","Create a record":"28"},{},"Create a record",{},["29"],{},{},{},{"version":1,"establishedAt":1792998246324,"source":"30","triggerNode":"31","redaction":"32","credentials":"33"},"inclusive","When clicking ‘Execute workflow’","warning","'Target Launch Date' expects a dateTime but we got '' <br/><br/> Consider using <a href=\\"https://moment.github.io/luxon/api-docs/index.html#datetimefromformat\\" target=\\"_blank\\"><code>DateTime.fromFormat</code></a> to work with custom date formats.",{},{"runIndex":0,"itemIndex":0,"nodeCause":"10"},"regular","ExpressionError","Invalid input for 'Target Launch Date' [item 0]","ExpressionError: Invalid input for 'Target Launch Date' [item 0]\\n    at validateValueAgainstSchema (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/validate-value-against-schema.ts:242:9)\\n    at ExecuteContext._getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/node-execution-context.ts:610:42)\\n    at ExecuteContext.getNodeParameter (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/execute-context.ts:120:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:75:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:67)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:23)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:31)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:22)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:38\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)",["34"],["35"],{"node":"36","data":"37","source":"38"},"manual",{"name":"10","type":"39"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1946lW8Y/GyjS7+n0JdJ2gHD3dTAdwpf48HEvG9R+qVvCRg0V20opdpUMj3adCEOSRreSYEa3zWGjynKOc6MMefwCxgXqOx8kLBBQwujF3DuyYsIuo9tnhrwTet7z0Yf+nX+0xrtpzUv8vwuaLvzUIxQvva2fqbJ6cYYg7KuSGhECPK+5H/1fCe8nCPQAO+wRd8O7RlKcIw86BAgOzHvkMqkaU3ka+hcZFLi89/3KwCKj4yZ7TH3o8+xccl1Rm3ezXEh/yZfI1ME9vi91H2LUVkzPWs4/Btq3wXoPwz5K7f/omToXzjqsgWFV4rvdqGTmKUb8+z9aeiC+m4zBBsXbQMqIOqk4y1vFTSa6c2ItnERyDJV8G1ukYvBNEdYEPeu9CqFaYRJbay5huj0enwR0yzzYn3X9L5GTuG6vpFLcueYAI0vjAkdo0iMgaakyPkv6wSVOlPgXWQWLPZCwsczW0tkrdJPasg0ZnBHZHiA+d7r9t3WpSxvKRCvlT/QSoGCfR2WNzHgJ8Rl45FPAamZMVpkokRYeSWaQyFraAoZhXT8Go64lP9ezYA",{"startTime":1792998008240,"executionIndex":0,"source":"40","hints":"41","executionTime":81,"executionStatus":"42","data":"43"},{"startTime":1792998247668,"executionIndex":1,"source":"44","hints":"45","executionTime":48,"executionStatus":"46","error":"47"},{"parameters":"48","type":"39","typeVersion":2.2,"position":"49","id":"50","name":"10","credentials":"51"},{"main":"52"},{"main":"44"},"n8n-nodes-base.airtable",[],[],"success",{"main":"53"},["54"],[],"error",{"level":"19","shouldReport":false,"description":"20","tags":"21","timestamp":1792998247715,"context":"22","functionality":"23","name":"24","message":"25","stack":"26"},{"authentication":"55","resource":"56","operation":"57","base":"58","table":"59","columns":"60","options":"61"},[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"62"},["63"],["64"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},"airtableTokenApi","record","create",{"__rl":true,"value":"65","mode":"66","cachedResultName":"67","cachedResultUrl":"68"},{"__rl":true,"value":"69","mode":"66","cachedResultName":"70","cachedResultUrl":"71"},{"mappingMode":"72","value":"73","matchingColumns":"74","schema":"75","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"76","name":"77"},["78"],["79"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"80","Target Launch Date":"81","Description":"82"},[],["83","84","85","86","87","88","89","90","91","92","93","94","95"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",{"json":"96","pairedItem":"97"},{"json":"96","pairedItem":"98"},"Create Module for n8n Course","=","for everyone who want to familiarize the n8n",{"id":"99","displayName":"99","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":false,"removed":false},{"id":"101","displayName":"101","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":false,"removed":false},{"id":"102","displayName":"102","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"103","options":"104","readOnly":false,"removed":false},{"id":"105","displayName":"105","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"103","options":"106","readOnly":false,"removed":false},{"id":"107","displayName":"107","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"108","readOnly":false,"removed":false},{"id":"109","displayName":"109","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"108","readOnly":false,"removed":false},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"117","displayName":"117","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"100","readOnly":true,"removed":true},{},{"item":0},{"item":0},"Project Name","string","Description","Status","options",["119","120","121","122","123"],"Priority",["124","125","126"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"name":"127","value":"127"},{"name":"128","value":"128"},{"name":"129","value":"129"},{"name":"130","value":"130"},{"name":"131","value":"131"},{"name":"132","value":"132"},{"name":"133","value":"133"},{"name":"134","value":"134"},"Planning","In Progress","At Risk","On Hold","Completed","High","Medium","Low"]	d80bf821-edb3-4bb1-ab9a-4c238c3c4580
20	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Description":"for everyone who want to familiarize the n8n","Target Launch Date":"={{ $today }}"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"fde10381673b466d1b7b06327c94c2f16dded0fe67bafda4d45c734420ddd4f5",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","shouldReport":true,"description":"20","tags":"21","timestamp":1792998292824,"context":"22","functionality":"23","name":"24","node":"25","messages":"26","httpCode":"27","message":"28","stack":"29"},{"When clicking ‘Execute workflow’":"30","Create a record":"31"},{},"Create a record",{},["32"],{},{},{},{"version":1,"establishedAt":1792998291094,"source":"33","triggerNode":"34","redaction":"35","credentials":"36"},"inclusive","When clicking ‘Execute workflow’","warning","Field \\"Target Launch Date\\" cannot accept the provided value. Consider using 'Typecast' option",{},{"itemIndex":0},"regular","NodeApiError",{"parameters":"37","type":"38","typeVersion":2.2,"position":"39","id":"40","name":"10","credentials":"41"},["42"],"422","Your request is invalid or could not be processed by the service","NodeApiError: Your request is invalid or could not be processed by the service\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/authentication.ts:329:10)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/factory.ts:179:11)\\n    at ExecuteContext.apiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/transport/index.ts:50:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:84:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:18)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:10)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:27",["43"],["44"],{"node":"45","data":"46","source":"47"},"manual",{"name":"10","type":"38"},{"version":2,"production":false,"manual":false},"U2FsdGVkX19cMCfh8lnvoKroupXmZw1pPX7n4XlQLyP5bXOQtbN4N3Fenz/f/7HapMx0/P2Y6u5qvthAicLccZAyR0tGSWOnst7+c4pc1djtZ7muudcUMa2MzKlfLCuQKTvcVDBpSdXUI4bqa6Z0jDGwUNa7AiYzHva3JuOnD5eDe3R69Tast0igXPcxcLqh/NVpSi0BrY6o1f97GaOzaqS1QWzPLO8Jv4u6MO7sXVyBXrIEw4qY17K2PR00eBrhm3ywCmYVtTelcPO+8/efclcSnc08CpMA1BRwU2GOtOLDIRbRtaGwELKaNgV/zKjJM9NaZ1CRuxN21JeRftfXNbStsAuxyYf/Up2CaSD/4e2Y5vGyv4pvmwh1LR/57FlJ4Bjrq9vnGKiLWoCbzlZ3F0ILWos9x3qwrve79OQpZHkDW5Jh13HqUj43yG6JDFerO3iL99NLI3QHE73zlWox7brkmDygElpFn0kYkGSNBrptJzTnv8t65UXhz+LaZFekSERwrD6f6BDZu3twfMwn6timEnKhhzIg5yS+fMfp638KSta/4+foFe1S3wUEuY+v",{"authentication":"48","resource":"49","operation":"50","base":"51","table":"52","columns":"53","options":"54"},"n8n-nodes-base.airtable",[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"55"},"422 - {\\"error\\":{\\"type\\":\\"INVALID_VALUE_FOR_COLUMN\\",\\"message\\":\\"Field \\\\\\"Target Launch Date\\\\\\" cannot accept the provided value\\"}}",{"startTime":1792998008240,"executionIndex":0,"source":"56","hints":"57","executionTime":81,"executionStatus":"58","data":"59"},{"startTime":1792998291828,"executionIndex":1,"source":"60","hints":"61","executionTime":997,"executionStatus":"62","error":"63"},{"parameters":"64","type":"38","typeVersion":2.2,"position":"65","id":"40","name":"10","credentials":"66"},{"main":"67"},{"main":"60"},"airtableTokenApi","record","create",{"__rl":true,"value":"68","mode":"69","cachedResultName":"70","cachedResultUrl":"71"},{"__rl":true,"value":"72","mode":"69","cachedResultName":"73","cachedResultUrl":"74"},{"mappingMode":"75","value":"76","matchingColumns":"77","schema":"78","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"79","name":"80"},[],[],"success",{"main":"81"},["82"],[],"error",{"level":"19","shouldReport":true,"description":"20","tags":"21","timestamp":1792998292824,"context":"22","functionality":"23","name":"24","node":"25","messages":"26","httpCode":"27","message":"28","stack":"29"},{"authentication":"48","resource":"49","operation":"50","base":"83","table":"84","columns":"85","options":"86"},[-240,-1168],{"airtableTokenApi":"87"},["88"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"89","Description":"90","Target Launch Date":"91"},[],["92","93","94","95","96","97","98","99","100","101","102","103","104"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",["105"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},{"__rl":true,"value":"68","mode":"69","cachedResultName":"70","cachedResultUrl":"71"},{"__rl":true,"value":"72","mode":"69","cachedResultName":"73","cachedResultUrl":"74"},{"mappingMode":"75","value":"106","matchingColumns":"107","schema":"108","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"79","name":"80"},["109"],"Create Module for n8n Course","for everyone who want to familiarize the n8n","={{ $today }}",{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"115","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"117","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"121","displayName":"121","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"122","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"126","displayName":"126","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},["130"],{"Project Name":"89","Description":"90","Target Launch Date":"91"},[],["131","132","133","134","135","136","137","138","139","140","141","142","143"],{"json":"144","pairedItem":"145"},"Project Name","string","Description","Status","options",["146","147","148","149","150"],"Priority",["151","152","153"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"json":"144","pairedItem":"154"},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"155","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"156","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"121","displayName":"121","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"122","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"126","displayName":"126","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{},{"item":0},{"name":"157","value":"157"},{"name":"158","value":"158"},{"name":"159","value":"159"},{"name":"160","value":"160"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"name":"163","value":"163"},{"name":"164","value":"164"},{"item":0},["165","166","167","168","169"],["170","171","172"],"Planning","In Progress","At Risk","On Hold","Completed","High","Medium","Low",{"name":"157","value":"157"},{"name":"158","value":"158"},{"name":"159","value":"159"},{"name":"160","value":"160"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"name":"163","value":"163"},{"name":"164","value":"164"}]	fd70970e-ff4e-443f-abe1-b95c77d70388
21	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Description":"for everyone who want to familiarize the n8n","Target Launch Date":"={{ $today }}","Status":"In Progress","Priority":"High","Start Date":"={{ $today }}"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"ce5e286fd4f32545ed7e6ef6ffb7501375ea88cd50d243086e73f665002d676b",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","shouldReport":true,"description":"20","tags":"21","timestamp":1792998355473,"context":"22","functionality":"23","name":"24","node":"25","messages":"26","httpCode":"27","message":"28","stack":"29"},{"When clicking ‘Execute workflow’":"30","Create a record":"31"},{},"Create a record",{},["32"],{},{},{},{"version":1,"establishedAt":1792998351602,"source":"33","triggerNode":"34","redaction":"35","credentials":"36"},"inclusive","When clicking ‘Execute workflow’","warning","Field \\"Target Launch Date\\" cannot accept the provided value. Consider using 'Typecast' option",{},{"itemIndex":0},"regular","NodeApiError",{"parameters":"37","type":"38","typeVersion":2.2,"position":"39","id":"40","name":"10","credentials":"41"},["42"],"422","Your request is invalid or could not be processed by the service","NodeApiError: Your request is invalid or could not be processed by the service\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/authentication.ts:329:10)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/factory.ts:179:11)\\n    at ExecuteContext.apiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/transport/index.ts:50:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:84:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:18)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:10)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:27",["43"],["44"],{"node":"45","data":"46","source":"47"},"manual",{"name":"10","type":"38"},{"version":2,"production":false,"manual":false},"U2FsdGVkX18GggJz2ZEyD8noI6lCB2ON5XjvCtfUAnj9+aYm2paF4s86ywOnW7sGX2L7oPpPDvOJla851WZah5WZ/Kx9sopUNzov/wxnk4IQpTg5QeSMKk2iShcbf/dHseiqyLx+j1CnvXCCPn49bBMM7OJ6L3v0CAX6USyoUYW4pIrMzF3FUmnVuXgmOZyAFM1HpuBW2YXdU2Mm8m9z46aMuIkZsrH0OR2d6ajljw7j9NFVEvVcETDpoL/33mOIURs6T4PSu1jh10eljk7ASW3uzwmfqueyMdJVmFvIQcCQdAqyp0GHFZi4u5wA+1oM19IQR7aLJHu0ydizEse+c24avSBRmt86YtaI/5xN7YANDfmHNf7pkOCgsE3p5qt8U/Pz0Zh6e+p1CBvWGyKy8luKrctdYitQuoMhp0cObRgKmKlSqkxUmXI9WOHhc1TtOKzXqKr5InUhS3e9kneXnCZ4Ml8yXK65e2/VpEHe+fg6gfX9xbm0yBTapB53TvdjWuGhp4UF0j3A2OYD9w1kkPyqF31p3nZd87vFtX6bbaPhHKNep1fsygMEUu5TjEyc",{"authentication":"48","resource":"49","operation":"50","base":"51","table":"52","columns":"53","options":"54"},"n8n-nodes-base.airtable",[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"55"},"422 - {\\"error\\":{\\"type\\":\\"INVALID_VALUE_FOR_COLUMN\\",\\"message\\":\\"Field \\\\\\"Target Launch Date\\\\\\" cannot accept the provided value\\"}}",{"startTime":1792998008240,"executionIndex":0,"source":"56","hints":"57","executionTime":81,"executionStatus":"58","data":"59"},{"startTime":1792998354345,"executionIndex":1,"source":"60","hints":"61","executionTime":1130,"executionStatus":"62","error":"63"},{"parameters":"64","type":"38","typeVersion":2.2,"position":"65","id":"40","name":"10","credentials":"66"},{"main":"67"},{"main":"60"},"airtableTokenApi","record","create",{"__rl":true,"value":"68","mode":"69","cachedResultName":"70","cachedResultUrl":"71"},{"__rl":true,"value":"72","mode":"69","cachedResultName":"73","cachedResultUrl":"74"},{"mappingMode":"75","value":"76","matchingColumns":"77","schema":"78","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"79","name":"80"},[],[],"success",{"main":"81"},["82"],[],"error",{"level":"19","shouldReport":true,"description":"20","tags":"21","timestamp":1792998355473,"context":"22","functionality":"23","name":"24","node":"25","messages":"26","httpCode":"27","message":"28","stack":"29"},{"authentication":"48","resource":"49","operation":"50","base":"83","table":"84","columns":"85","options":"86"},[-240,-1168],{"airtableTokenApi":"87"},["88"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"89","Description":"90","Target Launch Date":"91","Status":"92","Priority":"93","Start Date":"91"},[],["94","95","96","97","98","99","100","101","102","103","104","105","106"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",["107"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},{"__rl":true,"value":"68","mode":"69","cachedResultName":"70","cachedResultUrl":"71"},{"__rl":true,"value":"72","mode":"69","cachedResultName":"73","cachedResultUrl":"74"},{"mappingMode":"75","value":"108","matchingColumns":"109","schema":"110","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"79","name":"80"},["111"],"Create Module for n8n Course","for everyone who want to familiarize the n8n","={{ $today }}","In Progress","High",{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"117","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"122","displayName":"122","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"126","readOnly":false,"removed":false},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"130","displayName":"130","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"131","displayName":"131","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},["132"],{"Project Name":"89","Description":"90","Target Launch Date":"91","Status":"92","Priority":"93","Start Date":"91"},[],["133","134","135","136","137","138","139","140","141","142","143","144","145"],{"json":"146","pairedItem":"147"},"Project Name","string","Description","Status","options",["148","149","150","151","152"],"Priority",["153","154","155"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"json":"146","pairedItem":"156"},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"157","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"158","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"122","displayName":"122","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"126","readOnly":false,"removed":false},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"130","displayName":"130","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"131","displayName":"131","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{},{"item":0},{"name":"159","value":"159"},{"name":"92","value":"92"},{"name":"160","value":"160"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"name":"93","value":"93"},{"name":"163","value":"163"},{"name":"164","value":"164"},{"item":0},["165","166","167","168","169"],["170","171","172"],"Planning","At Risk","On Hold","Completed","Medium","Low",{"name":"159","value":"159"},{"name":"92","value":"92"},{"name":"160","value":"160"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"name":"93","value":"93"},{"name":"163","value":"163"},{"name":"164","value":"164"}]	a960cc2b-1b8b-491d-bbee-bff1f8e4f80c
24	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Description":"for everyone who want to familiarize the n8n","Target Launch Date":"={{ $today }}","Status":"In Progress","Priority":"High","Start Date":"={{ $today }}"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"ef959d5666014022e8450a783449d9534ddfa0d8b331a124d6b2f3bc161c3a01",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","shouldReport":true,"description":"20","tags":"21","timestamp":1792998388456,"context":"22","functionality":"23","name":"24","node":"25","messages":"26","httpCode":"27","message":"28","stack":"29"},{"When clicking ‘Execute workflow’":"30","Create a record":"31"},{},"Create a record",{},["32"],{},{},{},{"version":1,"establishedAt":1792998383030,"source":"33","triggerNode":"34","redaction":"35","credentials":"36"},"inclusive","When clicking ‘Execute workflow’","warning","Field \\"Target Launch Date\\" cannot accept the provided value. Consider using 'Typecast' option",{},{"itemIndex":0},"regular","NodeApiError",{"parameters":"37","type":"38","typeVersion":2.2,"position":"39","id":"40","name":"10","credentials":"41"},["42"],"422","Your request is invalid or could not be processed by the service","NodeApiError: Your request is invalid or could not be processed by the service\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/authentication.ts:329:10)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/factory.ts:179:11)\\n    at ExecuteContext.apiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/transport/index.ts:50:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:84:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:18)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:10)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:27",["43"],["44"],{"node":"45","data":"46","source":"47"},"manual",{"name":"10","type":"38"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1/4jfLAqPclgg0rOQ0zHxER/AUXREMnX8ChH6pvR49P0f+iOZjrZMR42fwKdqHPlYusInNSl1lCgau08z4v4n3VL/LqCHQioN+coT6iM0o8IWwRQCfNpLYH4WDXeZ+4SvxkDpxkeCDLL4jv8dwtm/PJ4YqcrXZFUzJogMOlfbhE/LwnDYfRUJCE9qXqTR9YAUUzTGDcZ1Z8D54CmpLbuvs9Uku3WywQS5UHPV3KbpXojqxYwOp51SK5q8hjhm4vBEZNWBaX3CjwLsb50Me/enlhigxbkunZXZ4+hYu7k2P8h4Td1mjrmR6AQhHH69GrsQzX7Os5EdwUE1GAT6CfOxGhQ3esPo9n4AuKdCgD4tYvjgWcU1JyOx+SUfdae9+tMbG7hzQIPofkhwnv1c4b2zDgcNtXeIcoTtpxW5CT2J+F9vwvWeOrmF4HAEXoOvr65/4hTs0KqjopBb5Al1e1VA2fOAfH2P/aOjTD2oQKT5VMSjAHWnOhIeYUDWzrHOLjgULkOP4W3uLSC1sh1F1DWanKnfRddyuTF2HQua6Sqb8GwOXnqrQmrdF2",{"authentication":"48","resource":"49","operation":"50","base":"51","table":"52","columns":"53","options":"54"},"n8n-nodes-base.airtable",[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"55"},"422 - {\\"error\\":{\\"type\\":\\"INVALID_VALUE_FOR_COLUMN\\",\\"message\\":\\"Field \\\\\\"Target Launch Date\\\\\\" cannot accept the provided value\\"}}",{"startTime":1792998008240,"executionIndex":0,"source":"56","hints":"57","executionTime":81,"executionStatus":"58","data":"59"},{"startTime":1792998386213,"executionIndex":1,"source":"60","hints":"61","executionTime":2244,"executionStatus":"62","error":"63"},{"parameters":"64","type":"38","typeVersion":2.2,"position":"65","id":"40","name":"10","credentials":"66"},{"main":"67"},{"main":"60"},"airtableTokenApi","record","create",{"__rl":true,"value":"68","mode":"69","cachedResultName":"70","cachedResultUrl":"71"},{"__rl":true,"value":"72","mode":"69","cachedResultName":"73","cachedResultUrl":"74"},{"mappingMode":"75","value":"76","matchingColumns":"77","schema":"78","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"79","name":"80"},[],[],"success",{"main":"81"},["82"],[],"error",{"level":"19","shouldReport":true,"description":"20","tags":"21","timestamp":1792998388456,"context":"22","functionality":"23","name":"24","node":"25","messages":"26","httpCode":"27","message":"28","stack":"29"},{"authentication":"48","resource":"49","operation":"50","base":"83","table":"84","columns":"85","options":"86"},[-240,-1168],{"airtableTokenApi":"87"},["88"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"89","Description":"90","Target Launch Date":"91","Status":"92","Priority":"93","Start Date":"91"},[],["94","95","96","97","98","99","100","101","102","103","104","105","106"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",["107"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},{"__rl":true,"value":"68","mode":"69","cachedResultName":"70","cachedResultUrl":"71"},{"__rl":true,"value":"72","mode":"69","cachedResultName":"73","cachedResultUrl":"74"},{"mappingMode":"75","value":"108","matchingColumns":"109","schema":"110","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"79","name":"80"},["111"],"Create Module for n8n Course","for everyone who want to familiarize the n8n","={{ $today }}","In Progress","High",{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"117","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"122","displayName":"122","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"126","readOnly":false,"removed":false},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"130","displayName":"130","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"131","displayName":"131","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},["132"],{"Project Name":"89","Description":"90","Target Launch Date":"91","Status":"92","Priority":"93","Start Date":"91"},[],["133","134","135","136","137","138","139","140","141","142","143","144","145"],{"json":"146","pairedItem":"147"},"Project Name","string","Description","Status","options",["148","149","150","151","152"],"Priority",["153","154","155"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"json":"146","pairedItem":"156"},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"157","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"158","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"122","displayName":"122","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"126","readOnly":false,"removed":false},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"130","displayName":"130","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"131","displayName":"131","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{},{"item":0},{"name":"159","value":"159"},{"name":"92","value":"92"},{"name":"160","value":"160"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"name":"93","value":"93"},{"name":"163","value":"163"},{"name":"164","value":"164"},{"item":0},["165","166","167","168","169"],["170","171","172"],"Planning","At Risk","On Hold","Completed","Medium","Low",{"name":"159","value":"159"},{"name":"92","value":"92"},{"name":"160","value":"160"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"name":"93","value":"93"},{"name":"163","value":"163"},{"name":"164","value":"164"}]	a960cc2b-1b8b-491d-bbee-bff1f8e4f80c
23	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Description":"for everyone who want to familiarize the n8n","Target Launch Date":"={{ $today }}","Status":"In Progress","Priority":"High","Start Date":"={{ $today }}"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-416,-1152],"id":"40d4d9c3-1202-4eb5-811e-58e7498b5613","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"e269e01e9cf18917cca526f313b6c62959ddfada6e3f44967b5e3c1d808e8313",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","shouldReport":true,"description":"20","tags":"21","timestamp":1792998375025,"context":"22","functionality":"23","name":"24","node":"25","messages":"26","httpCode":"27","message":"28","stack":"29"},{"When clicking ‘Execute workflow’":"30","Create a record":"31"},{},"Create a record",{},["32"],{},{},{},{"version":1,"establishedAt":1792998368523,"source":"33","triggerNode":"34","redaction":"35","credentials":"36"},"inclusive","When clicking ‘Execute workflow’","warning","Field \\"Target Launch Date\\" cannot accept the provided value. Consider using 'Typecast' option",{},{"itemIndex":0},"regular","NodeApiError",{"parameters":"37","type":"38","typeVersion":2.2,"position":"39","id":"40","name":"10","credentials":"41"},["42"],"422","Your request is invalid or could not be processed by the service","NodeApiError: Your request is invalid or could not be processed by the service\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/authentication.ts:329:10)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/factory.ts:179:11)\\n    at ExecuteContext.apiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/transport/index.ts:50:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:84:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:18)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:10)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:27",["43"],["44"],{"node":"45","data":"46","source":"47"},"manual",{"name":"10","type":"38"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1/IkyPHTl9CeA+SzOntAY0W4Dv8m9vbYRhp6wNGII6nt27FXR755Du7Sbwm0Pu1gioI+3jVxgQAAmbW7WAF53zhIzZ+todP5jaxu4h17I85U6qhZL95YzOIQ+92t8T78koGcPUBk2PxBbxVRFfgD6CFZhDNlQLOvRexaMF8GXRq1SK5wTGQq9EOOYYXV8QjukCfOAreTYgi7QzJdSqXSFugTtbVNCa1Tmwt43CIi3kmFTmJEv7Fk72ej4p2AwEBA/hnvdz4UcORzjQJ9J5Olbcj53PXFSMdKwgVpLttt12nL89/g7UZ4ID0igU0nBvoxQX14Gc35uWztxhevbfdQb8GObsykGayT1Oc4M08M+laaCucvX6M8PETy1P6JzZ8yIdAL27awwAqLTme5/sX2XI1evPKRdRi21i+fDcoAOLtmfM6IswDPPK+fgROY3dVn1/cUhWdRlGrEE1YUNHAQDh57EfyDw354V/IWLH3FltoaHMUjemEL+0dnTQh9OuO+VBsu/NHZHvNb8V7AonssWQMFc356aLE9UCgX6DnMQXwg/+IvTgXTgAj",{"authentication":"48","resource":"49","operation":"50","base":"51","table":"52","columns":"53","options":"54"},"n8n-nodes-base.airtable",[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"55"},"422 - {\\"error\\":{\\"type\\":\\"INVALID_VALUE_FOR_COLUMN\\",\\"message\\":\\"Field \\\\\\"Target Launch Date\\\\\\" cannot accept the provided value\\"}}",{"startTime":1792998008240,"executionIndex":0,"source":"56","hints":"57","executionTime":81,"executionStatus":"58","data":"59"},{"startTime":1792998371913,"executionIndex":1,"source":"60","hints":"61","executionTime":3123,"executionStatus":"62","error":"63"},{"parameters":"64","type":"38","typeVersion":2.2,"position":"65","id":"40","name":"10","credentials":"66"},{"main":"67"},{"main":"60"},"airtableTokenApi","record","create",{"__rl":true,"value":"68","mode":"69","cachedResultName":"70","cachedResultUrl":"71"},{"__rl":true,"value":"72","mode":"69","cachedResultName":"73","cachedResultUrl":"74"},{"mappingMode":"75","value":"76","matchingColumns":"77","schema":"78","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"79","name":"80"},[],[],"success",{"main":"81"},["82"],[],"error",{"level":"19","shouldReport":true,"description":"20","tags":"21","timestamp":1792998375025,"context":"22","functionality":"23","name":"24","node":"25","messages":"26","httpCode":"27","message":"28","stack":"29"},{"authentication":"48","resource":"49","operation":"50","base":"83","table":"84","columns":"85","options":"86"},[-240,-1168],{"airtableTokenApi":"87"},["88"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"89","Description":"90","Target Launch Date":"91","Status":"92","Priority":"93","Start Date":"91"},[],["94","95","96","97","98","99","100","101","102","103","104","105","106"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",["107"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},{"__rl":true,"value":"68","mode":"69","cachedResultName":"70","cachedResultUrl":"71"},{"__rl":true,"value":"72","mode":"69","cachedResultName":"73","cachedResultUrl":"74"},{"mappingMode":"75","value":"108","matchingColumns":"109","schema":"110","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"79","name":"80"},["111"],"Create Module for n8n Course","for everyone who want to familiarize the n8n","={{ $today }}","In Progress","High",{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"117","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"122","displayName":"122","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"126","readOnly":false,"removed":false},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"130","displayName":"130","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"131","displayName":"131","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},["132"],{"Project Name":"89","Description":"90","Target Launch Date":"91","Status":"92","Priority":"93","Start Date":"91"},[],["133","134","135","136","137","138","139","140","141","142","143","144","145"],{"json":"146","pairedItem":"147"},"Project Name","string","Description","Status","options",["148","149","150","151","152"],"Priority",["153","154","155"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"json":"146","pairedItem":"156"},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"114","displayName":"114","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":false,"removed":false},{"id":"115","displayName":"115","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"157","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"116","options":"158","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"122","displayName":"122","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"121","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"126","readOnly":false,"removed":false},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"130","displayName":"130","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{"id":"131","displayName":"131","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"113","readOnly":true,"removed":true},{},{"item":0},{"name":"159","value":"159"},{"name":"92","value":"92"},{"name":"160","value":"160"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"name":"93","value":"93"},{"name":"163","value":"163"},{"name":"164","value":"164"},{"item":0},["165","166","167","168","169"],["170","171","172"],"Planning","At Risk","On Hold","Completed","Medium","Low",{"name":"159","value":"159"},{"name":"92","value":"92"},{"name":"160","value":"160"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"name":"93","value":"93"},{"name":"163","value":"163"},{"name":"164","value":"164"}]	a960cc2b-1b8b-491d-bbee-bff1f8e4f80c
25	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Description":"for everyone who want to familiarize the n8n","Target Launch Date":"={{ $today }}","Status":"In Progress","Priority":"High","Start Date":"={{ $today }}"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-480,-1168],"id":"ce655797-66cc-4ef1-a78d-4fa88ccd6888","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"error":"5","runData":"6","pinData":"7","lastNodeExecuted":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13","runtimeData":"14"},"411e665f2c290c1e37d8dd33bff9b88d3c24f094553039ff19e283d67f3715d2",{"level":"15","shouldReport":true,"description":"16","tags":"17","timestamp":1792998479782,"context":"18","functionality":"19","name":"20","node":"21","messages":"22","httpCode":"23","message":"24","stack":"25"},{"When clicking ‘Execute workflow’":"26","Create a record":"27"},{},"Create a record",{},["28"],{},{},{},{"version":1,"establishedAt":1792998469810,"source":"29","triggerNode":"30","redaction":"31","credentials":"32"},"warning","Field \\"Target Launch Date\\" cannot accept the provided value. Consider using 'Typecast' option",{},{"itemIndex":0},"regular","NodeApiError",{"parameters":"33","type":"34","typeVersion":2.2,"position":"35","id":"36","name":"8","credentials":"37"},["38"],"422","Your request is invalid or could not be processed by the service","NodeApiError: Your request is invalid or could not be processed by the service\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/authentication.ts:329:10)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/factory.ts:179:11)\\n    at ExecuteContext.apiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/transport/index.ts:50:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:84:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:18)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:10)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:27",["39"],["40"],{"node":"41","data":"42","source":"43"},"manual",{"name":"44","type":"45"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1+h1p5KMkmfpCFdTJj19n+73tFZW5CUUJXqjeXcdoKFLZaJ0jYjFJDFTJ2f+97TKVZMv2ojGoef4Ed+DelpYCTYlx8ua7wSs56pD1mIlNcHtzOnf6v0Yj/ETegBdLvNFA7s8cwlvt7zqtSqvuOQ5tRO0tHfn5oQPSUK8xTJUZAPcTD7tuMfrE7wx/IAA+iY5CtId0nf7UzdKa2GPqueDpCoIHAIomBwJ7lsexETaTitThDlc5ndkpjgDW4M/QDNAQxjd62ieQIiy7QvcW8GI/fm016UAc9qTVYU3t8whVNYmXw5TMHwupcdxabnANqhGG55bb7o6fU37l5pWuEVU1FiSEPFz+VR1NI9qofR2YXvkzs+VrzFNR0ijMIroHE88CJJoe0jH5L6jWtRLZlNI484C3PKjsp1fS23Y9oTSXHO1HgY+V39j4msaefDQ6XBjziTT5ykpLfYLB4qWUrI+mCcHGcwDQNZeWD6AHKzaXCxrN/u1oieFPzjYDYkFlAi5pmAbNR5MPSiYUF8UNaPRCQFpm0c8cAYN+AHlv8o/GhhQCRMpMCrIQwz",{"authentication":"46","resource":"47","operation":"48","base":"49","table":"50","columns":"51","options":"52"},"n8n-nodes-base.airtable",[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"53"},"422 - {\\"error\\":{\\"type\\":\\"INVALID_VALUE_FOR_COLUMN\\",\\"message\\":\\"Field \\\\\\"Target Launch Date\\\\\\" cannot accept the provided value\\"}}",{"startTime":1792998474465,"executionIndex":0,"source":"54","hints":"55","executionTime":6,"executionStatus":"56","data":"57"},{"startTime":1792998474473,"executionIndex":1,"source":"58","hints":"59","executionTime":5311,"executionStatus":"60","error":"61"},{"parameters":"62","type":"34","typeVersion":2.2,"position":"63","id":"36","name":"8","credentials":"64"},{"main":"65"},{"main":"58"},"When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger","airtableTokenApi","record","create",{"__rl":true,"value":"66","mode":"67","cachedResultName":"68","cachedResultUrl":"69"},{"__rl":true,"value":"70","mode":"67","cachedResultName":"71","cachedResultUrl":"72"},{"mappingMode":"73","value":"74","matchingColumns":"75","schema":"76","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"77","name":"78"},[],[],"success",{"main":"79"},["80"],[],"error",{"level":"15","shouldReport":true,"description":"16","tags":"17","timestamp":1792998479782,"context":"18","functionality":"19","name":"20","node":"21","messages":"22","httpCode":"23","message":"24","stack":"25"},{"authentication":"46","resource":"47","operation":"48","base":"81","table":"82","columns":"83","options":"84"},[-240,-1168],{"airtableTokenApi":"85"},["86"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"87","Description":"88","Target Launch Date":"89","Status":"90","Priority":"91","Start Date":"89"},[],["92","93","94","95","96","97","98","99","100","101","102","103","104"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",["105"],{"previousNode":"44","previousNodeOutput":0,"previousNodeRun":0},{"__rl":true,"value":"66","mode":"67","cachedResultName":"68","cachedResultUrl":"69"},{"__rl":true,"value":"70","mode":"67","cachedResultName":"71","cachedResultUrl":"72"},{"mappingMode":"73","value":"106","matchingColumns":"107","schema":"108","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"77","name":"78"},["109"],"Create Module for n8n Course","for everyone who want to familiarize the n8n","={{ $today }}","In Progress","High",{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"115","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"117","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"121","displayName":"121","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"122","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"126","displayName":"126","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},["130"],{"Project Name":"87","Description":"88","Target Launch Date":"89","Status":"90","Priority":"91","Start Date":"89"},[],["131","132","133","134","135","136","137","138","139","140","141","142","143"],{"json":"144","pairedItem":"145"},"Project Name","string","Description","Status","options",["146","147","148","149","150"],"Priority",["151","152","153"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"json":"144","pairedItem":"154"},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"155","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"156","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"121","displayName":"121","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"122","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"126","displayName":"126","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{},{"item":0},{"name":"157","value":"157"},{"name":"90","value":"90"},{"name":"158","value":"158"},{"name":"159","value":"159"},{"name":"160","value":"160"},{"name":"91","value":"91"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"item":0},["163","164","165","166","167"],["168","169","170"],"Planning","At Risk","On Hold","Completed","Medium","Low",{"name":"157","value":"157"},{"name":"90","value":"90"},{"name":"158","value":"158"},{"name":"159","value":"159"},{"name":"160","value":"160"},{"name":"91","value":"91"},{"name":"161","value":"161"},{"name":"162","value":"162"}]	f7dc48b7-b241-4ab9-a2f3-e4cf42100e1c
27	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Description":"for everyone who want to familiarize the n8n","Target Launch Date":"={{ $today }}","Status":"In Progress","Priority":"High","Start Date":"={{ $today }}"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-480,-1168],"id":"ce655797-66cc-4ef1-a78d-4fa88ccd6888","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"error":"5","runData":"6","pinData":"7","lastNodeExecuted":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13","runtimeData":"14"},"d719a8e6bbb675f684695b5e934ae47a3d099ca333e13ec194a7a5a8c27317a5",{"level":"15","shouldReport":true,"description":"16","tags":"17","timestamp":1792998494331,"context":"18","functionality":"19","name":"20","node":"21","messages":"22","httpCode":"23","message":"24","stack":"25"},{"When clicking ‘Execute workflow’":"26","Create a record":"27"},{},"Create a record",{},["28"],{},{},{},{"version":1,"establishedAt":1792998489978,"source":"29","triggerNode":"30","redaction":"31","credentials":"32"},"warning","Field \\"Target Launch Date\\" cannot accept the provided value. Consider using 'Typecast' option",{},{"itemIndex":0},"regular","NodeApiError",{"parameters":"33","type":"34","typeVersion":2.2,"position":"35","id":"36","name":"8","credentials":"37"},["38"],"422","Your request is invalid or could not be processed by the service","NodeApiError: Your request is invalid or could not be processed by the service\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/authentication.ts:329:10)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/factory.ts:179:11)\\n    at ExecuteContext.apiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/transport/index.ts:50:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:84:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:18)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:10)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:27",["39"],["40"],{"node":"41","data":"42","source":"43"},"manual",{"name":"44","type":"45"},{"version":2,"production":false,"manual":false},"U2FsdGVkX18mMOIaNFM5SiljNxhr2zVjy91PiKViMODqvkDCmkCeshRSnYzyF6sihd7lyacaW196rMhKTWVum23zmvPi8qZVMW4WfOMzmy0bB5q5ANC4576ABjEZgidS/Lo44iKgbV1pnyOEb4Lv2SOhjcOhVEtUgg/Cu3/nUnHRBrl8PYoNllPuswI5sDX2izbQPQQ+OTfpipVUE+yqQE+wonv/m8lA5BSTolxaX62QvnkKp6IyqEUwS7n6zmq88s3karCIVf1hhXXpAv9p86ckYCxZLZa23bMydNWBX1SA4t1BIcsNxlz9CDnLdu+7rncvjLLuNioIJ/nnb10voSG54lUJS4lMzTgj4O99j8OpWXsjHP8dBlV8tKjYHnv8edNg1mRFVX2Mkkgvb8TPmFBYhDJN1pZ2JVEYQGbSn93aVT9XomOxkVYC7YtsoNeSJf41cWp8KlTV2W1evEmkjVompGGseggFm+Hn+6GDpxoUxA6g7Syhl9q9aE+0POhxBQ1dv3p1mCZiXhDQARA5vicG8zAEkvdQLv2JvowRc+82A56VWhBLomj6XczxCMM/",{"authentication":"46","resource":"47","operation":"48","base":"49","table":"50","columns":"51","options":"52"},"n8n-nodes-base.airtable",[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"53"},"422 - {\\"error\\":{\\"type\\":\\"INVALID_VALUE_FOR_COLUMN\\",\\"message\\":\\"Field \\\\\\"Target Launch Date\\\\\\" cannot accept the provided value\\"}}",{"startTime":1792998493145,"executionIndex":0,"source":"54","hints":"55","executionTime":2,"executionStatus":"56","data":"57"},{"startTime":1792998493151,"executionIndex":1,"source":"58","hints":"59","executionTime":1182,"executionStatus":"60","error":"61"},{"parameters":"62","type":"34","typeVersion":2.2,"position":"63","id":"36","name":"8","credentials":"64"},{"main":"65"},{"main":"58"},"When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger","airtableTokenApi","record","create",{"__rl":true,"value":"66","mode":"67","cachedResultName":"68","cachedResultUrl":"69"},{"__rl":true,"value":"70","mode":"67","cachedResultName":"71","cachedResultUrl":"72"},{"mappingMode":"73","value":"74","matchingColumns":"75","schema":"76","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"77","name":"78"},[],[],"success",{"main":"79"},["80"],[],"error",{"level":"15","shouldReport":true,"description":"16","tags":"17","timestamp":1792998494331,"context":"18","functionality":"19","name":"20","node":"21","messages":"22","httpCode":"23","message":"24","stack":"25"},{"authentication":"46","resource":"47","operation":"48","base":"81","table":"82","columns":"83","options":"84"},[-240,-1168],{"airtableTokenApi":"85"},["86"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"87","Description":"88","Target Launch Date":"89","Status":"90","Priority":"91","Start Date":"89"},[],["92","93","94","95","96","97","98","99","100","101","102","103","104"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",["105"],{"previousNode":"44","previousNodeOutput":0,"previousNodeRun":0},{"__rl":true,"value":"66","mode":"67","cachedResultName":"68","cachedResultUrl":"69"},{"__rl":true,"value":"70","mode":"67","cachedResultName":"71","cachedResultUrl":"72"},{"mappingMode":"73","value":"106","matchingColumns":"107","schema":"108","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"77","name":"78"},["109"],"Create Module for n8n Course","for everyone who want to familiarize the n8n","={{ $today }}","In Progress","High",{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"115","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"117","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"121","displayName":"121","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"122","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"126","displayName":"126","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},["130"],{"Project Name":"87","Description":"88","Target Launch Date":"89","Status":"90","Priority":"91","Start Date":"89"},[],["131","132","133","134","135","136","137","138","139","140","141","142","143"],{"json":"144","pairedItem":"145"},"Project Name","string","Description","Status","options",["146","147","148","149","150"],"Priority",["151","152","153"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"json":"144","pairedItem":"154"},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"155","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"156","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"121","displayName":"121","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"122","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"126","displayName":"126","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{},{"item":0},{"name":"157","value":"157"},{"name":"90","value":"90"},{"name":"158","value":"158"},{"name":"159","value":"159"},{"name":"160","value":"160"},{"name":"91","value":"91"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"item":0},["163","164","165","166","167"],["168","169","170"],"Planning","At Risk","On Hold","Completed","Medium","Low",{"name":"157","value":"157"},{"name":"90","value":"90"},{"name":"158","value":"158"},{"name":"159","value":"159"},{"name":"160","value":"160"},{"name":"91","value":"91"},{"name":"161","value":"161"},{"name":"162","value":"162"}]	f7dc48b7-b241-4ab9-a2f3-e4cf42100e1c
26	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Description":"for everyone who want to familiarize the n8n","Target Launch Date":"={{ $today }}","Status":"In Progress","Priority":"High","Start Date":"={{ $today }}"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-480,-1168],"id":"ce655797-66cc-4ef1-a78d-4fa88ccd6888","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"error":"5","runData":"6","pinData":"7","lastNodeExecuted":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13","runtimeData":"14"},"daa9edbf0da2b4a092d6528d6e02b7c5b03689741cf7e8d01ab5bdbc6d06344b",{"level":"15","shouldReport":true,"description":"16","tags":"17","timestamp":1792998493237,"context":"18","functionality":"19","name":"20","node":"21","messages":"22","httpCode":"23","message":"24","stack":"25"},{"When clicking ‘Execute workflow’":"26","Create a record":"27"},{},"Create a record",{},["28"],{},{},{},{"version":1,"establishedAt":1792998488369,"source":"29","triggerNode":"30","redaction":"31","credentials":"32"},"warning","Field \\"Target Launch Date\\" cannot accept the provided value. Consider using 'Typecast' option",{},{"itemIndex":0},"regular","NodeApiError",{"parameters":"33","type":"34","typeVersion":2.2,"position":"35","id":"36","name":"8","credentials":"37"},["38"],"422","Your request is invalid or could not be processed by the service","NodeApiError: Your request is invalid or could not be processed by the service\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/authentication.ts:329:10)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/factory.ts:179:11)\\n    at ExecuteContext.apiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/transport/index.ts:50:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:84:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:18)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:10)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:27",["39"],["40"],{"node":"41","data":"42","source":"43"},"manual",{"name":"44","type":"45"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1+vHgByjwfi6Vtb6AQJkqK04LCSOdssA1aNEjhxQK5j/qoJNn5HYnSIP8+JmRDnhOBY3QHrDzCq44cst+k+F2p+zOECflMVN+rQK+rFEl44pU2HdKy1FZ3/Qwxh00NvXJLe6cp2oFumLZW0xEwmvIg4LVhRwBB85DuLU2PFerRwIg72sfxL8n9ObE04hcH6uDZLrc2eH7+f5X1Vyzt6VCwN4pnNvE0tVY6+9mmLxSlZJwqo6M8l4eyEF4/R80VKqkPJL+brrsl3RP+eCChY8OzfGg26USAu649y+GzQ7F4vYWysqUlWOB8v/uFeBy9ZXvcJukZ/IGGzoDjFxmqbaDkCLWdtkSoYJxE8YlgziK4DGhc5PCo4vEQ0x/3j82E5f6SRBy+DPT08ExzfsuG7RCxLKJZHWpDhSPtNB160K7JShajRZ1tHfw8yZgcuseNgf6L8cCdgy7Fi1zOlORRyE+xZFQsir+Gtov+b0oiZC5nFPuFBFE/AVYRLlE71x0e9EoKV8XnBYUn48Or00dWHWBII0+Z7pGUQLBoaljsDni2HOIJcYmQ/nHh1",{"authentication":"46","resource":"47","operation":"48","base":"49","table":"50","columns":"51","options":"52"},"n8n-nodes-base.airtable",[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"53"},"422 - {\\"error\\":{\\"type\\":\\"INVALID_VALUE_FOR_COLUMN\\",\\"message\\":\\"Field \\\\\\"Target Launch Date\\\\\\" cannot accept the provided value\\"}}",{"startTime":1792998491213,"executionIndex":0,"source":"54","hints":"55","executionTime":1,"executionStatus":"56","data":"57"},{"startTime":1792998491214,"executionIndex":1,"source":"58","hints":"59","executionTime":2029,"executionStatus":"60","error":"61"},{"parameters":"62","type":"34","typeVersion":2.2,"position":"63","id":"36","name":"8","credentials":"64"},{"main":"65"},{"main":"58"},"When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger","airtableTokenApi","record","create",{"__rl":true,"value":"66","mode":"67","cachedResultName":"68","cachedResultUrl":"69"},{"__rl":true,"value":"70","mode":"67","cachedResultName":"71","cachedResultUrl":"72"},{"mappingMode":"73","value":"74","matchingColumns":"75","schema":"76","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"77","name":"78"},[],[],"success",{"main":"79"},["80"],[],"error",{"level":"15","shouldReport":true,"description":"16","tags":"17","timestamp":1792998493237,"context":"18","functionality":"19","name":"20","node":"21","messages":"22","httpCode":"23","message":"24","stack":"25"},{"authentication":"46","resource":"47","operation":"48","base":"81","table":"82","columns":"83","options":"84"},[-240,-1168],{"airtableTokenApi":"85"},["86"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"87","Description":"88","Target Launch Date":"89","Status":"90","Priority":"91","Start Date":"89"},[],["92","93","94","95","96","97","98","99","100","101","102","103","104"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",["105"],{"previousNode":"44","previousNodeOutput":0,"previousNodeRun":0},{"__rl":true,"value":"66","mode":"67","cachedResultName":"68","cachedResultUrl":"69"},{"__rl":true,"value":"70","mode":"67","cachedResultName":"71","cachedResultUrl":"72"},{"mappingMode":"73","value":"106","matchingColumns":"107","schema":"108","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"77","name":"78"},["109"],"Create Module for n8n Course","for everyone who want to familiarize the n8n","={{ $today }}","In Progress","High",{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"115","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"117","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"121","displayName":"121","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"122","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"126","displayName":"126","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},["130"],{"Project Name":"87","Description":"88","Target Launch Date":"89","Status":"90","Priority":"91","Start Date":"89"},[],["131","132","133","134","135","136","137","138","139","140","141","142","143"],{"json":"144","pairedItem":"145"},"Project Name","string","Description","Status","options",["146","147","148","149","150"],"Priority",["151","152","153"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"json":"144","pairedItem":"154"},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"155","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"156","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"121","displayName":"121","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"122","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"126","displayName":"126","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{},{"item":0},{"name":"157","value":"157"},{"name":"90","value":"90"},{"name":"158","value":"158"},{"name":"159","value":"159"},{"name":"160","value":"160"},{"name":"91","value":"91"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"item":0},["163","164","165","166","167"],["168","169","170"],"Planning","At Risk","On Hold","Completed","Medium","Low",{"name":"157","value":"157"},{"name":"90","value":"90"},{"name":"158","value":"158"},{"name":"159","value":"159"},{"name":"160","value":"160"},{"name":"91","value":"91"},{"name":"161","value":"161"},{"name":"162","value":"162"}]	f7dc48b7-b241-4ab9-a2f3-e4cf42100e1c
28	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Description":"for everyone who want to familiarize the n8n","Target Launch Date":"={{ $today }}","Status":"In Progress","Priority":"High","Start Date":"={{ $today }}"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1168],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-480,-1168],"id":"ce655797-66cc-4ef1-a78d-4fa88ccd6888","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"error":"5","runData":"6","pinData":"7","lastNodeExecuted":"8"},{"contextData":"9","nodeExecutionStack":"10","metadata":"11","waitingExecution":"12","waitingExecutionSource":"13","runtimeData":"14"},"e93779918bcc341e51b4777e5d02187518f1ec4e85a98cc6a858f1419f0e4e05",{"level":"15","shouldReport":true,"description":"16","tags":"17","timestamp":1792998494965,"context":"18","functionality":"19","name":"20","node":"21","messages":"22","httpCode":"23","message":"24","stack":"25"},{"When clicking ‘Execute workflow’":"26","Create a record":"27"},{},"Create a record",{},["28"],{},{},{},{"version":1,"establishedAt":1792998491024,"source":"29","triggerNode":"30","redaction":"31","credentials":"32"},"warning","Field \\"Target Launch Date\\" cannot accept the provided value. Consider using 'Typecast' option",{},{"itemIndex":0},"regular","NodeApiError",{"parameters":"33","type":"34","typeVersion":2.2,"position":"35","id":"36","name":"8","credentials":"37"},["38"],"422","Your request is invalid or could not be processed by the service","NodeApiError: Your request is invalid or could not be processed by the service\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/authentication.ts:329:10)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/factory.ts:179:11)\\n    at ExecuteContext.apiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/transport/index.ts:50:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:84:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:18)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:10)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:27",["39"],["40"],{"node":"41","data":"42","source":"43"},"manual",{"name":"44","type":"45"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1+SWOEQBYDAn9cp7VOyNfLdv9LPRKzX3q1oPU1VuHMrLwsZBP3UN+zxFWN51vBudnM+twflbOXWTnjdzjA7i+NVroTZs2GoB1IAN/os6Ml8MlUJJ+o1vqhDWcNIlGlDH1QqlPQxpSoBTWo572oPN8LjTmO39X7eY6x5YQW+rT1uk17g8xp/dVUEUlc4BRTStVf/Td0+zst7jkUbeA/pGs+Cq11JYLL7JLhmSe/eUrLfhxXze8UKAewHnPnaxGcV3MXG0mpeqxkR42J6KnkYLTyD2ntiBgy5UUAcWkgASz3VDV1saYPEWhPu61J1tRqG8FtWnBpzYXGgwmIPN0dF8EEIT2zIeFoZUT0fIEYCKlU0PMmCcOsxmpc/oW2JUyZfuKs5sf38tcJ4+KlM9W5UwydRc9Pc7iCnwTTGNi2KXRxThgdPNcvOILQBuAX0ZAfZu+B7nzKFEftdc2sMsdPtxrQkV7dkoM7Y9nyYx7nE8w2iz9n+3bR/8q81gXOCxp8OwTdD0caaLVIrAV5PB745Am/0VXuzxuXJA5+JmXYMuBdKbrR4mubAcWte",{"authentication":"46","resource":"47","operation":"48","base":"49","table":"50","columns":"51","options":"52"},"n8n-nodes-base.airtable",[-240,-1168],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"53"},"422 - {\\"error\\":{\\"type\\":\\"INVALID_VALUE_FOR_COLUMN\\",\\"message\\":\\"Field \\\\\\"Target Launch Date\\\\\\" cannot accept the provided value\\"}}",{"startTime":1792998493561,"executionIndex":0,"source":"54","hints":"55","executionTime":51,"executionStatus":"56","data":"57"},{"startTime":1792998493617,"executionIndex":1,"source":"58","hints":"59","executionTime":1349,"executionStatus":"60","error":"61"},{"parameters":"62","type":"34","typeVersion":2.2,"position":"63","id":"36","name":"8","credentials":"64"},{"main":"65"},{"main":"58"},"When clicking ‘Execute workflow’","n8n-nodes-base.manualTrigger","airtableTokenApi","record","create",{"__rl":true,"value":"66","mode":"67","cachedResultName":"68","cachedResultUrl":"69"},{"__rl":true,"value":"70","mode":"67","cachedResultName":"71","cachedResultUrl":"72"},{"mappingMode":"73","value":"74","matchingColumns":"75","schema":"76","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"77","name":"78"},[],[],"success",{"main":"79"},["80"],[],"error",{"level":"15","shouldReport":true,"description":"16","tags":"17","timestamp":1792998494965,"context":"18","functionality":"19","name":"20","node":"21","messages":"22","httpCode":"23","message":"24","stack":"25"},{"authentication":"46","resource":"47","operation":"48","base":"81","table":"82","columns":"83","options":"84"},[-240,-1168],{"airtableTokenApi":"85"},["86"],"app64Liial0n39gc5","list","AI Project Milestone Tracker","https://airtable.com/app64Liial0n39gc5","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"87","Description":"88","Target Launch Date":"89","Status":"90","Priority":"91","Start Date":"89"},[],["92","93","94","95","96","97","98","99","100","101","102","103","104"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",["105"],{"previousNode":"44","previousNodeOutput":0,"previousNodeRun":0},{"__rl":true,"value":"66","mode":"67","cachedResultName":"68","cachedResultUrl":"69"},{"__rl":true,"value":"70","mode":"67","cachedResultName":"71","cachedResultUrl":"72"},{"mappingMode":"73","value":"106","matchingColumns":"107","schema":"108","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"77","name":"78"},["109"],"Create Module for n8n Course","for everyone who want to familiarize the n8n","={{ $today }}","In Progress","High",{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"115","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"117","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"121","displayName":"121","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"122","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"126","displayName":"126","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},["130"],{"Project Name":"87","Description":"88","Target Launch Date":"89","Status":"90","Priority":"91","Start Date":"89"},[],["131","132","133","134","135","136","137","138","139","140","141","142","143"],{"json":"144","pairedItem":"145"},"Project Name","string","Description","Status","options",["146","147","148","149","150"],"Priority",["151","152","153"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"json":"144","pairedItem":"154"},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"155","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"156","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"121","displayName":"121","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"122","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"126","displayName":"126","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{},{"item":0},{"name":"157","value":"157"},{"name":"90","value":"90"},{"name":"158","value":"158"},{"name":"159","value":"159"},{"name":"160","value":"160"},{"name":"91","value":"91"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"item":0},["163","164","165","166","167"],["168","169","170"],"Planning","At Risk","On Hold","Completed","Medium","Low",{"name":"157","value":"157"},{"name":"90","value":"90"},{"name":"158","value":"158"},{"name":"159","value":"159"},{"name":"160","value":"160"},{"name":"91","value":"91"},{"name":"161","value":"161"},{"name":"162","value":"162"}]	f7dc48b7-b241-4ab9-a2f3-e4cf42100e1c
29	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Description":"for everyone who want to familiarize the n8n","Target Launch Date":"={{ $today }}","Status":"In Progress","Priority":"High","Start Date":"={{ $today }}"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1152],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-480,-1168],"id":"ce655797-66cc-4ef1-a78d-4fa88ccd6888","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"080909071f4789f7f1f019687d1b7a51dad41ae66bd559d9cbd1bb6a08b8dcde",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","shouldReport":true,"description":"20","tags":"21","timestamp":1792998561937,"context":"22","functionality":"23","name":"24","node":"25","messages":"26","httpCode":"27","message":"28","stack":"29"},{"When clicking ‘Execute workflow’":"30","Create a record":"31"},{},"Create a record",{},["32"],{},{},{},{"version":1,"establishedAt":1792998559969,"source":"33","triggerNode":"34","redaction":"35","credentials":"36"},"inclusive","When clicking ‘Execute workflow’","warning","Field \\"Target Launch Date\\" cannot accept the provided value. Consider using 'Typecast' option",{},{"itemIndex":0},"regular","NodeApiError",{"parameters":"37","type":"38","typeVersion":2.2,"position":"39","id":"40","name":"10","credentials":"41"},["42"],"422","Your request is invalid or could not be processed by the service","NodeApiError: Your request is invalid or could not be processed by the service\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/authentication.ts:329:10)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/factory.ts:179:11)\\n    at ExecuteContext.apiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/transport/index.ts:50:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:84:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:18)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:10)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:27",["43"],["44"],{"node":"45","data":"46","source":"47"},"manual",{"name":"10","type":"38"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1/rwkhtArI3rygDqUJk/k6BGvy/d6pjQsmz8roTf2M/0W8FtqkQE8rD7GcCh7MOFfjD1usxMDXIF34CDSiSrLyXDZ7b7A+WZFh2sMhX9/NwEdMaAC3BAzi0p8o6LbD/6pqfZZoGZx4B5N4ZgmlTaVmylr7q6NyY4x3RUQG7CRH8FrDFksVukqIvpu8WFsOzJSJBxa2L3rcOF3t3NemYtSVqZ3DrKem/hMzmoEB6voSHa55nMIQyVjOjTp8OwGwXwU4652ADFe6FcZhYqEwOZak9IBeppahwVNfoCURT0fwVAeXkQmyFRTOOYeY7EtTWefmfQNJZRIA2i7T9gfv/YEV0VBjvje2fb3PvrzHy35Rd2z9qn/qMCxu9m8KSp81QaEOrkQw6HzxTJ684KRKD8ShZAGcNNOyHsy20W4QP05nc+Pn0OTW8HxNQ7RozdM9e/WFfFyA6sMMZ3/9Z+7W7VFPnj+wBgX5Jnasqq8WjPaiTczpkypvUwoJimdBnqbL4oeKwskB7c8RwF3xEYwU/8GbYP1SlqrVvB/3BXtSHV+McFlmDlj089Evr",{"authentication":"48","resource":"49","operation":"50","base":"51","table":"52","columns":"53","options":"54"},"n8n-nodes-base.airtable",[-240,-1152],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"55"},"422 - {\\"error\\":{\\"type\\":\\"INVALID_VALUE_FOR_COLUMN\\",\\"message\\":\\"Field \\\\\\"Target Launch Date\\\\\\" cannot accept the provided value\\"}}",{"startTime":1792998474465,"executionIndex":0,"source":"56","hints":"57","executionTime":6,"executionStatus":"58","data":"59"},{"startTime":1792998561042,"executionIndex":1,"source":"60","hints":"61","executionTime":897,"executionStatus":"62","error":"63"},{"parameters":"64","type":"38","typeVersion":2.2,"position":"65","id":"40","name":"10","credentials":"66"},{"main":"67"},{"main":"60"},"airtableTokenApi","record","create",{"__rl":true,"value":"68","mode":"69"},{"__rl":true,"value":"70","mode":"69","cachedResultName":"71","cachedResultUrl":"72"},{"mappingMode":"73","value":"74","matchingColumns":"75","schema":"76","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"77","name":"78"},[],[],"success",{"main":"79"},["80"],[],"error",{"level":"19","shouldReport":true,"description":"20","tags":"21","timestamp":1792998561937,"context":"22","functionality":"23","name":"24","node":"25","messages":"26","httpCode":"27","message":"28","stack":"29"},{"authentication":"48","resource":"49","operation":"50","base":"81","table":"82","columns":"83","options":"84"},[-240,-1152],{"airtableTokenApi":"85"},["86"],"app64Liial0n39gc5","list","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"87","Description":"88","Target Launch Date":"89","Status":"90","Priority":"91","Start Date":"89"},[],["92","93","94","95","96","97","98","99","100","101","102","103","104"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",["105"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},{"__rl":true,"value":"68","mode":"69"},{"__rl":true,"value":"70","mode":"69","cachedResultName":"71","cachedResultUrl":"72"},{"mappingMode":"73","value":"106","matchingColumns":"107","schema":"108","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"77","name":"78"},["109"],"Create Module for n8n Course","for everyone who want to familiarize the n8n","={{ $today }}","In Progress","High",{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"115","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"117","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"121","displayName":"121","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"122","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"126","displayName":"126","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},["130"],{"Project Name":"87","Description":"88","Target Launch Date":"89","Status":"90","Priority":"91","Start Date":"89"},[],["131","132","133","134","135","136","137","138","139","140","141","142","143"],{"json":"144","pairedItem":"145"},"Project Name","string","Description","Status","options",["146","147","148","149","150"],"Priority",["151","152","153"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"json":"144","pairedItem":"154"},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"155","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"156","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"121","displayName":"121","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"122","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"126","displayName":"126","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{},{"item":0},{"name":"157","value":"157"},{"name":"90","value":"90"},{"name":"158","value":"158"},{"name":"159","value":"159"},{"name":"160","value":"160"},{"name":"91","value":"91"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"item":0},["163","164","165","166","167"],["168","169","170"],"Planning","At Risk","On Hold","Completed","Medium","Low",{"name":"157","value":"157"},{"name":"90","value":"90"},{"name":"158","value":"158"},{"name":"159","value":"159"},{"name":"160","value":"160"},{"name":"91","value":"91"},{"name":"161","value":"161"},{"name":"162","value":"162"}]	6c7336f7-195c-4640-ab51-a612ee10e4f8
30	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create Module for n8n Course","Description":"for everyone who want to familiarize the n8n","Target Launch Date":"={{ $today }}","Status":"In Progress","Priority":"High","Start Date":"={{ $today }}"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-240,-1152],"id":"8ad13441-f964-4606-b55b-feac311610ee","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-480,-1168],"id":"ce655797-66cc-4ef1-a78d-4fa88ccd6888","name":"When clicking ‘Execute workflow’"}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"error":"7","runData":"8","pinData":"9","lastNodeExecuted":"10"},{"contextData":"11","nodeExecutionStack":"12","metadata":"13","waitingExecution":"14","waitingExecutionSource":"15","runtimeData":"16"},"20a18c950e533e8fe0615ad02445f168891395b9940a451da54b99eae5a60588",{"nodeName":"10","mode":"17"},["18","10"],{"level":"19","shouldReport":true,"description":"20","tags":"21","timestamp":1792998617894,"context":"22","functionality":"23","name":"24","node":"25","messages":"26","httpCode":"27","message":"28","stack":"29"},{"When clicking ‘Execute workflow’":"30","Create a record":"31"},{},"Create a record",{},["32"],{},{},{},{"version":1,"establishedAt":1792998612410,"source":"33","triggerNode":"34","redaction":"35","credentials":"36"},"inclusive","When clicking ‘Execute workflow’","warning","Field \\"Target Launch Date\\" cannot accept the provided value. Consider using 'Typecast' option",{},{"itemIndex":0},"regular","NodeApiError",{"parameters":"37","type":"38","typeVersion":2.2,"position":"39","id":"40","name":"10","credentials":"41"},["42"],"422","Your request is invalid or could not be processed by the service","NodeApiError: Your request is invalid or could not be processed by the service\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/authentication.ts:329:10)\\n    at processTicksAndRejections (node:internal/process/task_queues:104:5)\\n    at ExecuteContext.requestWithAuthentication (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/node-execution-context/utils/request-helpers/factory.ts:179:11)\\n    at ExecuteContext.apiRequest (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/transport/index.ts:50:9)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/record/create.operation.ts:84:25)\\n    at ExecuteContext.router (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/actions/router.ts:32:18)\\n    at ExecuteContext.execute (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-nodes-base@file++++home+runner+_work+n8n+n8n+packages+nodes-base/node_modules/n8n-nodes-base/nodes/Airtable/v2/AirtableV2.node.ts:30:10)\\n    at WorkflowExecute.executeNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1154:8)\\n    at WorkflowExecute.runNode (/usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:1456:11)\\n    at /usr/local/lib/node_modules/n8n/node_modules/.pnpm/n8n-core@file++++home+runner+_work+n8n+n8n+packages+core/node_modules/n8n-core/src/execution-engine/workflow-execute.ts:2383:27",["43"],["44"],{"node":"45","data":"46","source":"47"},"manual",{"name":"10","type":"38"},{"version":2,"production":false,"manual":false},"U2FsdGVkX19ky+LE+avjtRokpdFJatbazRXQhFhecS5Yt4goRxNf1DphxxIBl7K6b1rs5667HrmcGikAw0/IhkkCikAI8rluTI7PRqqGsZdKmGrlEt92eeHjO0x7CTYngQXO7X5Ap9BxlzQvw22GqE3GE9bxEajLy2U771OxABdKY9DfIjs04qGhcdBWvgbzgGJL7pYngQSJKeasyn+Lc1MRe1Ro9rTcEBan05YgFmsTgnuYAI2JkdH0Lc642Zct71tqCkx19d4PjSYUaisBrY0R3Q9A3Nt1MXru5QBaSGdtm+YbhLZNQ12PPmNp2jlYiYbqG73cE6Z10RBEeHHmhSV1djjDrwEurSN10N2vWfcZHwAyJaHaryGO1NNpQRAtPr7h82wzd2RZqiU/faojJ95juh/yV3aAw4yPL5TL7xAivkerTZZLJhGuNuReP3tfe6NaUvO5T82Dffl5U5z/NKMM7Rk53s13rmDOnkn6Nie4YIWreSiMmu1fxob8aF4kTYhiWbMQr3OQ8jY9i23XO53KLAd+PB0A2AzCwO4qT2/XnKvnWX64dQMpKkeKvjr3",{"authentication":"48","resource":"49","operation":"50","base":"51","table":"52","columns":"53","options":"54"},"n8n-nodes-base.airtable",[-240,-1152],"8ad13441-f964-4606-b55b-feac311610ee",{"airtableTokenApi":"55"},"422 - {\\"error\\":{\\"type\\":\\"INVALID_VALUE_FOR_COLUMN\\",\\"message\\":\\"Field \\\\\\"Target Launch Date\\\\\\" cannot accept the provided value\\"}}",{"startTime":1792998474465,"executionIndex":0,"source":"56","hints":"57","executionTime":6,"executionStatus":"58","data":"59"},{"startTime":1792998616213,"executionIndex":1,"source":"60","hints":"61","executionTime":1683,"executionStatus":"62","error":"63"},{"parameters":"64","type":"38","typeVersion":2.2,"position":"65","id":"40","name":"10","credentials":"66"},{"main":"67"},{"main":"60"},"airtableTokenApi","record","create",{"__rl":true,"value":"68","mode":"69"},{"__rl":true,"value":"70","mode":"69","cachedResultName":"71","cachedResultUrl":"72"},{"mappingMode":"73","value":"74","matchingColumns":"75","schema":"76","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"77","name":"78"},[],[],"success",{"main":"79"},["80"],[],"error",{"level":"19","shouldReport":true,"description":"20","tags":"21","timestamp":1792998617894,"context":"22","functionality":"23","name":"24","node":"25","messages":"26","httpCode":"27","message":"28","stack":"29"},{"authentication":"48","resource":"49","operation":"50","base":"81","table":"82","columns":"83","options":"84"},[-240,-1152],{"airtableTokenApi":"85"},["86"],"app64Liial0n39gc5","list","tbl1GsNXxIFcASay5","Projects","https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5","defineBelow",{"Project Name":"87","Description":"88","Target Launch Date":"89","Status":"90","Priority":"91","Start Date":"89"},[],["92","93","94","95","96","97","98","99","100","101","102","103","104"],"8lMiwdMZwMCQBiLW","Airtable Personal Access Token account",["105"],{"previousNode":"18","previousNodeOutput":0,"previousNodeRun":0},{"__rl":true,"value":"68","mode":"69"},{"__rl":true,"value":"70","mode":"69","cachedResultName":"71","cachedResultUrl":"72"},{"mappingMode":"73","value":"106","matchingColumns":"107","schema":"108","attemptToConvertTypes":false,"convertFieldsToString":false},{},{"id":"77","name":"78"},["109"],"Create Module for n8n Course","for everyone who want to familiarize the n8n","={{ $today }}","In Progress","High",{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"115","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"117","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"121","displayName":"121","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"122","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"126","displayName":"126","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},["130"],{"Project Name":"87","Description":"88","Target Launch Date":"89","Status":"90","Priority":"91","Start Date":"89"},[],["131","132","133","134","135","136","137","138","139","140","141","142","143"],{"json":"144","pairedItem":"145"},"Project Name","string","Description","Status","options",["146","147","148","149","150"],"Priority",["151","152","153"],"Start Date","dateTime","Target Launch Date","Budget","number","Milestones","array","Total Milestones","Completed Milestones","Overdue Milestones","Open Hours Remaining","Progress (%)",{"json":"144","pairedItem":"154"},{"id":"110","displayName":"110","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"112","displayName":"112","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":false,"removed":false},{"id":"113","displayName":"113","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"155","readOnly":false,"removed":false},{"id":"116","displayName":"116","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"114","options":"156","readOnly":false,"removed":false},{"id":"118","displayName":"118","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"120","displayName":"120","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"119","readOnly":false,"removed":false},{"id":"121","displayName":"121","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"122","readOnly":false,"removed":false},{"id":"123","displayName":"123","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"124","readOnly":false,"removed":false},{"id":"125","displayName":"125","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"126","displayName":"126","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"127","displayName":"127","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"128","displayName":"128","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{"id":"129","displayName":"129","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"111","readOnly":true,"removed":true},{},{"item":0},{"name":"157","value":"157"},{"name":"90","value":"90"},{"name":"158","value":"158"},{"name":"159","value":"159"},{"name":"160","value":"160"},{"name":"91","value":"91"},{"name":"161","value":"161"},{"name":"162","value":"162"},{"item":0},["163","164","165","166","167"],["168","169","170"],"Planning","At Risk","On Hold","Completed","Medium","Low",{"name":"157","value":"157"},{"name":"90","value":"90"},{"name":"158","value":"158"},{"name":"159","value":"159"},{"name":"160","value":"160"},{"name":"91","value":"91"},{"name":"161","value":"161"},{"name":"162","value":"162"}]	6c7336f7-195c-4640-ab51-a612ee10e4f8
31	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"notice":""},"type":"n8n-nodes-base.manualTrigger","typeVersion":1,"position":[-480,-1168],"id":"ce655797-66cc-4ef1-a78d-4fa88ccd6888","name":"When clicking ‘Execute workflow’"},{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create a Module for n8n course","Description":"For everyone who want to familiar with n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-256,-1168],"id":"c72a4b1f-a44a-4ba0-a243-b290e06cc208","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}}],"connections":{"When clicking ‘Execute workflow’":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{"destinationNode":"5","runNodeFilter":"6"},{"runData":"7","pinData":"8","lastNodeExecuted":"9"},{"contextData":"10","nodeExecutionStack":"11","metadata":"12","waitingExecution":"13","waitingExecutionSource":"14","runtimeData":"15"},"36b45488f1989945054e031841f3d90951c546154b26b0240924276d5a898466",{"nodeName":"9","mode":"16"},["17","9"],{"When clicking ‘Execute workflow’":"18","Create a record":"19"},{},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1792999211902,"source":"20","triggerNode":"21","redaction":"22","credentials":"23"},"inclusive","When clicking ‘Execute workflow’",["24"],["25"],"manual",{"name":"17","type":"26"},{"version":2,"production":false,"manual":false},"U2FsdGVkX1/RnLPAV22LqT3GaU8v5gmQi+PpCc6r7VVitYQ/84lWHfp69bJjkRtIMKGf8FHCTCuOXJaKppnr2hk/XN00KCoVtWCCW7eBaCuFfiyiO3DpKxnMZvW0rSAoMKJGeT9mvHr1tDVpHUatgZmLQ3qlSiLIqEURCF3gYI7YASm5ifJ4LrOuTPQJ2qjxBoIuZ/xipq1eObAOK2nH7RorwVQgSr6cAoLE60Hqb4N0Dd6o8b+SscX84EEPeHiOhTk1eB20uOvPZazyn7/uwKzh5RKlYLQLMpz3B+XeKLzBQQXrj5rMdBmE5orLQnr0OjNH67LXjl81PqJUIjDL9zZHpYIL5GQRL0h0NyjMt7ZwS3ciJ6BWnEw6seYHwPSwTWkVMNtDy8wxcMeXJFKJd9iU+MDvsyN7vluTfyFKomnd9YrVhrsjf3zp35RREylUAw8ypgROKk1538nCTK484P1SlqQN/PbuEot1Ujk8krDk/Ot6+q6iTJvzWUepLnvf2s4uS/qvAbDAeXh/iY+pQXR8REDaLjvzrcf86Fo/O106Tfz481tT9wczFQ1BLZlc",{"startTime":1792999212947,"executionIndex":0,"source":"27","hints":"28","executionTime":2,"executionStatus":"29","data":"30"},{"startTime":1792999212951,"executionIndex":1,"source":"31","hints":"32","executionTime":3000,"executionStatus":"29","data":"33"},"n8n-nodes-base.manualTrigger",[],[],"success",{"main":"34"},["35"],[],{"main":"36"},["37"],{"previousNode":"17","previousNodeOutput":0,"previousNodeRun":0},["38"],["39"],["40"],{"json":"41","pairedItem":"42"},{"json":"43","pairedItem":"44"},{},{"item":0},{"id":"45","createdTime":"46","fields":"47"},{"item":0},"recioW2VNQ1vSo96j","2026-10-26T07:20:14.000Z",{"Total Milestones":0,"Overdue Milestones":0,"Completed Milestones":0,"Description":"48","Open Hours Remaining":0,"Progress (%)":0,"Project Name":"49"},"For everyone who want to familiar with n8n","Create a Module for n8n course"]	c1b55e2b-fbb7-416b-8f43-eb6714fb3691
32	{"id":"n1jqwOzlm0darTR5","name":"My workflow","nodes":[{"parameters":{"authentication":"airtableTokenApi","resource":"record","operation":"create","base":{"__rl":true,"value":"app64Liial0n39gc5","mode":"list","cachedResultName":"AI Project Milestone Tracker","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5"},"table":{"__rl":true,"value":"tbl1GsNXxIFcASay5","mode":"list","cachedResultName":"Projects","cachedResultUrl":"https://airtable.com/app64Liial0n39gc5/tbl1GsNXxIFcASay5"},"columns":{"mappingMode":"defineBelow","value":{"Project Name":"Create a Module for n8n course","Description":"For everyone who want to familiar with n8n"},"matchingColumns":[],"schema":[{"id":"Project Name","displayName":"Project Name","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Description","displayName":"Description","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":false,"removed":false},{"id":"Status","displayName":"Status","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"Planning","value":"Planning"},{"name":"In Progress","value":"In Progress"},{"name":"At Risk","value":"At Risk"},{"name":"On Hold","value":"On Hold"},{"name":"Completed","value":"Completed"}],"readOnly":false,"removed":false},{"id":"Priority","displayName":"Priority","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"options","options":[{"name":"High","value":"High"},{"name":"Medium","value":"Medium"},{"name":"Low","value":"Low"}],"readOnly":false,"removed":false},{"id":"Start Date","displayName":"Start Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Target Launch Date","displayName":"Target Launch Date","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"dateTime","readOnly":false,"removed":false},{"id":"Budget","displayName":"Budget","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"number","readOnly":false,"removed":false},{"id":"Milestones","displayName":"Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"array","readOnly":false,"removed":false},{"id":"Total Milestones","displayName":"Total Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Completed Milestones","displayName":"Completed Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Overdue Milestones","displayName":"Overdue Milestones","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Open Hours Remaining","displayName":"Open Hours Remaining","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true},{"id":"Progress (%)","displayName":"Progress (%)","required":false,"defaultMatch":false,"canBeUsedToMatch":true,"display":true,"type":"string","readOnly":true,"removed":true}],"attemptToConvertTypes":false,"convertFieldsToString":false},"options":{}},"type":"n8n-nodes-base.airtable","typeVersion":2.2,"position":[-800,-2256],"id":"c72a4b1f-a44a-4ba0-a243-b290e06cc208","name":"Create a record","credentials":{"airtableTokenApi":{"id":"8lMiwdMZwMCQBiLW","name":"Airtable Personal Access Token account"}}},{"parameters":{"notice":"","rule":{"interval":[{"field":"days","daysInterval":1,"triggerAtHour":0,"triggerAtMinute":0}]},"misfirePolicy":"skip","misfireGraceSeconds":0,"skipDurableScheduler":false},"type":"n8n-nodes-base.scheduleTrigger","typeVersion":1.4,"position":[-976,-2256],"id":"d3b84563-e7c8-4547-8c45-9e93c62e6f22","name":"Schedule Trigger"}],"connections":{"Schedule Trigger":{"main":[[{"node":"Create a record","type":"main","index":0}]]}},"settings":{"executionOrder":"v1","binaryMode":"separate"},"nodeGroups":[]}	[{"version":1,"startData":"1","resultData":"2","executionData":"3","resumeToken":"4"},{},{"runData":"5","pinData":"6","lastNodeExecuted":"7"},{"contextData":"8","nodeExecutionStack":"9","metadata":"10","waitingExecution":"11","waitingExecutionSource":"12","runtimeData":"13"},"dad8b45f3d32310759c15ba47cdb19a0d9d7b0457b128f5ed2f06a95f9e1d975",{"Schedule Trigger":"14","Create a record":"15"},{},"Create a record",{},[],{},{},{},{"version":1,"establishedAt":1793082455838,"source":"16","triggerNode":"17","redaction":"18","credentials":"19"},["20"],["21"],"manual",{"name":"22","type":"23"},{"version":2,"production":false,"manual":false},"U2FsdGVkX194m4EltqGt8/+j/s2wzUtgbdzs/SQp7bhIPRkuBPWNQTeVw4aGqN7fFprrwPreInQzVo9aoXzlk6LlLbX0iaEwpIUEOscHddPHw9I+OFK0l2TMePIhqHe5k0uM0rOZwq9/2zF4c/wvPy1yKPvCj/j7INaearEkV9kFDrAdC2PG3CUZr03NvIcqjvIBs+eR/aKTRLvRfyJOAjB43vNC3y/DRx3Z/M88K424ttwRhUfybgEH/WosOFEf4UrNv1l2K8MnnBRgB1Fu0eiln0h/rKkk7n/CHYbIgelfAENB8uR+YKLD8+75KPNLfoyip1/Xhmhz5/QO3wlWrzxgqXIlVz+jV4yPTqnbeGt2/XChftBTILkiy9Rc7nx7ZgmmlTuv0SDOat3pMv6dYZ001xwr8w5itQbLEwayteazFFC0c3rY0fc+cHM5/axwbONJGdUjh0IC78NG3zPMZjTZq2/z5ykH/im6f9/oGZ0xJOj2CBzCvhNocixjvVQEUL5IB2Rs5JBi48E9wSq7KJ2QTEgI5NsllFjXeq3ZdCQMOZGnAaEiVcskp9/pOOoF",{"startTime":1793082456975,"executionIndex":0,"source":"24","hints":"25","executionTime":182,"executionStatus":"26","data":"27"},{"startTime":1793082457159,"executionIndex":1,"source":"28","hints":"29","executionTime":2421,"executionStatus":"26","data":"30"},"Schedule Trigger","n8n-nodes-base.scheduleTrigger",[],[],"success",{"main":"31"},["32"],[],{"main":"33"},["34"],{"previousNode":"22","previousNodeOutput":0,"previousNodeRun":0},["35"],["36"],["37"],{"json":"38","pairedItem":"39"},{"json":"40","pairedItem":"41"},{"timestamp":"42","Readable date":"43","Readable time":"44","Day of week":"45","Year":"46","Month":"47","Day of month":"48","Hour":"49","Minute":"48","Second":"50","Timezone":"51"},{"item":0},{"id":"52","createdTime":"53","fields":"54"},{"item":0},"2026-10-27T02:27:37.063-04:00","October 27th 2026, 2:27:37 am","2:27:37 am","Tuesday","2026","October","27","02","37","America/New_York (UTC-04:00)","recxswKAFLh9xo7NZ","2026-10-27T06:27:39.000Z",{"Total Milestones":0,"Overdue Milestones":0,"Completed Milestones":0,"Description":"55","Open Hours Remaining":0,"Progress (%)":0,"Project Name":"56"},"For everyone who want to familiar with n8n","Create a Module for n8n course"]	f7d1f420-2c93-4919-ae98-253e4bdd3b9c
\.


--
-- Data for Name: execution_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."execution_metadata" ("id", "executionId", "key", "value") FROM stdin;
\.


--
-- Data for Name: tag_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."tag_entity" ("name", "createdAt", "updatedAt", "id") FROM stdin;
\.


--
-- Data for Name: folder_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."folder_tag" ("folderId", "tagId") FROM stdin;
\.


--
-- Data for Name: idempotency_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."idempotency_key" ("id", "userId", "idempotencyKey", "fingerprint", "status", "responseStatus", "responseBody", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: insights_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_metadata" ("metaId", "workflowId", "projectId", "workflowName", "projectName") FROM stdin;
\.


--
-- Data for Name: insights_by_period; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_by_period" ("id", "metaId", "type", "value", "periodUnit", "periodStart") FROM stdin;
\.


--
-- Data for Name: insights_raw; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."insights_raw" ("id", "metaId", "type", "value", "timestamp") FROM stdin;
\.


--
-- Data for Name: installed_packages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_packages" ("packageName", "installedVersion", "authorName", "authorEmail", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: installed_nodes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."installed_nodes" ("name", "type", "latestVersion", "package") FROM stdin;
\.


--
-- Data for Name: instance_ai_checkpoints; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_checkpoints" ("key", "runId", "threadId", "resourceId", "state", "createdAt", "updatedAt", "expiredAt", "hostRunId") FROM stdin;
\.


--
-- Data for Name: instance_ai_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_events" ("threadId", "seq", "runId", "type", "payload", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_iteration_logs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_iteration_logs" ("id", "threadId", "taskKey", "entry", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: mcp_registry_server; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."mcp_registry_server" ("slug", "status", "version", "registryUpdatedAt", "data", "createdAt", "updatedAt") FROM stdin;
airtable	active	0.1.0	2026-07-31 08:55:31.929	{"name":"com.airtable/mcp","title":"Airtable","description":"Official Airtable MCP server — database and operations layer for agents.","tagline":"Connect to the Airtable MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_RW_Qzz_VRI_a8b8b106af.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/iddyj0wl13_cb19e5e7fa.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.airtable.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
alchemy	active	0.5.2	2026-07-27 06:26:35.615	{"name":"com.alchemy/mcp","title":"Alchemy","description":"Blockchain data across 100+ chains: token prices, NFTs, transfers, simulation, traces, Solana DAS","tagline":"Connect to the Alchemy MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/apple_touch_icon_824c201a3f.png","mimeType":"image/png"}],"remotes":[{"type":"streamable-http","url":"https://mcp.alchemy.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
altmetric	active	1.1.0	2026-07-27 06:33:32.848	{"name":"com.altmetric.mcp/altmetric-mcp","title":"Altmetric","description":"MCP server for Altmetric APIs - track research attention across news, policy, social media, and more","tagline":"Connect to the Altmetric MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/icon_50fcccdb0a.svg","mimeType":"image/svg+xml"}],"remotes":[{"type":"streamable-http","url":"https://mcp.altmetric.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
amplitude	active	1.0.0	2026-06-11 12:28:25.27	{"name":"com.amplitude/mcp-server","title":"Amplitude","description":"Search, access, and get insights on your Amplitude data","tagline":"Connect to the Amplitude MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_G_Fjvl8_Pa_bd331a64fc.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_G_Fjvl8_Pa_a15896d97c.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.amplitude.com/mcp"},{"type":"streamable-http","url":"https://mcp.eu.amplitude.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
apify	active	0.10.6	2026-10-14 12:22:04.998	{"name":"com.apify/apify-mcp-server","title":"Apify","description":"Extract data from any website with thousands of scrapers, crawlers, and automations on Apify Store ⚡","tagline":"Connect to the Apify MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/apify_light_2ec6ae0d0c.svg","mimeType":"image/svg+xml"}],"remotes":[{"type":"streamable-http","url":"https://mcp.apify.com/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
atlassian	active	1.1.1	2026-06-11 12:28:42.32	{"name":"com.atlassian/atlassian-mcp-server","title":"Atlassian","description":"Atlassian Rovo MCP Server","tagline":"Connect to the Atlassian MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_KV_Ejn_Mrk_716d407499.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_KV_Ejn_Mrk_1f404ecbfd.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.atlassian.com/v1/mcp"},{"type":"sse","url":"https://mcp.atlassian.com/v1/sse"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
avo	active	1.0.0	2026-07-27 06:26:59.555	{"name":"io.github.avohq/avo","title":"Avo","description":"Define, ship & query your analytics tracking from one source of truth, trusted by humans and agents.","tagline":"Connect to the Avo MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idr574_A_Kk_X_6db6ee0e4c.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.avo.app/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
axiom	active	1.0.0	2026-06-11 12:28:11.99	{"name":"co.axiom/mcp","title":"Axiom","description":"List datasets, schemas, run APL queries, and use prompts for exploration, anomalies, and monitoring.","tagline":"Connect to the Axiom MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Xjr_Dncs4_d8a390ab33.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"type":"sse","url":"https://mcp.axiom.co/sse"},{"type":"streamable-http","url":"https://mcp.axiom.co/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
bitrix-24	active	1.0.0	2026-07-27 06:27:23.396	{"name":"io.github.bitrix24/bitrix24","title":"Bitrix24","description":"MCP server enabling AI agents to manage Bitrix24 features via standardized protocol","tagline":"Connect to the Bitrix24 MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Fs_Tz_WJ_4_X_2dd0bbcd84.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.bitrix24.com/mcp/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
brandfetch	active	1.0.1	2026-07-31 08:55:50.736	{"name":"io.brandfetch/brandfetch","title":"Brandfetch","description":"Search brands and retrieve design assets, company data, other brand context from Brandfetch's API","tagline":"Connect to the Brandfetch MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_X_Gq6_S_Iu2_39f64c1e3e.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idd_CQ_52_AR_5_a0d0556d83.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.brandfetch.io/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
c-data-connect-ai	active	1.0.0	2026-07-27 06:27:35.15	{"name":"com.cdata/cdata-connect-ai","title":"CData Connect AI","description":"Cloud-hosted MCP server for secure AI access to enterprise data sources via CData Connect AI.","tagline":"Connect to the CData Connect AI MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_XN_Pnsge_I_18a9c34852.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.cloud.cdata.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
cello	active	1.0.1	2026-07-27 06:33:55.459	{"name":"so.cello/mcp","title":"Cello","description":"Cello MCP server to launch and manage your Referral and Partner program","tagline":"Connect to the Cello MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/icon_48x48_f037a7c241.png","mimeType":"image/png"}],"remotes":[{"type":"streamable-http","url":"https://mcp.cello.so/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
click-up	active	1.0.0	2026-08-25 11:14:51.696	{"name":"custom/ClickUp","title":"ClickUp","description":"Manage your ClickUp workspace","tagline":"Connect to the ClickUp MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Zbl8x_PRY_9b8addcc7e.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_M_Cb9c0ts_1f691742fc.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.clickup.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
close	active	1.0.1	2026-06-11 12:28:50.223	{"name":"com.close/close-mcp","title":"Close","description":"Close CRM to manage your sales pipeline. Learn more at https://close.com or https://mcp.close.com","tagline":"Connect to the Close MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idpghi9sa_C_14d2cba8bf.png","mimeType":"image/png","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.close.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
composio	active	1.0.5	2026-07-27 06:34:06.747	{"name":"io.github.ComposioHQ/composio","title":"Composio","description":"Connect AI agents to 1000+ apps with managed authentication and tool-calling.","tagline":"Connect to the Composio MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/Logomark_Black_fe5c6c91c6.svg","mimeType":"image/svg+xml","theme":"light"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/Logomark_White_b349b06097.svg","mimeType":"image/svg+xml","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://connect.composio.dev/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
crypto-quant	active	0.1.1	2026-07-27 06:27:46.962	{"name":"com.cryptoquant/mcp-server","title":"CryptoQuant","description":"Query cryptocurrency on-chain data, OHLCV prices, market data, and Research & QuickTake insights.","tagline":"Connect to the CryptoQuant MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_V_Lc_E486p_f1a6e16cf8.png","mimeType":"image/png","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.cryptoquant.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
cypress-cloud	active	1.0.0	2026-07-27 06:27:58.817	{"name":"io.cypress.mcp/cypress-cloud","title":"Cypress Cloud","description":"Direct access to Cypress tests results and accessibility reports in your AI workflow.","tagline":"Connect to the Cypress Cloud MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idv3zwm_Si_Y_97b8f8b3d4.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.cypress.io/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
databricks-genie	active	1.0.1	2026-10-09 10:24:39.165	{"name":"com.databricks/genie-mcp","title":"Databricks Genie One","description":"Databricks Genie MCP server, resolved per-customer from the workspace host.","tagline":"Connect to Databricks Genie One - powered by Genie","attribution":"Powered by Databricks Genie","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/databricks_90fcb569a3.svg","mimeType":"image/svg+xml"}],"remotes":[{"type":"streamable-http-templated","url":"={{$self[\\"host\\"].replace(/\\\\/$/, \\"\\")}}/api/2.0/mcp/genie","headers":{"User-Agent":"n8n_DatabricksNode"}}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"extendsCredential","extendsCredential":{"extends":"databricksOAuth2Api","authUrl":null,"accessTokenUrl":null,"scope":"genie offline_access","authQueryParameters":null,"grantType":"authorizationCode","authentication":null,"useDynamicClientRegistration":null,"serverUrl":null}}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
egnyte-remote	active	1.0.0	2026-07-27 06:26:12.344	{"name":"com.egnyte/mcp-server","title":"Egnyte Remote","description":"Egnyte's remote MCP server for secure AI access, search, upload and file management in your account.","tagline":"Connect to the Egnyte Remote MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_y3xa_T_9_348146b508.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp-server.egnyte.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
eleven-labs	active	1.0.0	2026-09-18 10:09:54.927	{"name":"custom/ElevenLabs","title":"ElevenLabs","description":"MCP server for accessing ElevenLabs voice generation and audio capabilities.","tagline":"Connect to the ElevenLabs MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/elevenlabs_symbol_a6117797c3.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://api.elevenlabs.io/v1/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","requiredCapabilities":["n8n-cloud"],"tags":[],"authType":"extendsCredential","extendsCredential":{"extends":"oAuth2Api","authUrl":"https://elevenlabs.io/app/oauth/authorize","accessTokenUrl":"https://api.us.elevenlabs.io/v1/oauth/token","scope":"convai_read convai_write text_to_speech speech_history_read flows image_video_generation voice_generation","authQueryParameters":" ","grantType":"pkce","authentication":"header","useDynamicClientRegistration":false,"serverUrl":null}}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
exa	active	3.1.3	2026-07-27 06:28:10.635	{"name":"ai.exa/exa","title":"Exa","description":"Fast, intelligent web search and web crawling.\\n\\nNew mcp tool: Exa-code is a context tool for coding ","tagline":"Connect to the Exa MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idek_S6b5_Vc_846a9be831.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.exa.ai/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
fibery	active	1.0.0	2026-07-27 06:28:22.675	{"name":"io.github.Fibery-inc/mcp","title":"Fibery","description":"Connect AI Assistant to Fibery — operating system for orgs run by nerds.","tagline":"Connect to the Fibery MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idc_Az9_Jna3_3655f33477.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.fibery.io/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
fingerprint	active	0.1.35	2026-07-27 06:33:21.382	{"name":"io.github.fingerprintjs/fingerprint-mcp-server","title":"Fingerprint","description":"Device intelligence for AI agents: Fingerprint events, smart signals, and API key management.","tagline":"Connect to the Fingerprint MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id7_Fxo_YI_61_3ef3687cce.png","mimeType":"image/png","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.fpjs.io/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
flux	active	1.0.0	2026-07-27 06:27:11.348	{"name":"io.github.black-forest-labs/flux-mcp","title":"FLUX","description":"Official FLUX MCP server. Generate, edit, vary, and browse images from Black Forest Labs.","tagline":"Connect to the FLUX MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Lu4p_X9l_F_2d4acf82df.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.bfl.ai"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
git-hub	active	1.0.0	2026-09-14 11:54:17.192	{"name":"custom/GitHub","title":"GitHub","description":"MCP server for accessing GitHub Copilot and GitHub development workflows.","tagline":"Connect to the GitHub MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_V_Xs_Zfh_Lv_635f3e5509.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Nob_Sa_S_Oi_0446ab1022.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://api.githubcopilot.com/mcp/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"usesCredentials","usesCredentials":[{"credentialType":"githubOAuth2Api","name":"OAuth2","value":"oAuth2"}]}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
git-lab	active	0.0.1	2026-06-11 12:28:56.391	{"name":"com.gitlab/mcp","title":"GitLab","description":"Official GitLab MCP Server","tagline":"Connect to the GitLab MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idkt3_Cw41b_9f7043ad83.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_O_Daz_Q_Zbt_f76933a2e6.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://gitlab.com/api/v4/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
grafana	active	v0.17.2	2026-07-31 08:56:04.253	{"name":"io.github.grafana/mcp-grafana","title":"Grafana","description":"An MCP server giving access to Grafana dashboards, data and more.","tagline":"Connect to the Grafana MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Voh_Wbum_D_22ee5e3d3d.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_KI_2_Ge8_Tx_8fa7637298.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.grafana.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
gtmetrix	active	1.1.0	2026-07-27 06:34:18.943	{"name":"com.gtmetrix/gtmetrix","title":"Gtmetrix","description":"Analyze web performance and get optimization insights from GTmetrix, directly in your AI workflow.","tagline":"Connect to the Gtmetrix MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_S5_Ofsvh_D_030852542c.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://gtmetrix.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
guru-remote	active	1.0.2	2026-07-27 06:26:47.365	{"name":"com.getguru/mcp-server","title":"Guru Remote","description":"Guru MCP Server - Connect AI tools to your Guru knowledge base","tagline":"Connect to the Guru Remote MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_KOIM_9_MG_a2d2a74e04.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.api.getguru.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
hackle	active	1.0.0	2026-07-27 06:28:46.707	{"name":"io.github.hackle-io/hackle-mcp","title":"Hackle","description":"Remote MCP server for the Hackle Admin API: experiments, feature flags, remote config, messaging.","tagline":"Connect to the Hackle MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idb_Cgt3_EZ_5_6022811256.png","mimeType":"image/png","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.hackle.io/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
himalayas-remote-jobs	active	1.0.2	2026-07-27 06:28:57.931	{"name":"app.himalayas/mcp","title":"Himalayas Remote Jobs","description":"Search and post remote jobs, browse companies, check salaries, and find talent on Himalayas.app","tagline":"Connect to the Himalayas Remote Jobs MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/icon_80aa4c0cf9.png","mimeType":"image/png"}],"remotes":[{"type":"streamable-http","url":"https://mcp.himalayas.app/mcp"},{"type":"sse","url":"https://mcp.himalayas.app/sse"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
honeycomb	active	1.0.0	2026-07-31 08:56:17.715	{"name":"io.honeycomb/mcp","title":"Honeycomb","description":"Query Honeycomb observability data: traces, events, metrics, SLOs, triggers, and boards.","tagline":"Connect to the Honeycomb MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idc_Eu_Mai3_Y_51bd126c09.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Zffh_QN_Fl_bfda41d0f1.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.honeycomb.io/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
hugging-face	active	0.2.33	2026-06-11 12:28:18.177	{"name":"co.huggingface/hf-mcp-server","title":"Hugging Face","description":"Connect to Hugging Face Hub and thousands of Gradio AI Applications","tagline":"Connect to the Hugging Face MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_S6h_Od6z2_c35cc34669.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://huggingface.co/mcp?login"},{"type":"streamable-http","url":"https://huggingface.co/mcp"},{"type":"streamable-http","url":"https://huggingface.co/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
ivisa	active	0.0.3	2026-07-27 06:32:58.532	{"name":"com.ivisa.www/mcp","title":"Ivisa","description":"Check visa requirements and travel documents for international travel destinations.","tagline":"Connect to the Ivisa MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Go_Qi_Xix_P_239207701b.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://www.ivisa.com/mcp"},{"type":"sse","url":"https://www.ivisa.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
jotform	active	1.0.0	2026-07-31 08:56:30.157	{"name":"com.jotform/mcp","title":"Jotform","description":"Jotform MCP","tagline":"Connect to the Jotform MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idcaz_TK_Ep1_099d00aa95.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Rg_Fx_ND_Ty_d7d836bfa5.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.jotform.com/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
jumpcloud	active	0.0.38	2026-07-27 06:29:34.445	{"name":"com.jumpcloud/jumpcloud-genai","title":"Jumpcloud","description":"An MCP server that provides an API to LLMs to manage their JumpCloud resources.","tagline":"Connect to the Jumpcloud MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Q_Wjip_S_Dg_57592c9ce8.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.jumpcloud.com/v1"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
kajabi	active	1.0.0	2026-07-27 06:29:46.253	{"name":"com.kajabi/kajabi","title":"Kajabi","description":"Manage Kajabi from any MCP client — products, pages, contacts, offers, emails, analytics.","tagline":"Connect to the Kajabi MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_BPULB_Tw_A_b4460963bc.svg","mimeType":"image/svg+xml","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.kajabi.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
linear	active	1.0.0	2026-06-11 12:28:04.979	{"name":"app.linear/linear","title":"Linear","description":"MCP server for Linear project management and issue tracking","tagline":"Connect to the Linear MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_P3_K9_Q_jj_6b6c66c6c7.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_P3_K9_Q_jj_7d409a8856.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"sse","url":"https://mcp.linear.app/sse"},{"type":"streamable-http","url":"https://mcp.linear.app/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
lucid	active	1.0.0	2026-07-27 06:29:57.456	{"name":"app.lucid.mcp/lucid","title":"Lucid","description":"Lucid’s connector creates diagrams, searches, edits, shares, and retrieves docs to summarize.","tagline":"Connect to the Lucid MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/cab2c5c2_21ed_4272_8606_4ce6e117da17_b893d525b7.png","mimeType":"image/png"}],"remotes":[{"type":"streamable-http","url":"https://mcp.lucid.app/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
lusha	active	1.0.0	2026-07-31 08:56:43.789	{"name":"com.lusha.mcp/mcp","title":"Lusha","description":"Lusha MCP server for authorized business profile, usage, and buying-signal insights.","tagline":"Connect to the Lusha MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Oqhne_W4l_160b2c6387.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Hn_Bv_Pm_MF_b3cab3545f.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.lusha.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
mapbox	active	0.12.7	2026-07-27 06:30:09.602	{"name":"io.github.mapbox/mcp-server","title":"Mapbox","description":"Geospatial intelligence with Mapbox APIs like geocoding, POI search, directions, isochrones, etc.","tagline":"Connect to the Mapbox MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Ks_p_3_Ey_088e4b1f1c.png","mimeType":"image/png","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.mapbox.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
miro	active	1.0.2	2026-08-10 08:21:30.846	{"name":"io.github.miroapp/mcp-server","title":"Miro","description":"Official Miro MCP server - Supports context to code and creating diagrams, docs, and data tables.","tagline":"Connect to the Miro MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idk_O_5_Zj_Q7_b2bf73f9a8.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idkd_QM_0c_Wu_51bef08ff0.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.miro.com/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
monday-com	active	0.0.1	2026-06-11 12:29:02.947	{"name":"com.monday/monday.com","title":"monday.com","description":"MCP server for monday.com integration.","tagline":"Connect to the monday.com MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idz_Vgm_C8_SV_4533eff3c2.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.monday.com/mcp"},{"type":"sse","url":"https://mcp.monday.com/sse"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
mux	active	12.8.0	2026-07-27 06:30:21.396	{"name":"com.mux/mcp","title":"Mux","description":"The official MCP Server for the Mux API","tagline":"Connect to the Mux MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idd_VMK_Dr_E_9ee0d1c0fd.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.mux.com"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
new-relic	active	0.1.0	2026-07-27 06:30:33.181	{"name":"com.newrelic/mcp-server","title":"New Relic","description":"Access New Relic observability data through MCP - query metrics, logs, traces, entities, and more","tagline":"Connect to the New Relic MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idj_OU_5_Ls_Vn_b153d861d2.svg","mimeType":"image/svg+xml","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.newrelic.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
rackspace-spot	active	0.3.2	2026-07-27 06:34:54.483	{"name":"io.github.rackspace-spot/spot-mcp","title":"Rackspace Spot","description":"Manage Rackspace Spot Kubernetes Cloudspaces, node pools, and VMs from your AI assistant.","tagline":"Connect to the Rackspace Spot MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_R_Am_XHO_Xj_c7492988ea.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.spot.rackspace.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
notion	active	1.2.0	2026-09-29 14:57:02.183	{"name":"com.notion/mcp","title":"Notion","description":"Notion's official MCP server lets you use your Notion workspace as a system of record for knowledge work and software development. Search questions about the codebase and business, fetch links to pages such as tech specs and PRDs, and track tasks with your team.","tagline":"Connect to the Notion MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idjb_Qg_E_jj_26d71d08b5.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idjb_Qg_E_jj_5fcfcab5f8.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.notion.com/mcp"},{"type":"sse","url":"https://mcp.notion.com/sse"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
onlyoffice	active	3.2.0	2026-07-27 06:30:45.489	{"name":"io.github.ONLYOFFICE/docspace","title":"Onlyoffice","description":"A room-based collaborative platform","tagline":"Connect to the Onlyoffice MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idc_J_Gf_Mm1x_3abc6daf5a.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"sse","url":"https://mcp.onlyoffice.com/sse"},{"type":"streamable-http","url":"https://mcp.onlyoffice.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
open-agenda	active	1.3.2	2026-07-27 06:31:08.655	{"name":"com.openagenda/mcp","title":"OpenAgenda","description":"Search, analyze and manage events on OpenAgenda.","tagline":"Connect to the OpenAgenda MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/openagenda_icon_512_white_abac3fef40.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/openagenda_icon_white_463b7b7aad.svg","mimeType":"image/svg+xml"}],"remotes":[{"type":"streamable-http","url":"https://mcp.openagenda.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
open-video	active	1.1.0	2026-07-27 06:30:57.197	{"name":"video.open/open-video","title":"Open Video","description":"AI-powered video publishing, channel management, and monetization via open.video","tagline":"Connect to the Open Video MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_C4_Z_Er2jl_efcb489bf4.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.open.video/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
opus-clip	active	0.1.2	2026-07-27 06:34:42.641	{"name":"io.github.opus-pro/opusclip","title":"OpusClip","description":"Turn long videos into AI-curated short clips: caption, reframe, thumbnail, schedule, and publish.","tagline":"Connect to the OpusClip MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id16btw_Mn_34285031cd.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.opus.pro/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
pay-pal	active	1.0.0	2026-06-11 12:29:23.307	{"name":"com.paypal.mcp/mcp","title":"PayPal","description":"PayPal MCP server provides access to PayPal services and operations for AI assistants","tagline":"Connect to the PayPal MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_R_Wy_Aj_C_Dz_324a3b0a2e.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.paypal.com/mcp"},{"type":"sse","url":"https://mcp.paypal.com/sse"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
pipedrive	active	1.0.0	2026-08-25 11:15:03.311	{"name":"custom/Pipedrive","title":"Pipedrive","description":"MCP server for Pipedrive CRM","tagline":"Connect to the Pipedrive MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_C_Tun_TDY_2_2bd0a3f04e.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.pipedrive.ai/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
post-hog	active	0.2.5	2026-06-11 12:29:53.047	{"name":"io.github.PostHog/mcp","title":"PostHog","description":"Official PostHog MCP Server for product analytics, feature flags, experiments, and more.","tagline":"Connect to the PostHog MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Yz0_Wt_S_Oc_8e4d0f0070.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.posthog.com/mcp"},{"type":"sse","url":"https://mcp.posthog.com/sse"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
postman	active	2.8.9	2026-06-11 12:29:28.445	{"name":"com.postman/postman-mcp-server","title":"Postman","description":"A basic MCP server to operate on the Postman API.","tagline":"Connect to the Postman MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idr_UU_WRCO_c111cb0dea.png","mimeType":"image/png","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.postman.com/mcp"},{"type":"streamable-http","url":"https://mcp.postman.com/minimal"},{"type":"streamable-http","url":"https://mcp.eu.postman.com/mcp"},{"type":"streamable-http","url":"https://mcp.eu.postman.com/minimal"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
prisma	active	1.0.0	2026-06-11 12:30:05.827	{"name":"io.prisma/mcp","title":"Prisma","description":"MCP server for managing Prisma Postgres.","tagline":"Connect to the Prisma MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idz_L_5t_H6_B_e6163aea2d.jpg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"type":"sse","url":"https://mcp.prisma.io/sse"},{"type":"streamable-http","url":"https://mcp.prisma.io/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
quicknode	active	1.0.0	2026-07-31 08:56:55.454	{"name":"io.github.quicknode/mcp","title":"Quicknode","description":"Manage your blockchain infrastructure across 80+ chains with your agents.","tagline":"Connect to the Quicknode MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Gkd_Tc_T_Q_6cd067aa96.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Eo_Rfmv8_I_b2228a7aa7.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.quicknode.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
railway	active	1.0.0	2026-07-31 08:57:13.759	{"name":"com.railway/mcp","title":"Railway","description":"Develop, manage, and debug Railway projects, services, and deployments from within agents.","tagline":"Connect to the Railway MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_N_Pa1_W_g_1b0b09d3c0.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Nf_YM_Ddf_P_d0762ab2e7.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.railway.com/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
roboflow-official	active	1.0.3	2026-07-27 06:31:46.505	{"name":"com.roboflow/roboflow-mcp","title":"Roboflow (Official)","description":"Roboflow computer vision for AI agents: datasets, annotation, versioning, workflows, inference.","tagline":"Connect to the Roboflow (Official) MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/icon_5a61ee5b18.png","mimeType":"image/png"}],"remotes":[{"type":"streamable-http","url":"https://mcp.roboflow.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
sanity	active	2.19.0	2026-06-11 12:30:10.774	{"name":"io.sanity.www/mcp","title":"Sanity","description":"Direct access to your Sanity projects (content, datasets, releases, schemas) and agent rules","tagline":"Connect to the Sanity MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Qr019q7c_e4c0ec82b7.png","mimeType":"image/png","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.sanity.io"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
send-pulse	active	1.0.0	2026-07-27 06:35:06.234	{"name":"com.sendpulse.mcp/mcp-server","title":"SendPulse","description":"Empower AI agents with SendPulse email, CRM, chatbot, SMTP, and course automation","tagline":"Connect to the SendPulse MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idv4t5t_Kt_Q_bad208ede1.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.sendpulse.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
serpstat	active	1.1.5	2026-07-27 06:31:58.494	{"name":"com.serpstat/mcp","title":"Serpstat","description":"Automate your daily SEO tasks and get results in a few seconds with Serpstat SEO Tools MCP","tagline":"Connect to the Serpstat MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/favicon_32x32_9deb9e3426.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/favicon_16x16_978f8c1d24.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/apple_touch_icon_60x60_0e141e6ab3.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/apple_touch_icon_120x120_989cf97cef.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/mstile_144x144_86f983426c.png","mimeType":"image/png"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/apple_touch_icon_180x180_d5650b553b.png","mimeType":"image/png"}],"remotes":[{"type":"streamable-http","url":"https://mcp.serpstat.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
smart-bear	active	0.32.0	2026-07-27 06:26:00.585	{"name":"com.smartbear/smartbear-mcp","title":"SmartBear","description":"MCP server for AI access to SmartBear tools, including BugSnag, Reflect, Swagger, PactFlow, QTM4J.","tagline":"Connect to the SmartBear MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idi_Kc_F1m_Nh_08a3260e96.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://bugsnag.mcp.smartbear.com/mcp"},{"type":"streamable-http","url":"https://zephyr.mcp.smartbear.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
snitcher	active	1.1.0	2026-07-27 06:35:18.252	{"name":"com.snitcher/snitcher","title":"Snitcher","description":"Identify companies visiting your website: organisations, contacts, segments, tags, CRM sync.","tagline":"Connect to the Snitcher MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idgwm_NEV_1_f421fc6c44.svg","mimeType":"image/svg+xml","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://app.snitcher.com/mcp/snitcher"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
stripe	active	0.2.4	2026-06-11 12:29:33.086	{"name":"com.stripe/mcp","title":"Stripe","description":"MCP server integrating with Stripe - tools for customers, products, payments, and more.","tagline":"Connect to the Stripe MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Bn9_1_Njr_e4279db01b.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.stripe.com"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
supabase	active	0.13.0	2026-10-02 10:17:59.033	{"name":"com.supabase/mcp","title":"Supabase","description":"MCP server for interacting with the Supabase platform","tagline":"Connect to the Supabase MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/supabase_a490b12dac.svg","mimeType":"image/svg+xml"}],"remotes":[{"type":"streamable-http","url":"https://mcp.supabase.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","requiredCapabilities":["supabase-oauth2-credentials"],"tags":[],"authType":"usesCredentials","usesCredentials":[{"credentialType":"supabaseOAuth2Api","name":"OAuth2","value":"oAuth2"}]}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
tavily	active	1.0.0	2026-08-25 11:15:14.725	{"name":"custom/Tavily","title":"Tavily","description":"Use the Tavily API in your MCP clients","tagline":"Connect to the Tavily MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_LQQL_49_Rh_4333709158.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.tavily.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
tenderly	active	1.0.1	2026-07-31 08:57:28.375	{"name":"co.tenderly/tenderly-mcp","title":"Tenderly","description":"Tenderly MCP server for blockchain dev — simulate, debug, and test on 100+ networks.","tagline":"Connect to the Tenderly MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Np_P91btg_2999d326fa.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idg5pc_CT_Me_199bebd567.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.tenderly.co/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
tolstoy-library	active	1.0.0	2026-07-31 08:57:40.033	{"name":"io.github.GoTolstoy/library","title":"Tolstoy Library","description":"Browse, search, rename, and favorite your Tolstoy media library from any AI client.","tagline":"Connect to the Tolstoy Library MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id1bfg_NL_0_W_a737f0b436.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idswp_Hz_VRG_41aaa8f2a7.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://apilb.gotolstoy.com/mcp/v1/library/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
trello	active	1.0.0	2026-08-25 11:12:24.202	{"name":"custom/Trello","title":"Trello","description":"MCP server for connecting to Trello boards, lists, cards, and related workspace data.","tagline":"Connect to the Trello MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idwi_T_Vp_M5f_1d8db2236b.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Yuk3_X_Wkt_4848ff1058.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.trello.com/v1"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
unstoppable-domains	active	1.0.0	2026-07-27 06:25:24.004	{"name":"com.unstoppabledomains/mcp-server","title":"Unstoppable Domains","description":"Domain search, registration, DNS, marketplace, and checkout with your AI agent.","tagline":"Connect to the Unstoppable Domains MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Go_L_Bex_7_98cca38628.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://api.unstoppabledomains.com/mcp/v1/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
user-guiding	active	1.0.0	2026-07-27 06:32:22.58	{"name":"io.github.userguiding/mcp","title":"UserGuiding","description":"Manage users, track events, companies, and knowledge base articles in UserGuiding.","tagline":"Connect to the UserGuiding MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Gqzc_El_EH_ac5ec7c6bf.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.userguiding.com/mcp/"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
veed-ai-video-generator	active	1.0.0	2026-07-27 06:33:09.725	{"name":"io.veed/fabric-mcp","title":"VEED AI Video Generator","description":"Generate AI talking-head videos with custom characters and voices.","tagline":"Connect to the VEED AI Video Generator MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/favicon_prod_d15545bdfc.svg","mimeType":"image/svg+xml"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/favicon_32x32_f264fbd0f8.png","mimeType":"image/png"}],"remotes":[{"type":"streamable-http","url":"https://www.veed.io/api/v1/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
webflow	active	2.0.0	2026-06-11 12:29:37.869	{"name":"com.webflow/mcp","title":"Webflow","description":"AI-powered design and management for Webflow Sites","tagline":"Connect to the Webflow MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idx_GYKE_Fj1_b568d3380a.svg","mimeType":"image/svg+xml","theme":"dark"},{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Zp72_NUI_5_080d2c331c.svg","mimeType":"image/svg+xml","theme":"light"}],"remotes":[{"type":"streamable-http","url":"https://mcp.webflow.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
wix	active	1.0.2	2026-06-11 12:29:47.22	{"name":"com.wix/mcp","title":"Wix","description":"A Model Context Protocol server for Wix AI tools","tagline":"Connect to the Wix MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Qa_F_Jx_Orc_31d963143f.jpeg","mimeType":"image/jpeg","theme":"light"}],"remotes":[{"type":"sse","url":"https://mcp.wix.com/sse"},{"type":"streamable-http","url":"https://mcp.wix.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
wordlift	active	1.0.7	2026-07-27 06:32:34.408	{"name":"io.wordlift/mcp-server","title":"Wordlift","description":"Knowledge Graph, GraphQL, GS1 Digital Link and SEO tools for semantic content optimization.","tagline":"Connect to the Wordlift MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_Y8_Nf90og_3c8f9dbd0a.png","mimeType":"image/png","theme":"dark"}],"remotes":[{"type":"sse","url":"https://mcp.wordlift.io/sse"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
you-com-web-access-ai	active	3.5.0	2026-07-27 06:25:36.296	{"name":"io.github.youdotcom-oss/mcp","title":"You.com Web Access & AI","description":"Web search, AI agent, and content extraction via You.com APIs","tagline":"Connect to the You.com Web Access & AI MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idale_Bp_Jx_J_b69ac7e4b6.png","mimeType":"image/png","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://api.you.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
zigpoll	active	2.0.0	2026-07-27 06:32:46.428	{"name":"com.zigpoll/zigpoll-mcp","title":"Zigpoll","description":"Analyze Zigpoll survey responses, track trends, and get AI-powered insights.","tagline":"Connect to the Zigpoll MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/id_b4l_E3_VQ_6438fbc3e9.jpeg","mimeType":"image/jpeg","theme":"dark"}],"remotes":[{"type":"streamable-http","url":"https://mcp.zigpoll.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
zoom-info	active	1.0.1	2026-10-02 19:33:33.366	{"name":"io.github.Zoominfo/zoominfo-mcp","title":"ZoomInfo","description":"Official ZoomInfo MCP server. Search and enrich companies, contacts, and buyer intent signals.","tagline":"Connect to the ZoomInfo MCP Server","icons":[{"src":"https://n8niostorageaccount.blob.core.windows.net/n8nio-strapi-blobs-prod/assets/idl_A_Ay_Fw_p_4b62d3d2c5.svg","mimeType":"image/svg+xml"}],"remotes":[{"type":"streamable-http","url":"https://mcp.zoominfo.com/mcp"}],"tools":[],"isOfficial":true,"origin":"registry","requiredCapabilities":["n8n-cloud"],"tags":[],"authType":"oauth2"}	2026-10-25 14:23:23.314+00	2026-10-25 14:23:14.624+00
\.


--
-- Data for Name: instance_ai_mcp_registry_connections; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_mcp_registry_connections" ("id", "credentialId", "serverSlug", "userId", "createdAt", "updatedAt", "toolPermissions") FROM stdin;
\.


--
-- Data for Name: instance_ai_messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_messages" ("id", "threadId", "content", "role", "type", "resourceId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observation_cursors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observation_cursors" ("observationScopeId", "lastObservedMessageId", "lastObservedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observation_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observation_locks" ("observationScopeId", "taskKind", "holderId", "heldUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observational_memory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observational_memory" ("id", "lookupKey", "scope", "threadId", "resourceId", "activeObservations", "originType", "config", "generationCount", "lastObservedAt", "pendingMessageTokens", "totalTokensObserved", "observationTokenCount", "isObserving", "isReflecting", "observedMessageIds", "observedTimezone", "bufferedObservations", "bufferedObservationTokens", "bufferedMessageIds", "bufferedReflection", "bufferedReflectionTokens", "bufferedReflectionInputTokens", "reflectedObservationLineCount", "bufferedObservationChunks", "isBufferingObservation", "isBufferingReflection", "lastBufferedAtTokens", "lastBufferedAtTime", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_observations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_observations" ("id", "observationScopeId", "marker", "text", "parentId", "tokenCount", "status", "supersededBy", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_pending_confirmations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_pending_confirmations" ("requestId", "threadId", "userId", "kind", "runId", "toolCallId", "messageGroupId", "checkpointKey", "checkpointTaskId", "expiresAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_resources; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_resources" ("id", "workingMemory", "metadata", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_thread_grants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_thread_grants" ("threadId", "userId", "grantKey", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_thread_tabs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_thread_tabs" ("threadId", "userId", "state", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_ai_workflow_snapshots; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_ai_workflow_snapshots" ("runId", "workflowName", "resourceId", "status", "snapshot", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_credential_assignment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_credential_assignment" ("credentialUseId", "credentialId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: instance_monitoring_report; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_monitoring_report" ("id", "dataPoints", "status", "deliveredAt", "attempts", "lastAttemptAt", "lastError", "createdAt", "updatedAt", "reportDate") FROM stdin;
\.


--
-- Data for Name: instance_version_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."instance_version_history" ("id", "major", "minor", "patch", "createdAt") FROM stdin;
1	2	44	6	2026-10-25 14:22:16.616+00
\.


--
-- Data for Name: invalid_auth_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."invalid_auth_token" ("token", "expiresAt") FROM stdin;
\.


--
-- Data for Name: migration_finding; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migration_finding" ("id", "targetVersion", "ruleId", "workflowId", "status", "note", "notifiedAt", "statusChangedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: migration_finding_sync; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migration_finding_sync" ("targetVersion", "syncedAt", "ruleSetFingerprint") FROM stdin;
\.


--
-- Data for Name: migration_workflow_owner; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migration_workflow_owner" ("workflowId", "userId", "source", "assignedById", "assignedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."migrations" ("id", "timestamp", "name") FROM stdin;
1	1587669153312	InitialMigration1587669153312
2	1589476000887	WebhookModel1589476000887
3	1594828256133	CreateIndexStoppedAt1594828256133
4	1607431743768	MakeStoppedAtNullable1607431743768
5	1611144599516	AddWebhookId1611144599516
6	1617270242566	CreateTagEntity1617270242566
7	1620824779533	UniqueWorkflowNames1620824779533
8	1626176912946	AddwaitTill1626176912946
9	1630419189837	UpdateWorkflowCredentials1630419189837
10	1644422880309	AddExecutionEntityIndexes1644422880309
11	1646834195327	IncreaseTypeVarcharLimit1646834195327
12	1646992772331	CreateUserManagement1646992772331
13	1648740597343	LowerCaseUserEmail1648740597343
14	1652254514002	CommunityNodes1652254514002
15	1652367743993	AddUserSettings1652367743993
16	1652905585850	AddAPIKeyColumn1652905585850
17	1654090467022	IntroducePinData1654090467022
18	1658932090381	AddNodeIds1658932090381
19	1659902242948	AddJsonKeyPinData1659902242948
20	1660062385367	CreateCredentialsUserRole1660062385367
21	1663755770893	CreateWorkflowsEditorRole1663755770893
22	1664196174001	WorkflowStatistics1664196174001
23	1665484192212	CreateCredentialUsageTable1665484192212
24	1665754637025	RemoveCredentialUsageTable1665754637025
25	1669739707126	AddWorkflowVersionIdColumn1669739707126
26	1669823906995	AddTriggerCountColumn1669823906995
27	1671535397530	MessageEventBusDestinations1671535397530
28	1671726148421	RemoveWorkflowDataLoadedFlag1671726148421
29	1673268682475	DeleteExecutionsWithWorkflows1673268682475
30	1674138566000	AddStatusToExecutions1674138566000
31	1674509946020	CreateLdapEntities1674509946020
32	1675940580449	PurgeInvalidWorkflowConnections1675940580449
33	1676996103000	MigrateExecutionStatus1676996103000
34	1677236854063	UpdateRunningExecutionStatus1677236854063
35	1677501636754	CreateVariables1677501636754
36	1679416281778	CreateExecutionMetadataTable1679416281778
37	1681134145996	AddUserActivatedProperty1681134145996
38	1681134145997	RemoveSkipOwnerSetup1681134145997
39	1690000000000	MigrateIntegerKeysToString1690000000000
40	1690000000020	SeparateExecutionData1690000000020
41	1690000000030	RemoveResetPasswordColumns1690000000030
42	1690000000030	AddMfaColumns1690000000030
43	1690787606731	AddMissingPrimaryKeyOnExecutionData1690787606731
44	1691088862123	CreateWorkflowNameIndex1691088862123
45	1692967111175	CreateWorkflowHistoryTable1692967111175
46	1693491613982	ExecutionSoftDelete1693491613982
47	1693554410387	DisallowOrphanExecutions1693554410387
48	1694091729095	MigrateToTimestampTz1694091729095
49	1695128658538	AddWorkflowMetadata1695128658538
50	1695829275184	ModifyWorkflowHistoryNodesAndConnections1695829275184
51	1700571993961	AddGlobalAdminRole1700571993961
52	1705429061930	DropRoleMapping1705429061930
53	1711018413374	RemoveFailedExecutionStatus1711018413374
54	1711390882123	MoveSshKeysToDatabase1711390882123
55	1712044305787	RemoveNodesAccess1712044305787
56	1714133768519	CreateProject1714133768519
57	1714133768521	MakeExecutionStatusNonNullable1714133768521
58	1717498465931	AddActivatedAtUserSetting1717498465931
59	1720101653148	AddConstraintToExecutionMetadata1720101653148
60	1721377157740	FixExecutionMetadataSequence1721377157740
61	1723627610222	CreateInvalidAuthTokenTable1723627610222
62	1723796243146	RefactorExecutionIndices1723796243146
63	1724753530828	CreateAnnotationTables1724753530828
64	1724951148974	AddApiKeysTable1724951148974
65	1726606152711	CreateProcessedDataTable1726606152711
66	1727427440136	SeparateExecutionCreationFromStart1727427440136
67	1728659839644	AddMissingPrimaryKeyOnAnnotationTagMapping1728659839644
68	1729607673464	UpdateProcessedDataValueColumnToText1729607673464
69	1729607673469	AddProjectIcons1729607673469
70	1730386903556	CreateTestDefinitionTable1730386903556
71	1731404028106	AddDescriptionToTestDefinition1731404028106
72	1731582748663	MigrateTestDefinitionKeyToString1731582748663
73	1732271325258	CreateTestMetricTable1732271325258
74	1732549866705	CreateTestRun1732549866705
75	1733133775640	AddMockedNodesColumnToTestDefinition1733133775640
76	1734479635324	AddManagedColumnToCredentialsTable1734479635324
77	1736172058779	AddStatsColumnsToTestRun1736172058779
78	1736947513045	CreateTestCaseExecutionTable1736947513045
79	1737715421462	AddErrorColumnsToTestRuns1737715421462
80	1738709609940	CreateFolderTable1738709609940
81	1739549398681	CreateAnalyticsTables1739549398681
82	1740445074052	UpdateParentFolderIdColumn1740445074052
83	1741167584277	RenameAnalyticsToInsights1741167584277
84	1742918400000	AddScopesColumnToApiKeys1742918400000
85	1745322634000	ClearEvaluation1745322634000
86	1745587087521	AddWorkflowStatisticsRootCount1745587087521
87	1745934666076	AddWorkflowArchivedColumn1745934666076
88	1745934666077	DropRoleTable1745934666077
89	1747824239000	AddProjectDescriptionColumn1747824239000
90	1750252139166	AddLastActiveAtColumnToUser1750252139166
91	1750252139166	AddScopeTables1750252139166
92	1750252139167	AddRolesTables1750252139167
93	1750252139168	LinkRoleToUserTable1750252139168
94	1750252139170	RemoveOldRoleColumn1750252139170
95	1752669793000	AddInputsOutputsToTestCaseExecution1752669793000
96	1753953244168	LinkRoleToProjectRelationTable1753953244168
97	1754475614601	CreateDataStoreTables1754475614601
98	1754475614602	ReplaceDataStoreTablesWithDataTables1754475614602
99	1756906557570	AddTimestampsToRoleAndRoleIndexes1756906557570
100	1758731786132	AddAudienceColumnToApiKeys1758731786132
101	1758794506893	AddProjectIdToVariableTable1758794506893
102	1759399811000	ChangeValueTypesForInsights1759399811000
103	1760019379982	CreateChatHubTables1760019379982
104	1760020000000	CreateChatHubAgentTable1760020000000
105	1760020838000	UniqueRoleNames1760020838000
106	1760116750277	CreateOAuthEntities1760116750277
107	1760314000000	CreateWorkflowDependencyTable1760314000000
108	1760965142113	DropUnusedChatHubColumns1760965142113
109	1761047826451	AddWorkflowVersionColumn1761047826451
110	1761655473000	ChangeDependencyInfoToJson1761655473000
111	1761773155024	AddAttachmentsToChatHubMessages1761773155024
112	1761830340990	AddToolsColumnToChatHubTables1761830340990
113	1762177736257	AddWorkflowDescriptionColumn1762177736257
114	1762763704614	BackfillMissingWorkflowHistoryRecords1762763704614
115	1762771264000	ChangeDefaultForIdInUserTable1762771264000
116	1762771954619	AddIsGlobalColumnToCredentialsTable1762771954619
117	1762847206508	AddWorkflowHistoryAutoSaveFields1762847206508
118	1763047800000	AddActiveVersionIdColumn1763047800000
119	1763048000000	ActivateExecuteWorkflowTriggerWorkflows1763048000000
120	1763572724000	ChangeOAuthStateColumnToUnboundedVarchar1763572724000
121	1763716655000	CreateBinaryDataTable1763716655000
122	1764167920585	CreateWorkflowPublishHistoryTable1764167920585
123	1764276827837	AddCreatorIdToProjectTable1764276827837
124	1764682447000	CreateDynamicCredentialResolverTable1764682447000
125	1764689388394	AddDynamicCredentialEntryTable1764689388394
126	1765448186933	BackfillMissingWorkflowHistoryRecords1765448186933
127	1765459448000	AddResolvableFieldsToCredentials1765459448000
128	1765788427674	AddIconToAgentTable1765788427674
129	1765804780000	ConvertAgentIdToUuid1765804780000
130	1765886667897	AddAgentIdForeignKeys1765886667897
131	1765892199653	AddWorkflowVersionIdToExecutionData1765892199653
132	1766064542000	AddWorkflowPublishScopeToProjectRoles1766064542000
133	1766068346315	AddChatMessageIndices1766068346315
134	1766500000000	ExpandInsightsWorkflowIdLength1766500000000
135	1767018516000	ChangeWorkflowStatisticsFKToNoAction1767018516000
136	1768402473068	ExpandModelColumnLength1768402473068
137	1768557000000	AddStoredAtToExecutionEntity1768557000000
138	1768901721000	AddDynamicCredentialUserEntryTable1768901721000
139	1769000000000	AddPublishedVersionIdToWorkflowDependency1769000000000
140	1769433700000	CreateSecretsProviderConnectionTables1769433700000
141	1769698710000	CreateWorkflowPublishedVersionTable1769698710000
142	1769784356000	ExpandSubjectIDColumnLength1769784356000
143	1769900001000	AddWorkflowUnpublishScopeToCustomRoles1769900001000
144	1770000000000	CreateChatHubToolsTable1770000000000
145	1770000000000	ExpandProviderIdColumnLength1770000000000
146	1770220686000	CreateWorkflowBuilderSessionTable1770220686000
147	1771417407753	AddScalingFieldsToTestRun1771417407753
148	1771500000000	MigrateExternalSecretsToEntityStorage1771500000000
149	1771500000001	AddUnshareScopeToCustomRoles1771500000001
150	1771500000002	AddFilesColumnToChatHubAgents1771500000002
151	1772000000000	AddSuggestedPromptsToAgentTable1772000000000
152	1772619247761	AddRoleColumnToProjectSecretsProviderAccess1772619247761
153	1772619247762	ChangeWorkflowPublishedVersionFKsToRestrict1772619247762
154	1772700000000	AddTypeToChatHubSessions1772700000000
155	1772800000000	CreateRoleMappingRuleTable1772800000000
156	1773000000000	CreateCredentialDependencyTable1773000000000
157	1774280963551	AddRestoreFieldsToWorkflowBuilderSession1774280963551
158	1774854660000	CreateInstanceVersionHistoryTable1774854660000
159	1775000000000	CreateInstanceAiTables1775000000000
160	1775116241000	CreateTokenExchangeJtiTable1775116241000
161	1775740765000	ChangeWorkflowPublishHistoryVersionIdToSetNull1775740765000
162	1776000000000	CreateTrustedKeyTables1776000000000
163	1776150756000	CreateFavoritesTable1776150756000
164	1777000000000	CreateDeploymentKeyTable1777000000000
165	1777023444000	AddJweKeyIndexesToDeploymentKey1777023444000
166	1777045000000	AddTracingContextToExecution1777045000000
167	1777100000000	AddLangsmithIdsToInstanceAiRunSnapshots1777100000000
168	1777281990043	CreateAiBuilderTemporaryWorkflowTable1777281990043
169	1777420800000	ExpandVariablesValueColumnToText1777420800000
170	1777996709110	AddRunIndexToTestCaseExecution1777996709110
171	1778000000000	AddExecutionDeduplicationKey1778000000000
172	1778100000000	CreateEvaluationConfig1778100000000
173	1778100001000	AddWorkflowVersionToTestRun1778100001000
174	1778100002000	AddEvaluationConfigColumnsToTestRun1778100002000
175	1778496086558	CreateEvaluationCollection1778496086558
176	1783000000000	CreateAgentTables1783000000000
177	1783000000001	CreateAgentExecutionTables1783000000001
178	1784000000000	CreateAgentObservationTables1784000000000
179	1784000000001	ReplaceAgentObservationTables1784000000001
180	1784000000002	DropAgentExecutionWorkingMemory1784000000002
181	1784000000003	LimitWorkflowVersionTriggerToContent1784000000003
182	1784000000004	AddInsightsRawTimestampIdIndex1784000000004
183	1784000000005	CreateMcpRegistryServerTable1784000000005
184	1784000000006	AddNodeGroupsColumnToWorkflowAndHistory1784000000006
185	1784000000007	CreateInstanceAiCheckpointTable1784000000007
186	1784000000008	ResetInstanceAiNativePersistence1784000000008
187	1784000000009	CreateAgentMemoryEntryTables1784000000009
188	1784000000010	RefactorAgentObservationScope1784000000010
189	1784000000011	CreateAgentHistoryTable1784000000011
190	1784000000012	CreateInstanceAiObservationTables1784000000012
191	1784000000013	SplitRedactionScopeInCustomRoles1784000000013
192	1784000000014	PersistInstanceAiPendingConfirmations1784000000014
193	1784000000015	AddSourceWorkflowIdToWorkflow1784000000015
194	1784000000016	UseSlugAsPrimaryKeyInMcpRegistryServer1784000000016
195	1784000000017	AddLastUsedAtToApiKey1784000000017
196	1784000000018	CreateAgentFilesTable1784000000018
197	1784000000019	AddCustomTelemetryTagsToProject1784000000019
198	1784000000021	CreateAgentTaskDefinitionTable1784000000021
199	1784000000022	AddSubAgentLinkageToAgentExecutionThreads1784000000022
200	1784000000023	CreateInstanceAiMcpRegistryConnectionTable1784000000023
201	1784000000024	AddResourceToOAuthAuthorizationCodes1784000000024
202	1784000000025	MigrateRedactionEnforcementToFloor1784000000025
203	1784000000026	AddScopeColumnToOAuthTables1784000000026
204	1784000000027	CreateWorkflowPublicationOutboxTable1784000000027
205	1784000000028	AddProjectIdToInstanceAiThread1784000000028
206	1784000000029	AddJsonSizeBytesAndWorkflowVersionIdToExecutionEntity1784000000029
207	1784000000030	CreateAgentChatSubscriptions1784000000030
208	1784000000031	AddExecutionEntityWorkflowStatusIndex1784000000031
209	1784000000033	AddBinaryDataSizeBytesToExecutionEntity1784000000033
210	1784000000034	AllowAzureStoredAt1784000000034
211	1784000000035	AddUniqueAgentFileNames1784000000035
212	1784000000036	CreateInstanceAiThreadGrantTable1784000000036
213	1784000000037	DropAgentDescriptionFromAgents1784000000037
214	1784000000038	SetChatHubEnabledFromUsage1784000000038
215	1784000000039	DropAgentExecutionFallbackColumns1784000000039
216	1784000000040	CreateWorkflowPublicationTriggerStatusTable1784000000040
217	1784000000041	AddUsedPrivateCredentialsToExecutionEntity1784000000041
218	1784000000042	CreateSchedulerTables1784000000042
219	1784000000043	CreateWorkflowStatisticsDeltaTable1784000000043
220	1784000000044	AddPartialIndexForGlobalCredentials1784000000044
221	1784000000045	AddRecurringCronScheduleKind1784000000045
222	1784000000046	CreateInstanceAiEventsTable1784000000046
223	1784000000047	BackfillPreScopingOAuthGrantScopes1784000000047
224	1784000000048	AddTriggerKindToWorkflowPublicationTriggerStatus1784000000048
225	1784000000049	AddScheduledTaskDispatchedAt1784000000049
226	1784000000050	AddHostRunIdToInstanceAiCheckpoints1784000000050
227	1784000000051	BackfillInstanceAiEventLog1784000000051
228	1784000000052	CreateWorkflowReviewRequestTables1784000000052
229	1784815940110	AddStoredAtToAgentExecution1784815940110
230	1784815940111	AddInstanceCredentials1784815940111
231	1784815940112	CreateAgentEvalTables1784815940112
232	1784897791636	AddAvailableInMcpToAgents1784897791636
233	1785162364000	ChangeInstalledNodeVersionType1785162364000
234	1785162364001	AddIsFirstPartyToOAuthClients1785162364001
235	1785186578138	AddAgentFileStorageColumns1785186578138
236	1785247194306	CrashStaleEnqueuedExecutions1785247194306
237	1785247194307	AddMisfirePolicyToScheduler1785247194307
238	1785255306000	CreateAgentChatAttachmentsTable1785255306000
239	1785500832626	AddSetupCompletedAtToAgents1785500832626
240	1785828155091	AddAgentExecutionRuntimeState1785828155091
241	1785828155092	CreateAgentCredentialDependencyTable1785828155092
242	1785840970000	AllowDiscordAgentChatSubscriptions1785840970000
243	1785843640527	CreateWorkflowReviewActivityTablesAndBaseline1785843640527
244	1785926660580	CreatePollerStateTable1785926660580
245	1786519946974	AddReasonToWorkflowPublicationOutbox1786519946974
246	1786666615643	AddCoalesceOwnerMisfirePolicy1786666615643
247	1786666615644	AddAgentRevisionColumn1786666615644
248	1787040021605	AddAgentExecutionFailureSummary1787040021605
249	1787056876306	CreateGitConnectionTable1787056876306
250	1787057050000	AddTimezoneToAgentTasks1787057050000
251	1787089039726	CreateGitConnectionProjectTable1787089039726
252	1787089039727	DropWorkflowReviewActivityTypeCheckAndWorkflowIdColumn1787089039727
253	1787140858009	AddProjectManageMembersScopeToCustomRoles1787140858009
254	1787213245846	CreateAgentChannelStatusTable1787213245846
255	1787739515257	AddResourceToOAuthRefreshTokens1787739515257
256	1787841960965	CreateTypeAvailabilityPolicyTables1787841960965
257	1788191436461	CreateAgentBackgroundJobTable1788191436461
258	1788336311704	DropInstanceAiRunSnapshotsTable1788336311704
259	1788359043381	GeneralizeScheduledJobOwner1788359043381
260	1788425788714	CreateActivityEventTable1788425788714
261	1788445119183	CreateProjectPoolSettings1788445119183
262	1788445119184	CreateInstanceMonitoringReportTable1788445119184
263	1788522448804	CreateAgentWorkflowDependencyTable1788522448804
264	1788527465971	AddWakeColumnsToAgentBackgroundJob1788527465971
265	1788759351166	CreatePromotionsTables1788759351166
266	1788780616817	DropGitConnectionTables1788780616817
267	1788882375989	CreateAiPreferenceTable1788882375989
268	1789029973536	CreateAgentMemoryEntryCandidates1789029973536
269	1789121244489	AddAgentExecutionAuthorAndMessagesResourceThreadIndex1789121244489
270	1789131391410	AddInstanceAiThreadHistoryIndex1789131391410
271	1789137988234	AddKindCreatedAtIndexToTypeAvailabilityPolicy1789137988234
272	1789479099132	AddSourceToAiPreference1789479099132
273	1789558029357	AddDescriptionToCredentials1789558029357
274	1789717191125	AddThreadIdToAgentCheckpoints1789717191125
275	1789995003141	AddExecutionScopesToCustomRoles1789995003141
276	1790014447117	AddAgentThreadOwnership1790014447117
277	1790054384570	PreventDeploymentKeyDeletion1790054384570
278	1790073725529	AddConcurrencyLimitToScheduledJob1790073725529
279	1790162967151	CreateWorkflowPublicationRetryStateTable1790162967151
280	1790231058977	AllowTeamsAgentChatSubscriptions1790231058977
281	1790241069212	CreateAgentMessageQueue1790241069212
282	1790319787160	AddPendingAuthorizationToCredentials1790319787160
283	1790342771626	CreateInstanceAiThreadTabsTable1790342771626
284	1790583238183	AddReportDateToInstanceMonitoringReport1790583238183
285	1790590278292	AddAgentExecutionMessages1790590278292
286	1790598807675	CreateMigrationFindingTables1790598807675
287	1790605116208	AddAgentQueueMessageReferences1790605116208
288	1790672501346	CreateTrustedSourceTables1790672501346
289	1790683443934	AddAgentMessageSteering1790683443934
290	1790689944845	AddSuspendedAgentBackgroundJobStatus1790689944845
291	1790758111050	MigrateMcpToolPermissions1790758111050
292	1790774580617	AllowSendingInstanceReportStatus1790774580617
293	1790837340960	CreateAgentThreadGrantTable1790837340960
294	1790853539575	AddAgentMessageQueuePosition1790853539575
295	1790928780672	CreateWorkflowSuggestionTables1790928780672
296	1790936314732	AddAgentMessageQueueSteeringPairCheck1790936314732
297	1790937677019	AddAgentBackgroundJobPause1790937677019
298	1791187410548	CreateAgentPlanTables1791187410548
299	1791199417265	AddOAuthSigningKeyIndexToDeploymentKey1791199417265
300	1791209478293	CreateAgentBudgetSpendTables1791209478293
301	1791276719782	AddMetadataToTrustedSource1791276719782
302	1791276719783	AllowWhatsAppAgentChatSubscriptions1791276719783
303	1791366497000	CreateMigrationWorkflowOwnerTable1791366497000
304	1791374893870	AddWorkflowSuggestionReviewState1791374893870
305	1791377741439	AllowGitLabPromotionProvider1791377741439
306	1791378361769	CreateSelfHealingResultTable1791378361769
307	1791448888000	AddVerdictToAgentEvalResult1791448888000
308	1791463714234	AddActivityEventResourceIndex1791463714234
309	1791540050944	CreateIdempotencyKeyTable1791540050944
310	1791542683581	AddTimeoutSecondsToScheduler1791542683581
\.


--
-- Data for Name: oauth_clients; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_clients" ("id", "name", "redirectUris", "grantTypes", "clientSecret", "clientSecretExpiresAt", "tokenEndpointAuthMethod", "createdAt", "updatedAt", "isFirstParty") FROM stdin;
\.


--
-- Data for Name: oauth_access_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_access_tokens" ("token", "clientId", "userId") FROM stdin;
\.


--
-- Data for Name: oauth_authorization_codes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_authorization_codes" ("code", "clientId", "userId", "redirectUri", "codeChallenge", "codeChallengeMethod", "expiresAt", "state", "used", "createdAt", "updatedAt", "resource", "scope") FROM stdin;
\.


--
-- Data for Name: oauth_refresh_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_refresh_tokens" ("token", "clientId", "userId", "expiresAt", "createdAt", "updatedAt", "scope", "resource") FROM stdin;
\.


--
-- Data for Name: oauth_user_consents; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."oauth_user_consents" ("id", "userId", "clientId", "grantedAt", "scope") FROM stdin;
\.


--
-- Data for Name: poller_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."poller_state" ("workflowId", "nodeId", "cursor", "consecutiveErrors", "backoffUntil", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: processed_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."processed_data" ("workflowId", "context", "createdAt", "updatedAt", "value") FROM stdin;
\.


--
-- Data for Name: project_pool_settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_pool_settings" ("projectId", "defaultPool", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: project_relation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_relation" ("projectId", "userId", "role", "createdAt", "updatedAt") FROM stdin;
Z7jFGj3g0zBL4lSy	63efb5cb-23b6-43d7-bea6-bd1d7984f46d	project:personalOwner	2026-10-25 14:14:45.323+00	2026-10-25 14:14:45.323+00
\.


--
-- Data for Name: secrets_provider_connection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."secrets_provider_connection" ("id", "providerKey", "type", "encryptedSettings", "isEnabled", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: project_secrets_provider_access; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."project_secrets_provider_access" ("secretsProviderConnectionId", "projectId", "createdAt", "updatedAt", "role") FROM stdin;
\.


--
-- Data for Name: promotion_provider; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."promotion_provider" ("id", "name", "type", "authType", "config", "auth", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: promotion_connection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."promotion_connection" ("id", "name", "providerId", "scope", "target", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: promotion_config; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."promotion_config" ("id", "connectionId", "name", "direction", "settings", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: promotion_connection_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."promotion_connection_project" ("projectId", "connectionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule" ("id", "expression", "role", "type", "order", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: role_mapping_rule_project; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_mapping_rule_project" ("roleMappingRuleId", "projectId") FROM stdin;
\.


--
-- Data for Name: scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scope" ("slug", "displayName", "description") FROM stdin;
workflow:unpublish	Unpublish Workflow	Allows unpublishing workflows.
workflow:unshare	Unshare Workflow	Allows removing workflow shares.
credential:unshare	Unshare Credential	Allows removing credential shares.
project:manageMembers	Manage Project Members	Allows adding members to a project, changing a member's project role, and removing members.
execution:read	View Execution	Allows viewing executions of workflows the role can view.
execution:list	List Executions	Allows listing executions of workflows the role can view.
execution:delete	Delete Execution	Allows deleting executions of workflows in the project.
agent:create	Create Agent	Allows creating new agents in a project.
agent:read	Read Agent	Allows reading agent configuration and history.
agent:update	Update Agent	Allows updating, building, publishing, and managing integrations of agents.
agent:delete	Delete Agent	Allows deleting agents.
agent:list	List Agents	Allows listing agents in a project.
agent:execute	Execute Agent	Allows running agents in chat.
agent:publish	Publish Agent	Allows publishing agents.
agent:unpublish	Unpublish Agent	Allows unpublishing agents.
agent:manage	agent:manage	\N
agent:export	Export Agent	Allows including agents in a portable package export.
aiAssistant:manage	Manage AI Usage	Allows managing AI Usage settings.
aiPreference:create	aiPreference:create	\N
aiPreference:read	Read AI Preferences	Allows reading the AI preferences saved for the instance, the user, and their projects.
aiPreference:update	aiPreference:update	\N
aiPreference:delete	aiPreference:delete	\N
aiPreference:list	aiPreference:list	\N
projectAiPreference:create	projectAiPreference:create	\N
projectAiPreference:read	projectAiPreference:read	\N
projectAiPreference:update	projectAiPreference:update	\N
projectAiPreference:delete	projectAiPreference:delete	\N
projectAiPreference:list	projectAiPreference:list	\N
annotationTag:create	Create Annotation Tag	Allows creating new annotation tags.
annotationTag:read	annotationTag:read	\N
annotationTag:update	annotationTag:update	\N
annotationTag:delete	annotationTag:delete	\N
annotationTag:list	annotationTag:list	\N
auditLogs:manage	auditLogs:manage	\N
banner:dismiss	banner:dismiss	\N
community:register	community:register	\N
communityPackage:install	communityPackage:install	\N
communityPackage:uninstall	communityPackage:uninstall	\N
communityPackage:update	communityPackage:update	\N
communityPackage:list	communityPackage:list	\N
communityPackage:manage	communityPackage:manage	\N
credential:share	credential:share	\N
credential:shareGlobally	credential:shareGlobally	\N
credential:move	credential:move	\N
credential:connect	Connect End-User Credential	Allows connecting an own account to an end-user credential.
credential:createEndUser	Manage End-User Credential	Allows creating, deleting, and changing the type of end-user credentials, which resolve to each user's own connection.
credential:manageInstance	Manage provider connections	Allows creating, updating, and deleting provider connections used by instance-level features. These connections are not available in workflows.
credential:use	Use Credential	Allows using any credential on the instance in a workflow, without being a member of its project. Without it, a role that can read credentials sees them but cannot select, test, or run them.
credential:create	credential:create	\N
credential:read	credential:read	\N
credential:update	credential:update	\N
credential:delete	credential:delete	\N
credential:list	credential:list	\N
credentialTypePolicy:manage	Manage Credential Type Policies	Allows managing which credential types are available, on the instance or in a project.
externalSecretsProvider:sync	externalSecretsProvider:sync	\N
externalSecretsProvider:create	externalSecretsProvider:create	\N
externalSecretsProvider:read	externalSecretsProvider:read	\N
externalSecretsProvider:update	externalSecretsProvider:update	\N
externalSecretsProvider:delete	externalSecretsProvider:delete	\N
externalSecretsProvider:list	externalSecretsProvider:list	\N
externalSecret:list	externalSecret:list	\N
eventBusDestination:test	eventBusDestination:test	\N
eventBusDestination:create	eventBusDestination:create	\N
eventBusDestination:read	eventBusDestination:read	\N
eventBusDestination:update	eventBusDestination:update	\N
eventBusDestination:delete	eventBusDestination:delete	\N
eventBusDestination:list	eventBusDestination:list	\N
ldap:sync	ldap:sync	\N
ldap:manage	ldap:manage	\N
license:manage	license:manage	\N
logStreaming:manage	logStreaming:manage	\N
nodeTypePolicy:manage	Manage Node Type Policies	Allows managing which node types are available, on the instance or in a project.
orchestration:read	orchestration:read	\N
orchestration:list	orchestration:list	\N
orchestration:manage	orchestration:manage	\N
project:create	project:create	\N
project:read	project:read	\N
project:update	project:update	\N
project:delete	project:delete	\N
project:list	project:list	\N
project:export	Export Project	Allows including projects in a portable package export.
saml:manage	saml:manage	\N
securityAudit:generate	securityAudit:generate	\N
securitySettings:manage	securitySettings:manage	\N
sourceControl:pull	sourceControl:pull	\N
sourceControl:push	sourceControl:push	\N
sourceControl:manage	sourceControl:manage	\N
sourceControl:read	sourceControl:read	\N
gitConnection:create	Create Git Connection	Allows creating Git connections and their authentication material.
gitConnection:read	Read Git Connection	Allows reading Git connection configuration. Secrets are never returned.
gitConnection:update	Update Git Connection	Allows updating Git connections, including their authentication material.
gitConnection:delete	Delete Git Connection	Allows deleting Git connections and their local files.
gitConnection:list	List Git Connections	Allows listing Git connections.
gitConnection:clone	Clone Git Connection	Allows cloning and removing the local working copy of a Git connection.
gitConnection:push	Push Git Connection	Allows pushing all projects linked to a Git connection to its remote repository.
gitConnection:manageProjects	Manage Git Connection Projects	Allows adding projects to and removing projects from a Git connection.
gitConnection:pull	Pull Git Connection	Allows importing all projects from a Git connection working copy into the instance.
tag:create	tag:create	\N
tag:read	tag:read	\N
tag:update	tag:update	\N
tag:delete	tag:delete	\N
tag:list	tag:list	\N
user:resetPassword	user:resetPassword	\N
user:changeRole	user:changeRole	\N
user:enforceMfa	user:enforceMfa	\N
user:generateInviteLink	user:generateInviteLink	\N
user:create	user:create	\N
user:read	user:read	\N
user:update	user:update	\N
user:delete	user:delete	\N
user:list	user:list	\N
variable:create	variable:create	\N
variable:read	variable:read	\N
variable:update	variable:update	\N
variable:delete	variable:delete	\N
variable:list	variable:list	\N
projectVariable:create	projectVariable:create	\N
projectVariable:read	projectVariable:read	\N
projectVariable:update	projectVariable:update	\N
projectVariable:delete	projectVariable:delete	\N
projectVariable:list	projectVariable:list	\N
workersView:manage	workersView:manage	\N
workflow:share	workflow:share	\N
workflow:execute	workflow:execute	\N
workflow:execute-chat	Execute Workflow in Chat	Allows executing workflows in chat.
workflow:export	Export Workflow	Allows including workflows in a portable package export.
workflow:import	Import Workflow	Allows importing workflows from a portable package into the project.
workflow:move	workflow:move	\N
workflow:activate	workflow:activate	\N
workflow:deactivate	workflow:deactivate	\N
workflow:create	workflow:create	\N
workflow:read	workflow:read	\N
workflow:update	workflow:update	\N
workflow:delete	workflow:delete	\N
workflow:list	workflow:list	\N
folder:create	folder:create	\N
folder:read	folder:read	\N
folder:update	folder:update	\N
folder:delete	folder:delete	\N
folder:list	folder:list	\N
folder:move	folder:move	\N
insights:list	insights:list	\N
insights:read	Read Insights	Allows reading insights data.
oidc:manage	oidc:manage	\N
provisioning:manage	provisioning:manage	\N
scim:manage	scim:manage	\N
dataTable:create	dataTable:create	\N
dataTable:read	dataTable:read	\N
dataTable:update	dataTable:update	\N
dataTable:delete	dataTable:delete	\N
dataTable:list	dataTable:list	\N
dataTable:readRow	dataTable:readRow	\N
dataTable:writeRow	dataTable:writeRow	\N
dataTable:readColumn	dataTable:readColumn	\N
dataTable:writeColumn	dataTable:writeColumn	\N
dataTable:listProject	dataTable:listProject	\N
execution:retry	execution:retry	\N
execution:get	execution:get	\N
execution:reveal	execution:reveal	\N
testRun:read	Read Test Run	Allows reading evaluation test runs and their per-case results.
testRun:list	List Test Runs	Allows listing evaluation test runs for a workflow.
workflowTags:update	workflowTags:update	\N
workflowTags:list	workflowTags:list	\N
role:manage	role:manage	\N
role:read	role:read	\N
role:manageProject	Manage project roles	Allows creating, editing, and deleting project role definitions.
role:list	role:list	\N
mcp:manage	mcp:manage	\N
mcp:oauth	mcp:oauth	\N
mcpApiKey:create	mcpApiKey:create	\N
mcpApiKey:rotate	mcpApiKey:rotate	\N
chatHub:manage	chatHub:manage	\N
chatHub:message	chatHub:message	\N
chatHubAgent:create	chatHubAgent:create	\N
chatHubAgent:read	chatHubAgent:read	\N
chatHubAgent:update	chatHubAgent:update	\N
chatHubAgent:delete	chatHubAgent:delete	\N
chatHubAgent:list	chatHubAgent:list	\N
breakingChanges:list	breakingChanges:list	\N
breakingChanges:migrate	breakingChanges:migrate	\N
apiKey:manage	apiKey:manage	\N
apiKey:create	apiKey:create	\N
apiKey:update	apiKey:update	\N
encryptionKey:manage	Manage Encryption Keys	Allows listing and rotating instance encryption keys.
credentialResolver:create	credentialResolver:create	\N
credentialResolver:read	credentialResolver:read	\N
credentialResolver:update	credentialResolver:update	\N
credentialResolver:delete	credentialResolver:delete	\N
credentialResolver:list	credentialResolver:list	\N
instanceAi:message	instanceAi:message	\N
instanceAi:manage	instanceAi:manage	\N
instanceAi:gateway	instanceAi:gateway	\N
instanceAi:eval	instanceAi:eval	\N
roleMappingRule:create	roleMappingRule:create	\N
roleMappingRule:read	roleMappingRule:read	\N
roleMappingRule:update	roleMappingRule:update	\N
roleMappingRule:delete	roleMappingRule:delete	\N
roleMappingRule:list	roleMappingRule:list	\N
otel:manage	otel:manage	\N
workflow:publish	Publish Workflow	Allows publishing workflows.
workflow:enableRedaction	workflow:enableRedaction	\N
workflow:disableRedaction	workflow:disableRedaction	\N
\.


--
-- Data for Name: role_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."role_scope" ("roleSlug", "scopeSlug") FROM stdin;
global:owner	workflow:unpublish
global:owner	workflow:unshare
global:owner	credential:unshare
global:owner	project:manageMembers
global:owner	execution:read
global:owner	execution:list
global:owner	execution:delete
global:owner	agent:create
global:owner	agent:read
global:owner	agent:update
global:owner	agent:delete
global:owner	agent:list
global:owner	agent:execute
global:owner	agent:publish
global:owner	agent:unpublish
global:owner	agent:manage
global:owner	agent:export
global:owner	aiAssistant:manage
global:owner	aiPreference:create
global:owner	aiPreference:read
global:owner	aiPreference:update
global:owner	aiPreference:delete
global:owner	aiPreference:list
global:owner	projectAiPreference:create
global:owner	projectAiPreference:read
global:owner	projectAiPreference:update
global:owner	projectAiPreference:delete
global:owner	projectAiPreference:list
global:owner	annotationTag:create
global:owner	annotationTag:read
global:owner	annotationTag:update
global:owner	annotationTag:delete
global:owner	annotationTag:list
global:owner	auditLogs:manage
global:owner	banner:dismiss
global:owner	community:register
global:owner	communityPackage:install
global:owner	communityPackage:uninstall
global:owner	communityPackage:update
global:owner	communityPackage:list
global:owner	credential:share
global:owner	credential:shareGlobally
global:owner	credential:move
global:owner	credential:connect
global:owner	credential:createEndUser
global:owner	credential:manageInstance
global:owner	credential:use
global:owner	credential:create
global:owner	credential:read
global:owner	credential:update
global:owner	credential:delete
global:owner	credential:list
global:owner	credentialTypePolicy:manage
global:owner	externalSecretsProvider:sync
global:owner	externalSecretsProvider:create
global:owner	externalSecretsProvider:read
global:owner	externalSecretsProvider:update
global:owner	externalSecretsProvider:delete
global:owner	externalSecretsProvider:list
global:owner	externalSecret:list
global:owner	eventBusDestination:test
global:owner	eventBusDestination:create
global:owner	eventBusDestination:read
global:owner	eventBusDestination:update
global:owner	eventBusDestination:delete
global:owner	eventBusDestination:list
global:owner	ldap:sync
global:owner	ldap:manage
global:owner	license:manage
global:owner	logStreaming:manage
global:owner	nodeTypePolicy:manage
global:owner	orchestration:read
global:owner	orchestration:manage
global:owner	project:create
global:owner	project:read
global:owner	project:update
global:owner	project:delete
global:owner	project:list
global:owner	project:export
global:owner	saml:manage
global:owner	securityAudit:generate
global:owner	securitySettings:manage
global:owner	sourceControl:pull
global:owner	sourceControl:push
global:owner	sourceControl:manage
global:owner	sourceControl:read
global:owner	gitConnection:create
global:owner	gitConnection:read
global:owner	gitConnection:update
global:owner	gitConnection:delete
global:owner	gitConnection:list
global:owner	gitConnection:clone
global:owner	gitConnection:push
global:owner	gitConnection:manageProjects
global:owner	gitConnection:pull
global:owner	tag:create
global:owner	tag:read
global:owner	tag:update
global:owner	tag:delete
global:owner	tag:list
global:owner	user:resetPassword
global:owner	user:changeRole
global:owner	user:enforceMfa
global:owner	user:generateInviteLink
global:owner	user:create
global:owner	user:read
global:owner	user:update
global:owner	user:delete
global:owner	user:list
global:owner	variable:create
global:owner	variable:read
global:owner	variable:update
global:owner	variable:delete
global:owner	variable:list
global:owner	projectVariable:create
global:owner	projectVariable:read
global:owner	projectVariable:update
global:owner	projectVariable:delete
global:owner	projectVariable:list
global:owner	workersView:manage
global:owner	workflow:share
global:owner	workflow:execute
global:owner	workflow:execute-chat
global:owner	workflow:export
global:owner	workflow:import
global:owner	workflow:move
global:owner	workflow:create
global:owner	workflow:read
global:owner	workflow:update
global:owner	workflow:delete
global:owner	workflow:list
global:owner	folder:create
global:owner	folder:read
global:owner	folder:update
global:owner	folder:delete
global:owner	folder:list
global:owner	folder:move
global:owner	insights:list
global:owner	insights:read
global:owner	oidc:manage
global:owner	provisioning:manage
global:owner	scim:manage
global:owner	dataTable:create
global:owner	dataTable:read
global:owner	dataTable:update
global:owner	dataTable:delete
global:owner	dataTable:list
global:owner	dataTable:readRow
global:owner	dataTable:writeRow
global:owner	dataTable:readColumn
global:owner	dataTable:writeColumn
global:owner	dataTable:listProject
global:owner	execution:reveal
global:owner	role:manage
global:owner	role:read
global:owner	role:list
global:owner	mcp:manage
global:owner	mcp:oauth
global:owner	mcpApiKey:create
global:owner	mcpApiKey:rotate
global:owner	chatHub:manage
global:owner	chatHub:message
global:owner	chatHubAgent:create
global:owner	chatHubAgent:read
global:owner	chatHubAgent:update
global:owner	chatHubAgent:delete
global:owner	chatHubAgent:list
global:owner	breakingChanges:list
global:owner	breakingChanges:migrate
global:owner	apiKey:manage
global:owner	apiKey:create
global:owner	apiKey:update
global:owner	encryptionKey:manage
global:owner	credentialResolver:create
global:owner	credentialResolver:read
global:owner	credentialResolver:update
global:owner	credentialResolver:delete
global:owner	credentialResolver:list
global:owner	instanceAi:message
global:owner	instanceAi:manage
global:owner	instanceAi:gateway
global:owner	instanceAi:eval
global:owner	roleMappingRule:create
global:owner	roleMappingRule:read
global:owner	roleMappingRule:update
global:owner	roleMappingRule:delete
global:owner	roleMappingRule:list
global:owner	otel:manage
global:owner	workflow:publish
global:owner	workflow:enableRedaction
global:owner	workflow:disableRedaction
global:admin	workflow:unpublish
global:admin	workflow:unshare
global:admin	credential:unshare
global:admin	project:manageMembers
global:admin	execution:read
global:admin	execution:list
global:admin	execution:delete
global:admin	agent:create
global:admin	agent:read
global:admin	agent:update
global:admin	agent:delete
global:admin	agent:list
global:admin	agent:execute
global:admin	agent:publish
global:admin	agent:unpublish
global:admin	agent:manage
global:admin	agent:export
global:admin	aiAssistant:manage
global:admin	aiPreference:create
global:admin	aiPreference:read
global:admin	aiPreference:update
global:admin	aiPreference:delete
global:admin	aiPreference:list
global:admin	projectAiPreference:create
global:admin	projectAiPreference:read
global:admin	projectAiPreference:update
global:admin	projectAiPreference:delete
global:admin	projectAiPreference:list
global:admin	annotationTag:create
global:admin	annotationTag:read
global:admin	annotationTag:update
global:admin	annotationTag:delete
global:admin	annotationTag:list
global:admin	auditLogs:manage
global:admin	banner:dismiss
global:admin	community:register
global:admin	communityPackage:install
global:admin	communityPackage:uninstall
global:admin	communityPackage:update
global:admin	communityPackage:list
global:admin	credential:share
global:admin	credential:shareGlobally
global:admin	credential:move
global:admin	credential:connect
global:admin	credential:createEndUser
global:admin	credential:manageInstance
global:admin	credential:use
global:admin	credential:create
global:admin	credential:read
global:admin	credential:update
global:admin	credential:delete
global:admin	credential:list
global:admin	credentialTypePolicy:manage
global:admin	externalSecretsProvider:sync
global:admin	externalSecretsProvider:create
global:admin	externalSecretsProvider:read
global:admin	externalSecretsProvider:update
global:admin	externalSecretsProvider:delete
global:admin	externalSecretsProvider:list
global:admin	externalSecret:list
global:admin	eventBusDestination:test
global:admin	eventBusDestination:create
global:admin	eventBusDestination:read
global:admin	eventBusDestination:update
global:admin	eventBusDestination:delete
global:admin	eventBusDestination:list
global:admin	ldap:sync
global:admin	ldap:manage
global:admin	license:manage
global:admin	logStreaming:manage
global:admin	nodeTypePolicy:manage
global:admin	orchestration:read
global:admin	orchestration:manage
global:admin	project:create
global:admin	project:read
global:admin	project:update
global:admin	project:delete
global:admin	project:list
global:admin	project:export
global:admin	saml:manage
global:admin	securityAudit:generate
global:admin	securitySettings:manage
global:admin	sourceControl:pull
global:admin	sourceControl:push
global:admin	sourceControl:manage
global:admin	sourceControl:read
global:admin	gitConnection:create
global:admin	gitConnection:read
global:admin	gitConnection:update
global:admin	gitConnection:delete
global:admin	gitConnection:list
global:admin	gitConnection:clone
global:admin	gitConnection:push
global:admin	gitConnection:manageProjects
global:admin	gitConnection:pull
global:admin	tag:create
global:admin	tag:read
global:admin	tag:update
global:admin	tag:delete
global:admin	tag:list
global:admin	user:resetPassword
global:admin	user:changeRole
global:admin	user:enforceMfa
global:admin	user:generateInviteLink
global:admin	user:create
global:admin	user:read
global:admin	user:update
global:admin	user:delete
global:admin	user:list
global:admin	variable:create
global:admin	variable:read
global:admin	variable:update
global:admin	variable:delete
global:admin	variable:list
global:admin	projectVariable:create
global:admin	projectVariable:read
global:admin	projectVariable:update
global:admin	projectVariable:delete
global:admin	projectVariable:list
global:admin	workersView:manage
global:admin	workflow:share
global:admin	workflow:execute
global:admin	workflow:execute-chat
global:admin	workflow:export
global:admin	workflow:import
global:admin	workflow:move
global:admin	workflow:create
global:admin	workflow:read
global:admin	workflow:update
global:admin	workflow:delete
global:admin	workflow:list
global:admin	folder:create
global:admin	folder:read
global:admin	folder:update
global:admin	folder:delete
global:admin	folder:list
global:admin	folder:move
global:admin	insights:list
global:admin	insights:read
global:admin	oidc:manage
global:admin	provisioning:manage
global:admin	scim:manage
global:admin	dataTable:create
global:admin	dataTable:read
global:admin	dataTable:update
global:admin	dataTable:delete
global:admin	dataTable:list
global:admin	dataTable:readRow
global:admin	dataTable:writeRow
global:admin	dataTable:readColumn
global:admin	dataTable:writeColumn
global:admin	dataTable:listProject
global:admin	execution:reveal
global:admin	role:manage
global:admin	role:read
global:admin	role:list
global:admin	mcp:manage
global:admin	mcp:oauth
global:admin	mcpApiKey:create
global:admin	mcpApiKey:rotate
global:admin	chatHub:manage
global:admin	chatHub:message
global:admin	chatHubAgent:create
global:admin	chatHubAgent:read
global:admin	chatHubAgent:update
global:admin	chatHubAgent:delete
global:admin	chatHubAgent:list
global:admin	breakingChanges:list
global:admin	breakingChanges:migrate
global:admin	apiKey:manage
global:admin	apiKey:create
global:admin	apiKey:update
global:admin	encryptionKey:manage
global:admin	credentialResolver:create
global:admin	credentialResolver:read
global:admin	credentialResolver:update
global:admin	credentialResolver:delete
global:admin	credentialResolver:list
global:admin	instanceAi:message
global:admin	instanceAi:manage
global:admin	instanceAi:gateway
global:admin	instanceAi:eval
global:admin	roleMappingRule:create
global:admin	roleMappingRule:read
global:admin	roleMappingRule:update
global:admin	roleMappingRule:delete
global:admin	roleMappingRule:list
global:admin	otel:manage
global:admin	workflow:publish
global:admin	workflow:enableRedaction
global:admin	workflow:disableRedaction
global:member	annotationTag:create
global:member	annotationTag:read
global:member	annotationTag:update
global:member	annotationTag:delete
global:member	annotationTag:list
global:member	eventBusDestination:test
global:member	eventBusDestination:list
global:member	tag:create
global:member	tag:read
global:member	tag:update
global:member	tag:list
global:member	user:list
global:member	variable:read
global:member	variable:list
global:member	dataTable:list
global:member	mcp:oauth
global:member	mcpApiKey:create
global:member	mcpApiKey:rotate
global:member	chatHub:message
global:member	chatHubAgent:create
global:member	chatHubAgent:read
global:member	chatHubAgent:update
global:member	chatHubAgent:delete
global:member	chatHubAgent:list
global:member	breakingChanges:list
global:member	apiKey:create
global:member	apiKey:update
global:member	credentialResolver:list
global:member	instanceAi:message
global:member	instanceAi:gateway
global:chatUser	chatHub:message
global:chatUser	chatHubAgent:create
global:chatUser	chatHubAgent:read
global:chatUser	chatHubAgent:update
global:chatUser	chatHubAgent:delete
global:chatUser	chatHubAgent:list
project:admin	workflow:unpublish
project:admin	credential:unshare
project:admin	project:manageMembers
project:admin	execution:read
project:admin	execution:list
project:admin	execution:delete
project:admin	agent:create
project:admin	agent:read
project:admin	agent:update
project:admin	agent:delete
project:admin	agent:list
project:admin	agent:execute
project:admin	agent:publish
project:admin	agent:unpublish
project:admin	agent:export
project:admin	projectAiPreference:create
project:admin	projectAiPreference:read
project:admin	projectAiPreference:update
project:admin	projectAiPreference:delete
project:admin	projectAiPreference:list
project:admin	credential:share
project:admin	credential:move
project:admin	credential:connect
project:admin	credential:createEndUser
project:admin	credential:create
project:admin	credential:read
project:admin	credential:update
project:admin	credential:delete
project:admin	credential:list
project:admin	credentialTypePolicy:manage
project:admin	nodeTypePolicy:manage
project:admin	project:read
project:admin	project:update
project:admin	project:delete
project:admin	project:list
project:admin	project:export
project:admin	sourceControl:push
project:admin	projectVariable:create
project:admin	projectVariable:read
project:admin	projectVariable:update
project:admin	projectVariable:delete
project:admin	projectVariable:list
project:admin	workflow:execute
project:admin	workflow:execute-chat
project:admin	workflow:export
project:admin	workflow:import
project:admin	workflow:move
project:admin	workflow:create
project:admin	workflow:read
project:admin	workflow:update
project:admin	workflow:delete
project:admin	workflow:list
project:admin	folder:create
project:admin	folder:read
project:admin	folder:update
project:admin	folder:delete
project:admin	folder:list
project:admin	folder:move
project:admin	dataTable:create
project:admin	dataTable:read
project:admin	dataTable:update
project:admin	dataTable:delete
project:admin	dataTable:readRow
project:admin	dataTable:writeRow
project:admin	dataTable:readColumn
project:admin	dataTable:writeColumn
project:admin	dataTable:listProject
project:admin	execution:reveal
project:admin	workflow:publish
project:admin	workflow:enableRedaction
project:admin	workflow:disableRedaction
project:personalOwner	workflow:unpublish
project:personalOwner	workflow:unshare
project:personalOwner	credential:unshare
project:personalOwner	execution:read
project:personalOwner	execution:list
project:personalOwner	execution:delete
project:personalOwner	agent:create
project:personalOwner	agent:read
project:personalOwner	agent:update
project:personalOwner	agent:delete
project:personalOwner	agent:list
project:personalOwner	agent:execute
project:personalOwner	agent:publish
project:personalOwner	agent:unpublish
project:personalOwner	agent:export
project:personalOwner	projectAiPreference:create
project:personalOwner	projectAiPreference:read
project:personalOwner	projectAiPreference:update
project:personalOwner	projectAiPreference:delete
project:personalOwner	projectAiPreference:list
project:personalOwner	credential:share
project:personalOwner	credential:move
project:personalOwner	credential:connect
project:personalOwner	credential:createEndUser
project:personalOwner	credential:create
project:personalOwner	credential:read
project:personalOwner	credential:update
project:personalOwner	credential:delete
project:personalOwner	credential:list
project:personalOwner	project:read
project:personalOwner	project:list
project:personalOwner	project:export
project:personalOwner	workflow:share
project:personalOwner	workflow:execute
project:personalOwner	workflow:execute-chat
project:personalOwner	workflow:export
project:personalOwner	workflow:import
project:personalOwner	workflow:move
project:personalOwner	workflow:create
project:personalOwner	workflow:read
project:personalOwner	workflow:update
project:personalOwner	workflow:delete
project:personalOwner	workflow:list
project:personalOwner	folder:create
project:personalOwner	folder:read
project:personalOwner	folder:update
project:personalOwner	folder:delete
project:personalOwner	folder:list
project:personalOwner	folder:move
project:personalOwner	dataTable:create
project:personalOwner	dataTable:read
project:personalOwner	dataTable:update
project:personalOwner	dataTable:delete
project:personalOwner	dataTable:readRow
project:personalOwner	dataTable:writeRow
project:personalOwner	dataTable:readColumn
project:personalOwner	dataTable:writeColumn
project:personalOwner	dataTable:listProject
project:personalOwner	execution:reveal
project:personalOwner	workflow:publish
project:personalOwner	workflow:enableRedaction
project:personalOwner	workflow:disableRedaction
project:editor	workflow:unpublish
project:editor	execution:read
project:editor	execution:list
project:editor	execution:delete
project:editor	agent:create
project:editor	agent:read
project:editor	agent:update
project:editor	agent:delete
project:editor	agent:list
project:editor	agent:execute
project:editor	agent:publish
project:editor	agent:unpublish
project:editor	agent:export
project:editor	projectAiPreference:create
project:editor	projectAiPreference:read
project:editor	projectAiPreference:update
project:editor	projectAiPreference:delete
project:editor	projectAiPreference:list
project:editor	credential:connect
project:editor	credential:create
project:editor	credential:read
project:editor	credential:update
project:editor	credential:delete
project:editor	credential:list
project:editor	project:read
project:editor	project:list
project:editor	project:export
project:editor	projectVariable:create
project:editor	projectVariable:read
project:editor	projectVariable:update
project:editor	projectVariable:delete
project:editor	projectVariable:list
project:editor	workflow:execute
project:editor	workflow:execute-chat
project:editor	workflow:export
project:editor	workflow:import
project:editor	workflow:create
project:editor	workflow:read
project:editor	workflow:update
project:editor	workflow:delete
project:editor	workflow:list
project:editor	folder:create
project:editor	folder:read
project:editor	folder:update
project:editor	folder:delete
project:editor	folder:list
project:editor	dataTable:create
project:editor	dataTable:read
project:editor	dataTable:update
project:editor	dataTable:delete
project:editor	dataTable:readRow
project:editor	dataTable:writeRow
project:editor	dataTable:readColumn
project:editor	dataTable:writeColumn
project:editor	dataTable:listProject
project:editor	workflow:publish
project:viewer	execution:read
project:viewer	execution:list
project:viewer	agent:read
project:viewer	agent:list
project:viewer	agent:execute
project:viewer	agent:export
project:viewer	projectAiPreference:read
project:viewer	projectAiPreference:list
project:viewer	credential:read
project:viewer	credential:list
project:viewer	project:read
project:viewer	project:list
project:viewer	project:export
project:viewer	projectVariable:read
project:viewer	projectVariable:list
project:viewer	workflow:execute-chat
project:viewer	workflow:export
project:viewer	workflow:read
project:viewer	workflow:list
project:viewer	folder:read
project:viewer	folder:list
project:viewer	dataTable:read
project:viewer	dataTable:readRow
project:viewer	dataTable:readColumn
project:viewer	dataTable:listProject
project:chatUser	agent:execute
project:chatUser	workflow:execute-chat
credential:owner	credential:unshare
credential:owner	credential:share
credential:owner	credential:move
credential:owner	credential:connect
credential:owner	credential:createEndUser
credential:owner	credential:read
credential:owner	credential:update
credential:owner	credential:delete
credential:user	credential:connect
credential:user	credential:read
workflow:owner	workflow:unpublish
workflow:owner	workflow:unshare
workflow:owner	execution:read
workflow:owner	execution:list
workflow:owner	execution:delete
workflow:owner	workflow:share
workflow:owner	workflow:execute
workflow:owner	workflow:execute-chat
workflow:owner	workflow:export
workflow:owner	workflow:move
workflow:owner	workflow:read
workflow:owner	workflow:update
workflow:owner	workflow:delete
workflow:owner	execution:reveal
workflow:owner	workflow:publish
workflow:owner	workflow:enableRedaction
workflow:owner	workflow:disableRedaction
workflow:editor	workflow:unpublish
workflow:editor	execution:read
workflow:editor	execution:list
workflow:editor	execution:delete
workflow:editor	workflow:execute
workflow:editor	workflow:execute-chat
workflow:editor	workflow:export
workflow:editor	workflow:read
workflow:editor	workflow:update
workflow:editor	workflow:publish
secretsProviderConnection:owner	externalSecretsProvider:sync
secretsProviderConnection:owner	externalSecretsProvider:read
secretsProviderConnection:owner	externalSecretsProvider:update
secretsProviderConnection:owner	externalSecretsProvider:delete
secretsProviderConnection:owner	externalSecretsProvider:list
secretsProviderConnection:owner	externalSecret:list
secretsProviderConnection:user	externalSecretsProvider:read
secretsProviderConnection:user	externalSecretsProvider:list
secretsProviderConnection:user	externalSecret:list
\.


--
-- Data for Name: scheduled_job; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scheduled_job" ("id", "name", "taskType", "payload", "kind", "cronExpression", "timezone", "intervalSeconds", "fireAt", "enabled", "nextRunAt", "lastFiredAt", "maxAttempts", "createdAt", "updatedAt", "recurrenceUnit", "recurrenceSize", "misfirePolicy", "misfireGraceSeconds", "ownerType", "ownerId", "ownerMemberId", "orphanedAt", "concurrencyLimit", "timeoutSeconds") FROM stdin;
\.


--
-- Data for Name: scheduled_task; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."scheduled_task" ("id", "jobId", "taskType", "payload", "scheduledFor", "runAt", "status", "attempts", "maxAttempts", "claimedBy", "leaseExpiresAt", "leaseEpoch", "startedAt", "finishedAt", "errorMessage", "createdAt", "dispatchedAt", "missedAfter", "timeoutSeconds") FROM stdin;
\.


--
-- Data for Name: workflow_suggestion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_suggestion" ("id", "workflowId", "projectId", "backgroundUserId", "expectedBaseline", "state", "closedReason", "closedAt", "payload", "createdAt", "updatedAt", "resultKind", "appliedVersionId", "appliedChecksum", "appliedAction", "appliedActorId") FROM stdin;
\.


--
-- Data for Name: self_healing_result; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."self_healing_result" ("id", "workflowId", "projectId", "backgroundUserId", "outcome", "summary", "report", "completedAt", "executionId", "suggestionId", "usage", "dismissedAt", "dismissedById", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: settings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."settings" ("key", "value", "loadOnStartup") FROM stdin;
ui.banners.dismissed	["V1"]	t
features.ldap	{"loginEnabled":false,"loginLabel":"","connectionUrl":"","allowUnauthorizedCerts":false,"connectionSecurity":"none","connectionPort":389,"baseDn":"","bindingAdminDn":"","bindingAdminPassword":"","firstNameAttribute":"","lastNameAttribute":"","emailAttribute":"","loginIdAttribute":"","ldapIdAttribute":"","userFilter":"","synchronizationEnabled":false,"synchronizationInterval":60,"searchPageSize":0,"searchTimeout":60,"enforceEmailUniqueness":true}	t
chat.access.enabled	false	t
userManagement.authenticationMethod	email	t
userManagement.isInstanceOwnerSetUp	true	t
license.cert	eyJsaWNlbnNlS2V5IjoiLS0tLS1CRUdJTiBMSUNFTlNFIEtFWS0tLS0tXG5DK1d1Q2QvNmcybnlxVEttaTJZOEh5bkV4cjV6TkRDQ3pRQTdqeUFwKy9XdFV6NVd4OTU3L0g5bGlXdGs3WFlaXG5PU1I1cnFpNHlubUlaZUNZWlUwS3k2SU5vcDdPb05qMjFRd1IrZnhsZWMvMDFxeE5aOUpINFR0NzBOb3hBb3VnXG5yMDYrMUozcGU4VFpzQXRVZ3FwS3lUblhrN0h3NWc1NEpKS3V3OUx0em9Eb1p4OEJOYms5V3NycEhaRzBKR2FWXG5rNnRtVDZVcS9VYnhUc1o0MW5PZTJUaE5oOGVFZi9zbWplVnE0d0ltSlN5OTFVTHV6MFFzb3dLNjB0QURxajFsXG5zQzhQbmxTbWROMG4vT0x6bmc2N2FOeVVoc3MwdGxxWUQwUWoyaTFPcjArb3pCY3hJTitBQVMweVQ0b1BPdnBrXG5KM1pDRlhkdDhQN0Y0NWxOYXlRZDV3PT18fFUyRnNkR1ZrWDEvWUFwUzBYMFZ5VFpwMTY5U3lNV21Bam1saSsrXG5qcEhFTjZmS09aV0hMMXRmMVI2U2J3a2RRM0h1bEJvRzE1RXBPeFdwREp3YjQvS21SSFloaU50NlJqOHpIdFZPXG40c01MbmNnSHBRdmZRMCs0YVcxSThTWG5mZHJEaXJ5MWhwaEd6aU9xTWgvb09yVUc3TmNLTTJyQ0RvaS9SaUp1XG5Lb0RqY3RobzRzcmZhSitKcWFIeC9uT2psd2ttcFJ3ZmJPWWdTdGVPUWI2bndIbjUwM051RWczcnREeVVMMTMrXG5VZFVBOTIvUjlPa0x3V3lkcmFGWFoybm1yZHZtN3pPVmpaYUR1MmJMc01hS2gwa0xJeEtDMjdLMlM5ZUR4NlIyXG55dndOckVOL1NNZ3A3dDlwMnFJNzVIQnJpQmxPKzV5M1lRcHVvOGJnTUJ2NFkzdFpxNXEwai9vcEp1cHRKaFZWXG5TN3ArOVZqTExRWEJ3Nmt1WmNkM1VGT1FISFM2aXdzazh4ckRIZmJlRnFvT0dHM1VQWVpsaGZBMHRVdTBmOGQ1XG51U3NiYVQ1Tkxkc0tVZkJ5bVBBaHh1R21IdTlVYldHRk9yVDJrdDNpYkVkVFpyMlFoZGJseWNXNVVHemRTQ2ZMXG5yYVBvREJHRllxRW1ic0ppMndqSmFFK3pxazJZbFFmVE9TTEhzZUZZY2hYdldueXR6aERXdkg2NGRaeGpMa1pUXG5iRHlOS0UvTHhZOFlLejFtMy9mVkFwZ1RGbDUxcmx0Q1VQSGVxWC9tUGNBdE9qeGJ3WlZ0NTR4WkY1RTJPbTZLXG5lYnpLeGxzSjNlMEFvdktGNk5mbXVQa0pld242RTZRcExaZTlXZHJndGU5MDFMTm5ObGZEcHV0SlpIUlN0SDhjXG5mdnNCRjRqMmVDWE82MWYvRHZWR2pyUDF4SFF0WDZYemd4NmN4aUxxYys1M0ttdy9IQzVRMGQ0dlI2Sk9TMVZEXG5YdU5mYlIvMCtUQkZxU1kxSWFaOWFxUm5nb0hJZEhXMGduYzA1ZmpUN1VpNDRWaE9pK3M1cmpBcEdURDlUMCtEXG4rMHpOVHJOVDJ2R2pmelFoSXpJU1FxWVZZYmNIQmgxdW93aUwzcThzTkFkbUthUjloeW5jR3RUa0VXMHRCYW9OXG5yNlR1V3MrbUR3LzJJTHJuN2RneTY4QitIbCtjNUdoMVNhRE5SYUtKREFISHE0b1g3enhxK2h5am9zSHJRN0FsXG5MMmpVeG41Y3Ivb2Y1QlkvM3l3aDQ0LzVCNk9ZclVGL05aRk5WZWV4THQ3UHhhUWNpRGxHQTRUa0gza1QvajVjXG5zdFlBTVdURlhaVytFV2QxTHEwaEFpSEluRDNyZXdHOWZTcVBkczM3ZUxGZld0TVRtbXhHRGRJblhhV2E0MW9hXG5Eb0JTUGFoSXF4cW1nUEhPTStpUU40WlJoWGpBVzNPSm5aUGdhUEd2SXhzWUYzMlN3Q2luZDNyK0hmMVRrL014XG5OcTA3UUZtL0duV0VLZERNM0xFVTgvOVFZbklNYW9tOE9JcklvRDBlQmNwcFhibUxzdnQ5anJVbGlQNFAxYVM4XG5RMW1lMVdaeXBwUkNuUTYyRG96ZVlVTXF0NTVWbW9WckcwMG9kdGM5TWQ2dldMa1MxbEZFSkNWVjVwMzVzbW04XG45TmRuQ1loazJiOUFrVGpKMXNvWVpyRzlqM29VT3dhV2t1YU1mbkJmdzUreVBTUUJzZG9rWE5PQlpBS1ZSbE1BXG56a2FIayt4clQrNnkra1Y4dEVUSVdUWmlNNzlDWEFEVUJkRTdvbzJQajhDb2FSemdqVkthaTQ5QmxIdFZ6VEE2XG5oY0xIV2s0SmRxd3RRSys5VFVWWWFNclFBZkpzNklqcUlqYUZSWlg3Z21IWlBrU0VNaklVSEsvL2UrQlk4TnpEXG5qVXY3YWpKMWFxV3dseDd4QlZLZDYxWVlodnpRaDZMOTZuVXhvMFB0d2JRMUk2VDhZYmVkNDIvTDVXc3ZOVVRwXG41eFp2amoxRkp2K1lqZ2JFY0pkMk4zaVlmeFV5QlljUm04ajNzOHFqU3hQQlU5RDZ1TFJhTCtvbEsyNHE3bUszXG5JRGJ5UzZGazRKNzc2YVFZTUk0azZ3NWErYmVnZ1Y5ZjVhYW42d1JPd21TN096aHRiV0VZZWthY2tuNGdpdlFFXG5BK0dkaWJjSnI4NTBVQkJRaHovZ3ltZDFGb2haUWJXS3ZCOUZOVlNwelNhUitJc043N1MyQ0xNQXlhK3hSVytCXG5jT2xsalV4aC9pUjQzdXVGemV1QzJOZUpEOHlmcWVGYXhuWU1YcEhyQS9WTjZkL2JWQkU0NkRJTmc2RFJUWVFSXG4wY1E2WWY5eThDU2hqeE1GcitZWnhWS0RremRBUC9DVjN5dVlvZ3VORXNSZDJadVlFZTRUcnJPUnlOWlBJYlVWXG5DY0Izc3NqM0l6dVcyNm9FNjJFMDBYWk9BVHNySlVYa3hBN2tkN2x5VDE5dEtRVzlpbXNGZCtKTTY3NHRiSDlZXG50YVY1Wkk2VWVNNmcwWUgveDFINnF1dnBXaFJFdTlkblorb1RZa2dKZkp3dVFqZmVHUkhXSTIyWHBvcVllNlg5XG5BWVl3Y3p4SlVyMU5NS1lqUEgzdkl4aVoyWS9rNW5YblRQRHJrR0ZzSEpjQU40QUdYRDlmQUovb29Rc0tacmJYXG53Y25XaExqbmtnZzFvNkhpQmxTaCtVd0w2Y1h3Mm9FM1hKWnBjQnNnS3dBWW94UXZGeXd4ZEN2ck5ZUDRBSSsxXG5mdzZIdFpBMEFqNFRONXdoRVlwc2Z1alRlSTZ6OHJncjdoUzR5TXJEUWRSLzk4RHdqVmlKZHpyVURlUFo1K2VWXG5BbHVWL2hqalZseTlaZFIxWlFtakcvQ0ZkNzhHVFZueHk1WkROc2x2eXd2TkdaRW9laUw5NkN3Nk96ckdRMWx3XG4xb01nMkdlaWxzKzk3Z1N4WkpkbHpzQm1YMU1mVkgvdGpYbHVzYU9ucC9lRllzSDZjQ0Fvbzg2SjJubUxHcmhlXG5ta2praEppT2VUdFlpMGRtYXdqbm1oYmZrMUw1VkZMWnFMdzNLUnREa0pscEFVZkE9PXx8dUQ5aWcwZUtqVHhpXG5vZ20zbU44MTRiRStHUWxFNERSY1BKQnJKUzZ2dGdoNWR1U2dCOC9RMjZWODZUVm9Uai9uQUZCL0ErdGp0OWFxXG41RDdTcXhqNmR4bzlzR3dYSjYySmVOU2Q0b0EyWGVaTDkwcnVpQzNKRHFLMVdDa3dDTGtXTndSaFBrLy9FdlY1XG5DdkFUWG4xVU5WTWNYZ0pFQnJJODBlTkdsN005WHo4b2RBVmVMaHptbkh6YWk5RUZHSGQ1aHpoTDhoekYva3FTXG5TTFYzSkFSYU5OMTQzb3JHQ200NVpUM3kxbHhsRHZOb2JZTzU2clcxemllVjlhYjd6N0FDcW5BT2NXcXZwejM1XG5HSTJrdGFseThCV1dWMmNod0dyeWZUajFmRzBQa1ZoL2VWc241aVUreGNVQ2NaaEZISzIwTzZ6dlFIWis1ZjN3XG5HMU83TmRCYU5RPT1cbi0tLS0tRU5EIExJQ0VOU0UgS0VZLS0tLS0iLCJ4NTA5IjoiLS0tLS1CRUdJTiBDRVJUSUZJQ0FURS0tLS0tXG5NSUlFRERDQ0FmUUNDUUNxZzJvRFQ4MHh3akFOQmdrcWhraUc5dzBCQVFVRkFEQklNUXN3Q1FZRFZRUUdFd0pFXG5SVEVQTUEwR0ExVUVDQXdHUW1WeWJHbHVNUTh3RFFZRFZRUUhEQVpDWlhKc2FXNHhGekFWQmdOVkJBTU1EbXhwXG5ZMlZ1YzJVdWJqaHVMbWx2TUI0WERUSXlNRFl5TkRBME1UQTBNRm9YRFRJek1EWXlOREEwTVRBME1Gb3dTREVMXG5NQWtHQTFVRUJoTUNSRVV4RHpBTkJnTlZCQWdNQmtKbGNteHBiakVQTUEwR0ExVUVCd3dHUW1WeWJHbHVNUmN3XG5GUVlEVlFRRERBNXNhV05sYm5ObExtNDRiaTVwYnpDQ0FTSXdEUVlKS29aSWh2Y05BUUVCQlFBRGdnRVBBRENDXG5BUW9DZ2dFQkFNQk0wNVhCNDRnNXhmbUNMd2RwVVR3QVQ4K0NCa3lMS0ZzZXprRDVLLzZXaGFYL1hyc2QvUWQwXG4yMEo3d2w1V2RIVTRjVkJtRlJqVndWemtsQ0syeVlKaThtang4c1hzR3E5UTFsYlVlTUtmVjlkc2dmdWhubEFTXG50blFaZ2x1Z09uRjJGZ1JoWGIvakswdHhUb2FvK2JORTZyNGdJRXpwa3RITEJUWXZ2aXVKbXJlZjdXYlBSdDRJXG5uZDlEN2xoeWJlYnloVjdrdXpqUUEvcFBLSFRGczhNVEhaOGhZVXhSeXJwbTMrTVl6UUQrYmpBMlUxRkljdGFVXG53UVhZV2FON3QydVR3Q3Q5ekFLc21ZL1dlT2J2bDNUWk41T05MQXp5V0dDdWxtNWN3S1IzeGJsQlp6WG5CNmdzXG5Pbk4yT0FkU3RjelRWQ3ljbThwY0ZVcnl0S1NLa0dFQ0F3RUFBVEFOQmdrcWhraUc5dzBCQVFVRkFBT0NBZ0VBXG5sSjAxd2NuMXZqWFhDSHVvaTdSMERKMWxseDErZGFmcXlFcVBBMjdKdStMWG1WVkdYUW9yUzFiOHhqVXFVa2NaXG5UQndiV0ZPNXo1ZFptTnZuYnlqYXptKzZvT2cwUE1hWXhoNlRGd3NJMlBPYmM3YkZ2MmVheXdQdC8xQ3BuYzQwXG5xVU1oZnZSeC9HQ1pQQ1d6My8yUlBKV1g5alFEU0hYQ1hxOEJXK0kvM2N1TERaeVkzZkVZQkIwcDNEdlZtYWQ2XG42V0hRYVVyaU4wL0xxeVNPcC9MWmdsbC90MDI5Z1dWdDA1WmliR29LK2NWaFpFY3NMY1VJaHJqMnVGR0ZkM0ltXG5KTGcxSktKN2pLU0JVUU9kSU1EdnNGVUY3WWRNdk11ckNZQTJzT05OOENaK0k1eFFWMUtTOWV2R0hNNWZtd2dTXG5PUEZ2UHp0RENpMC8xdVc5dE9nSHBvcnVvZGFjdCtFWk5rQVRYQ3ZaaXUydy9xdEtSSkY0VTRJVEVtNWFXMGt3XG42enVDOHh5SWt0N3ZoZHM0OFV1UlNHSDlqSnJBZW1sRWl6dEdJTGhHRHF6UUdZYmxoVVFGR01iQmI3amhlTHlDXG5MSjFXT0c2MkYxc3B4Q0tCekVXNXg2cFIxelQxbWhFZ2Q0TWtMYTZ6UFRwYWNyZDk1QWd4YUdLRUxhMVJXU0ZwXG5NdmRoR2s0TnY3aG5iOHIrQnVNUkM2aWVkUE1DelhxL001MGNOOEFnOGJ3K0oxYUZvKzBFSzJoV0phN2tpRStzXG45R3ZGalNkekNGbFVQaEtra1Vaa1NvNWFPdGNRcTdKdTZrV0JoTG9GWUtncHJscDFRVkIwc0daQTZvNkR0cWphXG5HNy9SazZ2YmFZOHdzTllLMnpCWFRUOG5laDVab1JaL1BKTFV0RUV0YzdZPVxuLS0tLS1FTkQgQ0VSVElGSUNBVEUtLS0tLSJ9	f
\.


--
-- Data for Name: shared_credentials; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_credentials" ("credentialsId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
8lMiwdMZwMCQBiLW	Z7jFGj3g0zBL4lSy	credential:owner	2026-10-25 15:18:47.417+00	2026-10-25 15:18:47.417+00
\.


--
-- Data for Name: shared_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."shared_workflow" ("workflowId", "projectId", "role", "createdAt", "updatedAt") FROM stdin;
n1jqwOzlm0darTR5	Z7jFGj3g0zBL4lSy	workflow:owner	2026-10-25 15:03:35.252+00	2026-10-25 15:03:35.252+00
\.


--
-- Data for Name: test_run; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_run" ("id", "workflowId", "status", "errorCode", "errorDetails", "runAt", "completedAt", "metrics", "createdAt", "updatedAt", "runningInstanceId", "cancelRequested", "workflowVersionId", "evaluationConfigId", "evaluationConfigSnapshot", "collectionId") FROM stdin;
\.


--
-- Data for Name: test_case_execution; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."test_case_execution" ("id", "testRunId", "executionId", "status", "runAt", "completedAt", "errorCode", "errorDetails", "metrics", "createdAt", "updatedAt", "inputs", "outputs", "runIndex") FROM stdin;
\.


--
-- Data for Name: token_exchange_jti; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."token_exchange_jti" ("jti", "expiresAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: trusted_key_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key_source" ("id", "type", "config", "status", "lastError", "lastRefreshedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: trusted_key; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_key" ("sourceId", "kid", "data", "createdAt") FROM stdin;
\.


--
-- Data for Name: trusted_source; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_source" ("id", "name", "type", "issuer", "managedBy", "status", "lastError", "lastCheckedAt", "configVersion", "config", "createdAt", "updatedAt", "metadata", "discoveryClaimedAt", "discoveryClaimToken") FROM stdin;
n8n-internal	n8n	oauth2	https://n8n-Man.onrender.com	system	healthy	\N	2026-10-30 04:08:43.567+00	1	U2FsdGVkX1+zGmK/dWvVYmtlbVSMHN+SPe92G7EtaUvhTLjs4qDMS4wYW4WNVmS/CY1+UGyQIc/7+HMRETczT6bFxQ+2dXZHOp3nh1/Ol3Ai3v8ZgxJ2pTc9CE8MzR2YLiMX7YDYstk5izeUGVS+5bjXSY+NY5xU4daux7Z7fXHAue9K3qHtfoKh/vvrQw7Xks62MDunF0ojSnJjqaNVLrLyueK6apaFIy4K84B5CsKM756ZSEv46VdOXiYRYGCTgCgm9FjETK4i4c48KFbjE6XKbuugljqnfBJIMBUIHdMXxMqxSdb8c4auZhRgaRzCbO/VbuNAitbSEzoOc1Fs7RKgX5sZLH4rC+piD3sRotc0kTVVIeRH4kze01tAgunE8xpSHZfA+HcP4jwxxHG0qSpzrAOlkeTH9qKrfMJtYMU82PnKqe1kZ3H7RrJhCibwjTWd3zeB4IlTqFiZQRRYZTG+CtOfpDYjGauckW2KnfpKTYJnUHMgPe113MCMPfWgQJ4e8PRgn6GS58LQG6Q6i7uk5PTcsZO9KRDz2Lmod1hKsnFtbwaRSe1I0QBKeDCtcaGyJoHqVE4wWGnsb+JECVSqprM439gGymWNEQV732YoPGn7cEQUuw+6ZarR/oMreE4C8/fjSBhlNxAoENSM6InASBpP70ZlDybMyeKKokRk6EXnAwMC50L+XQU8dS9ReWZyMCLWCu1vOQ+51n0VDzxliE4dCT/tKiJss11gsHAvATXTSbzdFhmLyFS803VxdJvDwGtUyBI1dar8iyYGxFpbAwdwX/UYDDOg+ZGsKXrodoX9OO+5iDbIyfmGsgGGiOM04g1WWEe7GitUz8Amq6BrMTnwd9QKf9DHLjYazApfzemNZr24M/HFHo3CUq7+cHWLpqq1b5JyjNpZvrcvx9ohC1xmbaJuuiz7yJsUVncg79hnFwjRhFHj181znoGOitWuIPqxeiqhP6yVfHR7dxRWHO4aSWl3tw1vY9hPf84=	2026-10-25 14:22:04.022+00	2026-10-30 04:08:43.567+00	{"version":1,"documents":[{"kind":"oauth2-authorization-server","fetchedAt":"2026-10-30T04:08:42.885Z","document":{"issuer":"https://n8n-Man.onrender.com","jwks_uri":"https://n8n-Man.onrender.com/rest/.well-known/jwks.json","authorization_endpoint":"https://n8n-Man.onrender.com/mcp-oauth/authorize","token_endpoint":"https://n8n-Man.onrender.com/mcp-oauth/token","registration_endpoint":"https://n8n-Man.onrender.com/mcp-oauth/register","revocation_endpoint":"https://n8n-Man.onrender.com/mcp-oauth/revoke","response_types_supported":["code"],"grant_types_supported":["authorization_code","refresh_token"],"token_endpoint_auth_methods_supported":["none","client_secret_post","client_secret_basic"],"code_challenge_methods_supported":["S256"],"authorization_response_iss_parameter_supported":true,"scopes_supported":["workflow:read","workflow:write","workflow:execute","execution:read","agent:read","agent:write","agent:execute","credential:read","dataTable:read","dataTable:write","project:read","project:write","tag:read","communityPackage:install","aiPreference:read","aiPreference:write"]}},{"kind":"jwks","fetchedAt":"2026-10-30T04:08:42.885Z","url":"https://n8n-Man.onrender.com/rest/.well-known/jwks.json","keys":[{"kid":"bnrEP3mphFnpXVx5","kty":"EC","use":"sig","alg":"ES256","crv":"P-256","x":"2_D5-k_8g-XVbyQ9It1IPFeyMTu5fj0bfEwdor3p4fQ","y":"XkMs_1O0Q9uAcVidXjY04VOIllcCwZo0Wbcm5U4K8yg"}]}]}	\N	\N
\.


--
-- Data for Name: trusted_source_identity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."trusted_source_identity" ("sourceId", "subject", "userId", "provenance", "status", "lastSeenAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: type_availability_policy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."type_availability_policy" ("id", "kind", "rules", "version", "updatedBy", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: type_availability_policy_scope; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."type_availability_policy_scope" ("id", "kind", "projectId", "defaultAction", "version", "updatedBy", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: type_availability_policy_attachment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."type_availability_policy_attachment" ("scopeId", "policyId", "priority", "isFloor", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: user_api_keys; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_api_keys" ("id", "userId", "label", "apiKey", "createdAt", "updatedAt", "scopes", "audience", "lastUsedAt") FROM stdin;
\.


--
-- Data for Name: user_favorites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."user_favorites" ("id", "userId", "resourceId", "resourceType") FROM stdin;
\.


--
-- Data for Name: variables; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."variables" ("key", "type", "value", "id", "projectId") FROM stdin;
\.


--
-- Data for Name: webhook_entity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."webhook_entity" ("webhookPath", "method", "node", "webhookId", "pathLength", "workflowId") FROM stdin;
\.


--
-- Data for Name: workflow_builder_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_builder_session" ("id", "workflowId", "userId", "messages", "previousSummary", "createdAt", "updatedAt", "activeVersionCardId", "resumeAfterRestoreMessageId") FROM stdin;
\.


--
-- Data for Name: workflow_dependency; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_dependency" ("id", "workflowId", "workflowVersionId", "dependencyType", "dependencyKey", "dependencyInfo", "indexVersionId", "createdAt", "publishedVersionId") FROM stdin;
279	n1jqwOzlm0darTR5	93	workflowIndexed	__INDEXED__	\N	2	2026-10-27 07:49:17.99+00	\N
\.


--
-- Data for Name: workflow_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_history" ("versionId", "workflowId", "authors", "createdAt", "updatedAt", "nodes", "connections", "name", "autosaved", "description", "nodeGroups") FROM stdin;
c12ba686-498f-4028-8d2d-691f3a34ed1a	n1jqwOzlm0darTR5	Krisman San Juan	2026-10-27 07:49:13.705+00	2026-10-27 07:49:13.705+00	[]	{}	\N	t	\N	[]
\.


--
-- Data for Name: workflow_publication_outbox; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publication_outbox" ("id", "workflowId", "publishedVersionId", "status", "errorMessage", "createdAt", "updatedAt", "reason") FROM stdin;
\.


--
-- Data for Name: workflow_publication_retry_state; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publication_retry_state" ("workflowId", "targetVersionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_publication_trigger_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publication_trigger_status" ("workflowId", "nodeId", "versionId", "status", "errorMessage", "createdAt", "updatedAt", "triggerKind") FROM stdin;
\.


--
-- Data for Name: workflow_publish_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_publish_history" ("id", "workflowId", "versionId", "event", "userId", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_published_version; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_published_version" ("workflowId", "publishedVersionId", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_review_request; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_request" ("id", "projectId", "state", "decision", "title", "description", "createdById", "updatedById", "closedById", "approvedAt", "createdAt", "updatedAt") FROM stdin;
\.


--
-- Data for Name: workflow_review_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_activity" ("id", "workflowReviewRequestId", "type", "typeVersion", "data", "createdById", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_review_activity_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_activity_comment" ("id", "activityId", "createdById", "body", "history", "updatedAt", "deletedAt", "createdAt") FROM stdin;
\.


--
-- Data for Name: workflow_review_request_authors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_request_authors" ("workflowReviewRequestId", "userId") FROM stdin;
\.


--
-- Data for Name: workflow_review_request_reviewers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_request_reviewers" ("workflowReviewRequestId", "userId") FROM stdin;
\.


--
-- Data for Name: workflow_review_request_workflow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_review_request_workflow" ("id", "workflowReviewRequestId", "workflowId", "workflowVersionId", "baselineVersionId") FROM stdin;
\.


--
-- Data for Name: workflow_statistics; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics" ("count", "latestEvent", "name", "workflowId", "rootCount", "id", "workflowName") FROM stdin;
1	2026-10-25 15:22:13.36+00	data_loaded	n1jqwOzlm0darTR5	1	3	\N
18	2026-10-26 07:10:19.365+00	manual_error	n1jqwOzlm0darTR5	0	6	My workflow
14	2026-10-27 06:27:41.19+00	manual_success	n1jqwOzlm0darTR5	0	1	My workflow
\.


--
-- Data for Name: workflow_statistics_delta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_statistics_delta" ("id", "workflowId", "name", "rootCountDelta", "createdAt", "workflowName") FROM stdin;
\.


--
-- Data for Name: workflow_suggestion_activity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflow_suggestion_activity" ("id", "suggestionId", "action", "author", "createdAt", "updatedAt", "actorId") FROM stdin;
\.


--
-- Data for Name: workflows_tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "public"."workflows_tags" ("workflowId", "tagId") FROM stdin;
\.


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets" ("id", "name", "owner", "created_at", "updated_at", "public", "avif_autodetection", "file_size_limit", "allowed_mime_types", "owner_id", "type", "versioning_status", "lifecycle_configuration", "lifecycle_configuration_generation") FROM stdin;
\.


--
-- Data for Name: buckets_analytics; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_analytics" ("name", "type", "format", "created_at", "updated_at", "id", "deleted_at") FROM stdin;
\.


--
-- Data for Name: buckets_vectors; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."buckets_vectors" ("id", "type", "created_at", "updated_at") FROM stdin;
\.


--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."objects" ("id", "bucket_id", "name", "owner", "created_at", "updated_at", "last_accessed_at", "metadata", "version", "owner_id", "user_metadata", "archived_at", "is_delete_marker", "is_versioned") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads" ("id", "in_progress_size", "upload_signature", "bucket_id", "key", "version", "owner_id", "created_at", "user_metadata", "metadata") FROM stdin;
\.


--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."s3_multipart_uploads_parts" ("id", "upload_id", "size", "part_number", "bucket_id", "key", "etag", "owner_id", "version", "created_at") FROM stdin;
\.


--
-- Data for Name: vector_indexes; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--

COPY "storage"."vector_indexes" ("id", "name", "bucket_id", "data_type", "dimension", "distance_metric", "metadata_configuration", "created_at", "updated_at") FROM stdin;
\.


--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 1, false);


--
-- Name: activity_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."activity_event_id_seq"', 1, false);


--
-- Name: agent_message_queue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."agent_message_queue_id_seq"', 1, false);


--
-- Name: auth_provider_sync_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."auth_provider_sync_history_id_seq"', 1, false);


--
-- Name: credential_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."credential_dependency_id_seq"', 1, false);


--
-- Name: execution_annotations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_annotations_id_seq"', 1, false);


--
-- Name: execution_entity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_entity_id_seq"', 32, true);


--
-- Name: execution_metadata_temp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."execution_metadata_temp_id_seq"', 1, false);


--
-- Name: insights_by_period_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_by_period_id_seq"', 1, false);


--
-- Name: insights_metadata_metaId_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_metadata_metaId_seq"', 1, false);


--
-- Name: insights_raw_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."insights_raw_id_seq"', 1, false);


--
-- Name: instance_version_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."instance_version_history_id_seq"', 1, true);


--
-- Name: migration_finding_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migration_finding_id_seq"', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."migrations_id_seq"', 310, true);


--
-- Name: oauth_user_consents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."oauth_user_consents_id_seq"', 1, false);


--
-- Name: scheduled_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."scheduled_job_id_seq"', 1, false);


--
-- Name: scheduled_task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."scheduled_task_id_seq"', 1, false);


--
-- Name: secrets_provider_connection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."secrets_provider_connection_id_seq"', 1, false);


--
-- Name: user_favorites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."user_favorites_id_seq"', 1, false);


--
-- Name: workflow_dependency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_dependency_id_seq"', 279, true);


--
-- Name: workflow_publication_outbox_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_publication_outbox_id_seq"', 1, false);


--
-- Name: workflow_publish_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_publish_history_id_seq"', 1, false);


--
-- Name: workflow_review_activity_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_review_activity_comment_id_seq"', 1, false);


--
-- Name: workflow_review_activity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_review_activity_id_seq"', 1, false);


--
-- Name: workflow_statistics_delta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_statistics_delta_id_seq"', 32, true);


--
-- Name: workflow_statistics_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."workflow_statistics_id_seq"', 27, true);


--
-- PostgreSQL database dump complete
--

-- \unrestrict 7Ez3VlNhPhOSjMfJhrBKgm7DMWVFs7YmfS6Sje38DFA0BaauchuVyCx3oowHSmA

RESET ALL;
