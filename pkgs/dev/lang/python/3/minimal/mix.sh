{% extends '//dev/lang/python/3/10/mix.sh' %}

{% block bld_deps %}
{{'lib/linux/mix.sh' | linux}}
lib/z/mix.sh
env/std/mix.sh
boot/final/env/tools/mix.sh
{% endblock %}

{% block extra_modules %}
{% endblock %}

{% block extra_tests %}
{% endblock %}

{% block patch_ffi %}
{% endblock %}

{% block fix_readline %}
{% endblock %}

{% block coflags %}
--with-ensurepip=no
{% endblock %}

{% block extra_postinstall %}
rm -rf ${out}/include
rm -rf ${out}/lib/pkgconfig
find ${out}/lib/ | grep '\.a$' | xargs rm
{% endblock %}
