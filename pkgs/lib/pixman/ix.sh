{% extends '//die/meson.sh' %}

{% block fetch %}
https://www.cairographics.org/releases/pixman-0.40.0.tar.gz
73858c0862dd9896fb5f62ae267084a4
{% endblock %}

{% block lib_deps %}
lib/c
{% endblock %}

{% block env_lib %}
export CPPFLAGS="-I${out}/include/pixman-1 \${CPPFLAGS}"
{% endblock %}
