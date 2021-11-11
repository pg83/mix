{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
https://github.com/tpoechtrager/cctools-port/archive/236a426c1205a3bfcf0dbb2e2faf2296f0a100e5.zip
3ba3b9f5e6ebc2afe77cdafeaaeeb981
{% endblock %}

{% block bld_deps %}
lib/c++/mix.sh
dev/build/autoconf/2.69/mix.sh
dev/build/automake/1.16.3/mix.sh
env/std/0/mix.sh
{% endblock %}

{% block unpack %}
{{super()}}
cd cctools
{% endblock %}

{% block autoreconf %}
libtoolize -c --force
autoreconf -i
sed -e 's/__arm__/__eat_shit__/' -i configure
{% endblock %}

{% block setup %}
export CPPFLAGS="-D__crashreporter_info__=__crashreporter_info_ld__ ${CPPFLAGS}"
{% endblock %}

{% block patch %}
{% if mix.platform.target.os == 'darwin' %}
cat << EOF > libobjc2/Makefile.am
noinst_LTLIBRARIES = libobjc.la
libobjc_la_LDFLAGS = -lobjc
libobjc_la_SOURCES =
EOF
{% endif %}
{% endblock %}

{% block coflags %}
--with-sysroot=${OSX_SDK}
{% endblock %}

{% block build %}
make -j ${make_thrs} || touch ld64/src/other/ObjectDump
{% endblock %}
