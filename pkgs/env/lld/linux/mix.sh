{% extends '//mix/template/py.py' %}

{% block env %}
export LD=clang
export LDFLAGS="-static -nostdlib -nostdlib++ -fuse-ld=lld ${LDFLAGS}"
{% endblock %}