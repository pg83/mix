{% extends 'ninja.sh' %}

{% block bld_deps %}
{{'dev/lang/cctools/mix.sh' | darwin}}
dev/build/meson/mix.sh
{{super()}}
{% endblock %}

{% set meson_flags %}
-Dprefix=${out}

{% if mix.platform.target.os == 'darwin' %}
-Db_asneeded=false
-Db_lundef=false
{% endif %}

{% block meson_flags %}
{% endblock %}
{% endset %}

{% block configure %}
meson {{mix.fix_list(meson_flags)}} {{ninja_build_dir}}
{% endblock %}
