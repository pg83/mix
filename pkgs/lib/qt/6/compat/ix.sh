{% extends '//die/qt.sh' %}

{% block fetch %}
https://github.com/qt/qt5compat/archive/refs/tags/v6.3.0.tar.gz
sha:093ba26fcc481828cf7471aae303506b3bf0c4afb439826c202c55d1fb290820
{% endblock %}

{% block lib_deps %}
lib/c
lib/c++
lib/qt/6/base
{% endblock %}
