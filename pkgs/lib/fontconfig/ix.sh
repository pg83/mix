{% extends '//lib/fontconfig/t/ix.sh' %}

{% block run_data %}
lib/fontconfig/data
{% endblock %}

{% block bld_tool %}
{{super()}}
bld/scripts/reloc
{% endblock %}

{% block configure %}
{{super()}}
relocate "${FONTCONFIG_DATA}"
{% endblock %}
