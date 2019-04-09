ARG FROM=opensuse/leap:15
FROM ${FROM} as base

RUN zypper ar https://download.opensuse.org/repositories/Cloud:/OpenStack:/Master/openSUSE_Leap_15.0/Cloud:OpenStack:Master.repo && zypper --gpg-auto-import-keys refresh && \
    zypper install --no-confirm \
                   --auto-agree-with-licenses \
                   --force-resolution \
                   --no-recommends \
                   lsb-release \
                   openstack-tempest \
                   python-barbican-tempest-plugin \
                   python-cinder-tempest-plugin \
                   python-designate-tempest-plugin \
                   python-heat-tempest-plugin \
                   python-ironic-tempest-plugin \
                   python-keystone-tempest-plugin \
                   python-magnum-tempest-plugin \
                   python-manila-tempest-plugin \
                   python-monasca-tempest-plugin \
                   python-neutron-tempest-plugin \
                   python-octavia-tempest-plugin \
                   python-telemetry-tempest-plugin
