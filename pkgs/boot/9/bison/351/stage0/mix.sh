{% extends '//boot/9/bison/template/mix.sh' %}

{% block fetch %}
https://ftp.gnu.org/gnu/bison/bison-3.5.1.tar.xz
6fc5fa4488832a65db934b9e93bd5d4c
{% endblock %}

{% block bison %}
boot/9/bison/341/stage2/mix.sh
{% endblock %}

{% block bison_patch %}
cd src

cat parse-gram.y | grep -v 'define api.token.raw' > _ && mv _ parse-gram.y
{% endblock %}
