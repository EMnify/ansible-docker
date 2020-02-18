FROM python:3

LABEL maintainer="EMnify <devops@emnify.com>" \
  org.label-schema.name="Ansible Container" \
  org.label-schema.description="Ansible container to be used in CI pipelines" \
  org.label-schema.schema-version="1.0"

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

CMD ["/bin/bash"]