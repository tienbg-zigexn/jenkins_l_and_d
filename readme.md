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
  would definitely avoid that. wait a minute, jenkins is written in java, which
  is not that great, but fine.
  - wait once more, they are all using ssh to manage production servers. I
  would not have to install python or java, I just need python/java on the
  server that runs jenkins/ansible. hmm… this is acceptable now.
  - I would still prefer these kind of tools should be written in compiled
  language like C, zig, so on.
- main feature of this tool is to make managing multiple machines easy.
- help describe the whole infrastructure in yaml (supposedly to be both human
and machine friendly).

- I don't think install ansible using pip method as in the course is good. the
jenkins image based on debian, so you can just `apt install ansible-core`, and
you're good to go.
- oh, they have a note says to use venv to create virtual env and install there
instead of install globally using pip. this is better but still, just use the
debian package instead.
- I hate incompetent.
