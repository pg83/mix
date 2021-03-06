{% extends '//die/kconfig.sh' %}

{% block fetch %}
https://busybox.net/downloads/busybox-1.35.0.tar.bz2
585949b1dd4292b604b7d199866e9913
{% endblock %}

{% block bld_libs %}
lib/c
lib/linux
{% endblock %}

{% block bld_tool %}
bld/perl
bin/bzip2
{% endblock %}

{% block no_mold %}
{% endblock %}

{% block build_flags %}
shut_up
{% endblock%}

{% block setup %}
export SKIP_STRIP=y
{% endblock %}

{% block make_target %}
busybox
busybox.links
{% endblock %}

{% block install %}
mkdir ${out}/bin
mv busybox ${out}/bin/

cat busybox.links | (cd ${out}/bin; while read l; do
    ln -s busybox $(basename ${l})
done)
{% endblock %}

{% block patch %}
sed -e 's|"syslogd"|"syslogd/syslogd"|' -i sysklogd/syslogd.c
{% endblock %}
