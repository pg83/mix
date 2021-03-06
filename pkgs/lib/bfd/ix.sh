{% extends '//die/autohell.sh' %}

{% block fetch %}
{% include '//bin/binutils/t/ver.sh' %}
{% endblock %}

{% block unpack %}
{{super()}}
cd bfd
{% endblock %}

{% block lib_deps %}
lib/z
lib/c
{% endblock %}

{% block configure_flags %}
--enable-targets=all
--enable-deterministic-archives
{% endblock %}

{% block install %}
{{super()}}
cp bfdver.h ${out}/include/
{% endblock %}
