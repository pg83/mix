{% extends '//die/hub.sh' %}

{% block lib_deps %}
lib/jpeg/{{jpeg or 'moz'}}
{% endblock %}
