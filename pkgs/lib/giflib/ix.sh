{% extends '//die/make.sh' %}

{% block fetch %}
https://downloads.sourceforge.net/project/giflib/giflib-5.2.1.tar.gz
sha:31da5562f44c5f15d63340a09a4fd62b48c45620cd302f77a6d9acf0077879bd
{% endblock %}

{% block lib_deps %}
lib/c
{% endblock %}

{% block build_flags %}
wrap_cc
{% endblock %}
