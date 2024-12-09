{{- define "webapp.image" -}}
{{ printf "%s:%s" .Values.application.image.repository .Values.application.image.tag }}
{{- end -}}

{{- define "redis.enabled" -}}
{{ .Values.redis.enabled | quote }}
{{- end -}}

{{- define "redis.auth.enabled" -}}
{{ .Values.redis.auth.enabled | quote }}
{{- end -}}

{{- define "redis.secretName" -}}
  {{- if and .Values.redis.auth .Values.redis.auth.existingSecret }}
    {{ .Values.redis.auth.existingSecret }}
  {{- else }}
    "redis-secret"  # Default value if not set
  {{- end }}
{{- end }}

{{- define "redis.host" -}}
  {{- if and .Values.redis.auth .Values.redis.auth.host }}
    {{ .Values.redis.auth.host }}
  {{- else }}
    "redis-host"  # Default value if not set
  {{- end }}
{{- end }}

{{- define "redis.port" -}}
  {{- if and .Values.redis.auth .Values.redis.auth.port }}
    {{ .Values.redis.auth.port }}
  {{- else }}
    "redis-port"  # Default value if not set
  {{- end }}
{{- end }}

{{- define "redis.password" -}}
  {{- if and .Values.redis.auth .Values.redis.auth.password }}
    {{ .Values.redis.auth.password }}
  {{- else }}
    "redis-password"  # Default value if not set
  {{- end }}
{{- end }}


