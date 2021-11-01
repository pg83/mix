{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://www.lysator.liu.se/~nisse/misc/argp-standalone-1.3.tar.gz
# md5 720704bac078d067111b32444e24ba69
{% endblock %}

{% block deps %}
# bld dev/build/make/mix.sh
# bld env/std/mix.sh
{% endblock %}

{% block patch %}
cat << EOF | patch -p0
{% include 'patch-argp-fmtstream.h' %}
EOF
{% endblock %}

{% block install %}
mkdir ${out}/lib
mkdir ${out}/include

cp libargp.a ${out}/lib
cp argp.h ${out}/include
{% endblock %}