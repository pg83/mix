{% extends '//bin/kernel/18/t/ix.sh' %}

{% block slot %}1{% endblock %}

{% block kconfig_flags %}
{% include 'cfg' %}
{{super()}}
{% endblock %}
