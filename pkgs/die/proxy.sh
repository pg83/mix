{% extends 'std/ix.sh' %}

{% block script_init_env %}
set +u # TODO(pg): relax
{% endblock %}

{% block decompressor %}
{% endblock %}

{% block step_setup %}
source_env "${IX_T_DIR}"
{% endblock %}

{% block step_unpack %}
echo 'skip unpack'
{% endblock %}

{% block postinstall %}
: assume all ok
{% endblock %}
