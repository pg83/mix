{% extends '//bin/grub/t/mix.sh' %}

{% block run_deps %}
bin/efibootmgr
{% endblock %}

{% block configure_flags %}
{{super()}}
--with-platform=efi
--disable-efiemu
{% endblock %}