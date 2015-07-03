FROM 		jenkins

USER 		root
RUN 		curl -sSL https://get.docker.com/ | sh && \
				usermod -aG docker jenkins
RUN 		apt-get update
RUN 		apt-get install -y python-setuptools
RUN 		easy_install pip
RUN  		pip install -i http://dp-opsaux01-dev.sea1.office.priv/pypi/ freight-forwarder

USER 		jenkins

