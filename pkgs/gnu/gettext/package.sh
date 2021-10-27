{% extends '//mix/template/autohell.sh' %}

{% block fetch %}
# url https://ftp.gnu.org/pub/gnu/gettext/gettext-0.21.tar.gz
# md5 28b1cd4c94a74428723ed966c38cf479
{% endblock %}

{% block deps %}
# bld lib/iconv lib/intl lib/unistring lib/xml2 lib/textstyle
# bld dev/build/make dev/lang/bison/3.6.4 tool/compress/minigzip env/std
{% endblock %}

{% block postunpack %}
cd gettext-tools
{% endblock %}

{% block coflags %}
--with-installed-libtextstyle
{% endblock %}

{% block postinstall %}
rm -rf ${out}/lib ${out}/include
{% endblock %}