set -x

adduser -h /mix -S -D mix

apk add python3

export REALM="/mix/realm/stable"
export PATH="${REALM}/bin:/mix/bootstrap/venv/bin:${PATH}"

su mix -s /bin/sh << EOF
set -e
set -x

cd /mix && mkdir bootstrap && cd bootstrap

python3 -m venv venv
python3 -m pip install jinja2

python3 /bootstrap/mix realm add stable \
    mix/mix \
        -Dmix_ver=f1debd96d9bbff75a9bd78f8a0735db84e5578b9 \
        -Dmix_md5=0c2b83b57bec9689fd34666d99e82660 \
    sys/linux/busybox

mix realm upgrade
mix gc
EOF

rm -rf /bootstrap /mix/bootstrap  \
    /bin /lib /mnt /run /srv /tmp \
    /var /home /media /opt /root  \
    /sbin /usr

ln -s "${REALM}/bin" /bin
