{{/*
  Licensed Materials - Property of IBM
  5737-E67
  @ Copyright IBM Corporation 2016, 2018. All Rights Reserved.
  US Government Users Restricted Rights - Use, duplication or disclosure restricted by GSA ADP Schedule Contract with IBM Corp.
*/}}

{{/* Grafana Configuration Files */}}
{{- define "grafanaConfig" }}
grafana.ini: |-
    ; instance_name = ${HOSTNAME}
    [paths]
    data = /var/lib/grafana/data
    logs = /var/log/grafana
    plugins = /var/lib/grafana/plugins

    [server]
    ;protocol = http
    ;http_addr =
    http_port = 3000
    ;domain = localhost
    ;enforce_domain = false
    ;root_url = %(protocol)s://%(domain)s:%(http_port)s/
    ;router_logging = false
    ;static_root_path = public
    ;enable_gzip = false
    ;cert_file =
    ;cert_key =

    [database]
    ;type = sqlite3
    ;host = 127.0.0.1:3306
    ;name = grafana
    ;user = root
    ;password =
    ;ssl_mode = disable
    ;path = grafana.db

    [session]
    ;provider = file
    ;provider_config = sessions
    ;cookie_name = grafana_sess
    ;cookie_secure = false
    ;session_life_time = 86400

    [analytics]
    ;reporting_enabled = true
    check_for_updates = true
    ;google_analytics_ua_id =

    [security]
    ;admin_user = admin
    ;admin_password = admin
    ;secret_key = SW2YcwTIb9zpOOhoPsMm
    ;login_remember_days = 7
    ;cookie_username = grafana_user
    ;cookie_remember_name = grafana_remember
    ;disable_gravatar = false
    ;data_source_proxy_whitelist =

    [snapshots]
    ;external_enabled = true
    ;external_snapshot_url = https://snapshots-origin.raintank.io
    ;external_snapshot_name = Publish to snapshot.raintank.io

    [users]
    ;allow_sign_up = true
    ;allow_org_create = true
    ;auto_assign_org = true
    ;auto_assign_org_role = Viewer
    ;login_hint = email or username
    default_theme = light

    [auth.anonymous]
    ;enabled = true
    ;org_name = Main Org.
    ;org_role = Admin

    [auth.github]
    ;enabled = false
    ;allow_sign_up = false
    ;client_id = some_id
    ;client_secret = some_secret
    ;scopes = user:email,read:org
    ;auth_url = https://github.com/login/oauth/authorize
    ;token_url = https://github.com/login/oauth/access_token
    ;api_url = https://api.github.com/user
    ;team_ids =
    ;allowed_organizations =

    [auth.google]
    ;enabled = false
    ;allow_sign_up = false
    ;client_id = some_client_id
    ;client_secret = some_client_secret
    ;scopes = https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email
    ;auth_url = https://accounts.google.com/o/oauth2/auth
    ;token_url = https://accounts.google.com/o/oauth2/token
    ;api_url = https://www.googleapis.com/oauth2/v1/userinfo
    ;allowed_domains =

    [auth.proxy]
    ;enabled = false
    ;header_name = X-WEBAUTH-USER
    ;header_property = username
    ;auto_sign_up = true

    [auth.basic]
    ;enabled = true

    [auth.ldap]
    ;enabled = false
    ;config_file = /etc/grafana/ldap.toml

    [smtp]
    ;enabled = false
    ;host = localhost:25
    ;user =
    ;password =
    ;cert_file =
    ;key_file =
    ;skip_verify = false
    ;from_address = admin@grafana.localhost

    [emails]
    ;welcome_email_on_sign_up = false

    [log]
    mode = console
    level = info

    [log.console]
    ;level =
    ;format = console

    [event_publisher]
    ;enabled = false
    ;rabbitmq_url = amqp://localhost/
    ;exchange = grafana_events

    [dashboards.json]
    enabled = true
    path = /etc/dashboards

    [metrics]
    ;enabled           = true
    ;interval_seconds  = 10

    ; [metrics.graphite]
    ; address = localhost:2003
    ; prefix = prod.grafana.%(instance_name)s.

    [grafana_com]
    url = https://grafana.com
{{- end }}
