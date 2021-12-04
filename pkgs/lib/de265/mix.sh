{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://github.com/strukturag/libde265/archive/refs/tags/v1.0.8.tar.gz
5abe0f3d4377af32e17e94cf15dde306
{% endblock %}

{% block lib_deps %}
lib/c++/mix.sh
{% endblock %}

{% block bld_tool %}
dev/build/autoconf/2/69/mix.sh
dev/build/automake/1.16.3/mix.sh
{% endblock %}

{% block autoreconf %}
dash autogen.sh
{% endblock %}

{% block patch %}
find . | grep Makefile.am | while read l; do
    sed -e 's|-lstdc++||g' -i ${l}
done

sed -e 's|-lstdc++||g' -i libde265.pc.in
{% endblock %}