{% extends '//mix/cmake.sh' %}

{% block fetch %}
https://github.com/jtanx/libclipboard/archive/refs/tags/v1.1.tar.gz
bddc22070b6804ed63994af49b778b70
{% endblock %}

{% block lib_deps %}
lib/c
{% if darwin %}
lib/darwin/framework/AppKit
{% endif %}
{% endblock %}

{% block bld_tool %}
bld/pkg/config
{% endblock %}