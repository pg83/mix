{% extends '//die/py.py' %}

{% block env %}
export OPTFLAGS="-fsanitize=address -fno-omit-frame-pointer ${OPTFLAGS}"
{% endblock %}
