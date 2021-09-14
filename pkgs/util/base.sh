{% block deps %}
{% endblock %}

{% block moredeps %}
{% endblock %}

{% block fetch %}
{% endblock %}

do_unpack() {
{% block preunpack%}
{% endblock %}

{% block unpack %}
mkdir bld && cd bld

for s in ${src}/*; do
    case $s in
        *touch)
        ;;
        *.diff)
        ;;
        *.patch)
        ;;
        *zip)
            $unzip $s
        ;;
        *)
            $untar $s
        ;;
    esac
done

cd *
{% endblock %}

{% block postunpack%}
{% endblock %}
}

do_patch() {
echo 'patch step'

{% block prepatch %}
{% endblock %}

{% block patch %}
{% endblock %}

{% block postpatch %}
{% endblock %}
}

do_configure() {
echo 'configure stage'

{% block cflags %}
{% endblock %}

{% block preconf %}
{% endblock %}

{% block configure %}
{% endblock %}

{% block postconf %}
{% endblock %}

export -p > ${tmp}/confenv
}

do_build() {
echo 'build stage'

{% block prebuild %}
{% endblock %}

{% block build %}
{% endblock %}

{% block postbuild%}
{% endblock %}
}

do_test() {
echo 'test stage'

{% block pretest%}
{% endblock %}

{% block test %}
{% endblock %}

{% block posttest %}
{% endblock %}
}

do_install() {
echo 'install stage'

{% block preinstall%}
{% endblock %}

{% block install %}
{% endblock %}

{% block postinstall%}
{% endblock %}

cat << EOF > ${out}/env
{% block env %}
{% endblock %}
EOF
}

build() {
echo "build ${out}"

do_unpack

(do_patch)
(do_configure)
. ${tmp}/confenv
(do_build)
(do_install)
(do_test)

echo "${out} complete"
}
