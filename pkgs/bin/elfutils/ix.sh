{% extends '//lib/elfutils/t/ix.sh' %}

{% block bld_libs %}
lib/intl
lib/curl
lib/linux
lib/sqlite3
lib/archive
lib/micro/httpd
{{super()}}
{% endblock %}

{% block configure_flags %}
{{super()}}
--enable-deterministic-archives
{% endblock %}
