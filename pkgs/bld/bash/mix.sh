{% extends '//bin/bash/5/t/mix.sh' %}

{% block bld_libs %}
lib/c
{% endblock %}

{% block std_box %}
bld/bootbox
{% endblock %}

{% block configure_flags %}
{{super()}}
--disable-nls
--disable-readline
{% endblock %}
