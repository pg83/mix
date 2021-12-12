{% extends 'std.sh' %}

{% block std_env %}
dev/build/make/mix.sh
{{super()}}
{% endblock %}

{% set make_cmd_args %}
{% block make_bin %}
make
{% endblock %}

-s

SHELL="$(which dash)"
PREFIX="${out}"
prefix="${out}"
V=0

{% block make_flags %}
{% endblock %}
{% endset %}

{% block build %}
{% set make_target %}
{% block make_target %}
{% endblock %}
{% endset %}

{% set cmd_args1 %}
{{make_cmd_args}}
-j
{% block make_thrs %}
${make_thrs}
{% endblock %}
{{make_target}}
{% endset %}

{% set cmd_args2 %}
{{make_cmd_args}}
{{make_target}}
{% endset %}

{{mix.fix_list(cmd_args1)}} || {{mix.fix_list(cmd_args2)}}
{% endblock %}

{% block install %}
{% set cmd_args %}
{{make_cmd_args}}
{% block make_install_target %}
install
{% endblock %}
{% endset %}

{{mix.fix_list(cmd_args)}}
{% endblock %}
