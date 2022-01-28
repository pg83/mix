{% extends '//mix/template/proxy.sh' %}

{% block run_deps %}
bin/mingetty
{% endblock %}

{% block install %}
cd ${out}

mkdir -p etc/services; cd etc/services

for i in 1 2 3 4 5 6; do (
    mkdir mingetty${i}; cd mingetty${i}

    cat << EOF > run
#!/bin/sh
cd /var/run; mkdir -p mingetty${i}; cd mingetty${i}
exec flock lock srv setsid cttyhack mingetty --autologin root tty${i} 1>>out 2>>out
EOF

    chmod +x run
) done
{% endblock %}
