{% extends '//die/autohell.sh' %}

{% block fetch %}
http://gondor.apana.org.au/~herbert/dash/files/dash-0.5.11.3.tar.gz
c7016b513f701d88c70b3082eb183581
{% endblock %}

{% block bld_libs %}
lib/c
lib/edit
{% endblock %}

{% block cpp_defines %}
{% if darwin %}
stat64=stat
lstat64=lstat
fstat64=fstat
{% endif %}
{% endblock %}

{% block invoke_configure %}
sh configure --prefix="${out}" --with-libedit=yes
{% endblock %}
