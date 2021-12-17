{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://github.com/containers/crun/releases/download/1.2/crun-1.2.tar.xz
cbfee6db4d034bfa62effe695da2bbd6
{% endblock %}

{% block bld_libs %}
lib/c/mix.sh
lib/intl/mix.sh
lib/yajl/mix.sh
lib/cap/mix.sh
lib/seccomp/mix.sh
lib/argp/standalone/mix.sh
{% endblock %}

{% block bld_tool %}
dev/tool/python/mix.sh
{% endblock %}

{% block configure_flags %}
--disable-systemd
{% endblock %}