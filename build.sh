set -ex

sudo rm -rf out
mkdir -p out
chmod a+rwx out
docker run -it --rm \
 -v `realpath .`:/tmp/host \
 alt:p10 \
 sh -e -x -c \
"useradd -m -U builder && \
apt-get update && \
apt-get install -y rpm-build wget \
 gcc-c++ cppunit-devel doxygen linuxdoc-tools libcap-devel libpam-devel libssl-devel libtdb-devel libkrb5-devel libldap-devel libltdl7-devel libsasl2-devel libnetfilter_conntrack-devel perl-DBI perl-URI perl-Pod-Usage perl-Digest-SHA perl-Crypt-OpenSSL-X509 samba-client samba-winbind-clients libecap-devel libxml2-devel libexpat-devel libnettle-devel libgnutls-devel libsystemd-devel && \
chmod a+rwx /tmp && \
cd /home/builder && \
runuser -u builder -- wget https://git.altlinux.org/tasks/336045/build/100/x86_64/srpm/squid-6.6-alt1.src.rpm && \
runuser -u builder -- rpm -i ./squid-6.6-alt1.src.rpm && \
runuser -u builder -- rpm -ba --target x86_64 /home/builder/RPM/SPECS/squid.spec && \
cp -a -v /home/builder/RPM /tmp/host/out/"
