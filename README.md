# CVE-2024-23897
Jenkins 2.441 - Local File Inclusion 

Students: Chirtoaca Andreea, Grajdan Mihaela, Manea Raluca-Andreea

The Jenkins Command Line Interface (CLI) utilizes the args4j library to parse arguments and options. By default, this library includes a feature called expandAtFiles. This feature interprets any argument starting with the `@` character followed by a file path as a directive to replace that argument with the contents of the specified file.

In versions 2.441 and earlier (and LTS 2.426.2 and earlier), Jenkins did not disable this feature.

Used docker image:
[Docker image link](https://hub.docker.com/layers/vulhub/jenkins/2.441/images/sha256-5b84f5cdc39795ca8d4c88182f134b329bef88100e3e83cb655eacb74e1f9f1e)

Recording of using the repository for exploiting the CVE: [YouTube link](https://youtu.be/bWhzCMUfb-Q?si=9nYnKIZpPd3TlqmL)

## Files: 

* `start.sh` - A shell script that automatically pulls and launches a vulnerable Jenkins v2.441 environment inside a Docker container.

* `exploit.py` - A Python script that leverages CVE-2024-23897 to read local files from the Jenkins server by exploiting the CLI's @ argument expansion. 

## Other resources:

[Jenkins Security](https://www.jenkins.io/security/advisory/2024-01-24/)

[CVE Link](https://nvd.nist.gov/vuln/detail/cve-2024-23897)

[Exploit link](https://www.exploit-db.com/exploits/51993)

