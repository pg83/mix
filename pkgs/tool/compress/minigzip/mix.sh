{% extends '//mix/template/proxy.sh' %}

{% block bld_deps %}
lib/z/mix.sh
env/std/0/mix.sh
{% endblock %}

{% block install %}
mkdir ${out}/bin && cd ${out}/bin

cp $(command -v minigzip) minigzip
ln -s minigzip gzip
{% endblock %}
