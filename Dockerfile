FROM registry.fedoraproject.org/fedora-toolbox:latest

COPY toolbx-packages /
RUN dnf -y install $(<toolbx-packages)
RUN rm /toolbx-packages
