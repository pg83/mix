{% extends '//die/autorehell.sh' %}

{% block fetch %}
https://github.com/nghttp2/nghttp2/archive/refs/tags/v1.46.0.tar.gz
77c54df8072bb387b39cffb194e2c818
{% endblock %}

{% block lib_deps %}
lib/c
lib/z
lib/ev
lib/c-ares
lib/openssl
{% endblock %}

{% block configure_flags %}
--disable-python-bindings
{% endblock %}
