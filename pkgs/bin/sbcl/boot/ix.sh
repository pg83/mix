{% extends '//die/c_std.sh' %}

{% block fetch %}
https://nav.dl.sourceforge.net/project/sbcl/sbcl/2.2.4/sbcl-2.2.4-source.tar.bz2
sha:fcdd251cbc65f7f808ed0ad77246848d1be166aa69a17f7499600184b7a57202
{% endblock %}

{% block bld_libs %}
lib/z
{% if linux %}
lib/linux
{% endif %}
{% endblock %}

{% block bld_tool %}
{% block boot_lisp_dep %}
bin/ecl
{% endblock %}
bld/make
bld/scripts/dlfcn
{% endblock %}

{% block patch %}
sed -e 's/lispobj \*static_code_space_free_pointer/extern lispobj \*static_code_space_free_pointer/' -i src/runtime/globals.h
sed -e 's/size_t os_vm_page_size/extern size_t os_vm_page_size/' -i src/runtime/arm64-bsd-os.c

cat << EOF
{% include 'symbols' %}
EOF | while read l; do echo "sbcl ${l} ${l}"; done | dl_stubs > symbols.c
{% endblock %}

{% block boot_lisp %}
ecl -norc
{% endblock %}

{% block build %}
clang -c symbols.c -o ${tmp}/symbols.o

export LDLIBS="${tmp}/symbols.o"

ulimit -s 60000

sh make.sh \
    --prefix=${out} \
    --xc-host='{{self.boot_lisp().strip()}}' \
    --with-sb-ldb \
    --with-sb-thread \
    --with-sb-core-compression \
    --with-os-provides-dlopen
{% endblock %}

{% block install %}
sh install.sh
{% endblock %}
