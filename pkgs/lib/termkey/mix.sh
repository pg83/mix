{% extends '//mix/template/make.sh' %}

{% block fetch %}
https://github.com/neovim/libtermkey/archive/refs/tags/v0.20.tar.gz
d54de8576437ba8042333742aac2cd94
{% endblock %}

{% block lib_deps %}
lib/c/mix.sh
lib/unibilium/mix.sh
{% endblock %}

{% block bld_tool %}
dev/tool/perl/mix.sh
tool/compress/gzip/mix.sh
dev/build/pkg-config/mix.sh
dev/build/auto/libtool/mix.sh
{% endblock %}