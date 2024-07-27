# grafana-prometheus-loki-alertmanager
Grafana with Prometheus system data collected from the server
Loki for collecting server logs using Promtail
and AlertManager is used to send alerts of various types of log levels (error, warning, access, information, debug) (email alert, teams notification, webhook, etc.)

# Every application running on which port and server details:
## In Monitoring instance 
# Grafana:
        curl -i public-ip:3000
        curl -i privateip:3000
        curl -i 10.0.5.192:3000
    or :
        curl -i http://localhost:3000/api/health
    or with domain:
        http://your-monitoring-domain.com:3000/api/health
        https://your-monitoring-domain.com/api/health


# Prometheus:
        curl -i privateip:9090
        curl -i http://localhost:9090/metrics
        curl -i http://localhost:9090/-/healthy
    or :
         curl -i 10.0.5.192:9090

# Loki:
        curl -i privateip:3100
    or : 
        curl -i http:://localhost:3100/metrics
        curl -i http://localhost:3100/ready
    or : 
        curl -i 10.0.5.192:3100

# Alertmaneger:

        curl -i privateip:9093
    or :
        curl -i http:://localhost:9093/metrics
        curl -i http:://localhost:9093/api/v2/status
        curl -i http:://localhost:9093/api/v2/alerts

    or :
        curl -i 10.0.5.192:9093


### In development or application instance:
Promtail:
        curl -i privateip:9080
    or :
        curl -i http:://localhost:9080/metrics
        curl -i http://localhost:9080/ready
    or :
        curl -i 10.0.46.189:9080

# node_exporter:
        curl -i privateip:9100
    or :
        curl -i http:://localhost:9100/metrics
        curl -i http://localhost:9100/ready
    or :
        curl -i 10.0.46.189:9100
