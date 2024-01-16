{{/*
Common labels
*/}}
{{- define "ethereum.labels" -}}
helm.sh/chart: {{ include "ethereum.chart" . }}
{{ include "ethereum.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "ethereum.selectorLabels" -}}
app.kubernetes.io/name: {{ include "ethereum.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

