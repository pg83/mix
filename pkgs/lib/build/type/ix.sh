{% extends '//die/hub.sh' %}

{% block lib_deps %}
lib/build/type/{{buildtype or 'release'}}
{% endblock %}
