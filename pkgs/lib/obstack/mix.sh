{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://github.com/void-linux/musl-obstack/archive/refs/tags/v1.2.2.tar.gz
# md5 edee8cb45ca351de5759b85f2aca0f3b
{% endblock %}

{% block deps %}
# bld dev/build/automake/1.16.3/mix.sh
# bld dev/build/make/mix.sh
# bld dev/build/pkg-config/mix.sh
# bld env/std/mix.sh
{% endblock %}

{% block autoreconf %}
dash ./bootstrap.sh
{% endblock %}