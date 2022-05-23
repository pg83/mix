{% extends '//die/proxy.sh' %}

{% block install %}
cd ${out}; mkdir -p etc/services/acpid2; cd etc/services/acpid2

cat << EOF > run
#!/bin/sh
exec srv acpid2 acpid -c /etc/acpi -d -f -l -m 0777 -p pid -l lockf
EOF

chmod +x run
{% endblock %}
