{% extends '//die/autorehell.sh' %}

{% block fetch %}
https://cdn.openbsd.org/pub/OpenBSD/OpenSSH/portable/openssh-9.0p1.tar.gz
sha:03974302161e9ecce32153cfa10012f1e65c8f3750f573a73ab1befd5972a28a
https://raw.githubusercontent.com/Homebrew/patches/1860b0a745f1fe726900974845d1b0dd3c3398d6/openssh/patch-sandbox-darwin.c-apple-sandbox-named-external.diff
33cc7e83ce4fe6ecadd1283967f795c3
https://raw.githubusercontent.com/Homebrew/patches/d8b2d8c2612fd251ac6de17bf0cc5174c3aab94c/openssh/patch-sshd.c-apple-sandbox-named-external.diff
a50fb1d7c40ac7fac3360218cb37a38b
{% endblock %}

{% block bld_libs %}
lib/c
lib/z
lib/edit
lib/ldns
lib/openssl
{% endblock %}

{% block bld_tool %}
bin/groff
bld/texinfo
{% endblock %}

{% block cpp_defines %}
__APPLE_SANDBOX_NAMED_EXTERNAL__
{% endblock %}

{% block patch %}
cat ${src}/*.diff | patch -p1
sed -e 's| -lcurses||' -i configure.ac
{% endblock %}

{% block configure_flags %}
--disable-strip
--with-privsep-path=${out}/tmp/privsep
{% endblock %}
