{% extends '//bin/busybox/full/mix.sh' %}

{% block install %}
{{super()}}
cd ${out}
mv bin old
mkdir bin
mv old/busybox bin/bc
rm -rf old
{% endblock %}