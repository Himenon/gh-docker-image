FROM ubuntu:21.10 AS INSTALLER

RUN apt-get update 
RUN apt-get install curl gnupg2 -y
# https://github.com/cli/cli/blob/trunk/docs/install_linux.md
RUN curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | gpg --dearmor -o /usr/share/keyrings/githubcli-archive-keyring.gpg && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null
RUN apt-get update
RUN apt-get install -y gh

FROM ubuntu:21.10 AS FINAL

COPY --from=INSTALLER /usr/bin/gh /usr/bin/gh

