{% extends '//mix/hub.sh' %}

{% block lib_deps %}
{% if linux %}
bld/boot/3/lib/musl
{% endif %}
{% if darwin %}
lib/darwin/c
{% endif %}
{% endblock %}