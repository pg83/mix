{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://libbsd.freedesktop.org/releases/libmd-1.0.4.tar.xz
e8e955f8d53d2c9306b07c90ff6ae395
{% endblock %}

{% block bld_deps %}
env/autohell/mix.sh
{% endblock %}
