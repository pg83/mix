{% extends '//lib/harfbuzz/t/mix.sh' %}

{% block bld_libs %}
{{super()}}
lib/freetype/nohb
{% endblock %}

{% block meson_flags %}
{{super()}}
cairo=disabled
{% endblock %}

{% block patch %}
sed -e 's|.*subdir.*util.*||' -i meson.build
{{super()}}
{% endblock %}
