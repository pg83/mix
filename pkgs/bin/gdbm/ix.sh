{% extends '//lib/gdbm/t/ix.sh' %}

{% block bld_libs %}
lib/intl
lib/readline
{{super()}}
{% endblock %}

{% block configure_flags %}
--with-readline
{{super()}}
{% endblock %}
