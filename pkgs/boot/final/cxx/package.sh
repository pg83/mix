{% extends '//lib/cxx/package.sh' %}

{% block deps %}
# lib boot/stage/7/lib
# dep {{'boot/lib/linux' | linux}}
# dep boot/stage/6/cmake boot/stage/7/env
{% endblock %}
