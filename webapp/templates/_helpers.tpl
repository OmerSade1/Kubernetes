{{- define "webapp.image" -}}
{{ printf "%s:%s" .Values.application.image.repository .Values.application.image.tag }}
{{- end -}}

{{- define "redis.enabled" -}}
{{ .Values.redis.enabled | quote }}
{{- end -}}

{{- define "redis.auth.enabled" -}}
{{ .Values.redis.auth.enabled | quote }}
{{- end -}}


