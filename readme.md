# jenkins zero to hero course

- this repo contains byproducts of the course and notes from section 6 and
after.
- actually, I'll include the old note here as well. [pre section 6
note](/note_pre_section6.md)

## ansible (section 6)

- automation tool (leverage ssh and scripting).
- this thing is written in python.
  - my take is that python is not that great.
  - now you have to install python on your server in order to manage it? I
  would definitely avoid that. Wait a minute, jenkins is written in java, which
  is not that great, but fine.
  - wait once more, they are all using ssh to manage production servers. I
  would not have to install python or java, I just need python/java on the
  server that runs jenkins/ansible. Hmm… this is acceptable now.
  - I would still prefer these kind of tools should be written in compiled
  language like C, zig, so on.
- main feature of this tool is to make managing multiple machines easy.
- help describe the whole infrastructure in yaml (supposedly to be both human
and machine friendly).

- I don't think install ansible using pip method as in the course is good. The
jenkins image based on debian, so you can just `apt install ansible-core`, and
you're good to go.
- oh, they have a note says to use venv to create virtual env and install there
instead of install globally using pip. This is better but still, just use the
debian package instead.
- I hate incompetent.

- nginx is a really popular piece of software, it is included in pretty much
every linux distrubutions. Why do you have to add a repo in order to install
it? At least, I don't have to. Since my rockylinux has it.
- the same with php-fpm.

## security (section 7)

- even for security we have plugins. I thought jenkins would have to manage
this aspect 100%. The course even states that jenkins' default security is
weak. But I think the base security is pretty much enough for most users.
- role-based authen plugin? to add the functionalities similar to aws IAM? I
see, I can understand aws and gcp better. Instead of letting amazon or google
manage everything, we'll setup ourself.

## tips & tricks (section 8)

- jenkins has some default global variables to show information like
BUILD_NUMBER. Ofc we can create out own global vairables.

- in each job's configuration, we can config the build triggers. We can trigger
a job in multiple ways, like a cronjob for example.
  - we can use api to trigger jobs, similar to google scheduler.

## email (section 9)

- basically add smtp information from email service provider and send email.
- aws ses is acceptable, but gmail seems like a bad idea. Google mail service
is the main service of Google, they are trying their best to prevent people
host their own mail service.
- I prefer to create my own smtp server for this course. It's not that hard,
the only hardship is to make gmail not mark emails from my server as spams.
- after setted up emails, you can have notifications about jobs now.

## git (section 11)

- pre questions:
  - why gitlab? why not just open source tool like gitea or don't use frontend
    at all?
