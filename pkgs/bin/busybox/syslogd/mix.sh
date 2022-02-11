{% extends '//mix/template/proxy.sh' %}

{% block run_deps %}
bin/busybox/full
{% endblock %}

{% block install %}
cd ${out}; mkdir -p etc/services/syslogd; cd etc/services/syslogd

cat << EOF > run
#!/bin/sh
exec srv syslogd syslogd -n -O /var/log/syslog
EOF

chmod +x run
{% endblock %}
