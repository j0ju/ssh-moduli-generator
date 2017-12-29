= Makefile based approach for SSH moduli generation

This was written to generate SSH modulis using Make.
ssh-keygen is a single threaded application.
The `-j` switch of Make allows you to compute modulis for multiple bits at once.

== Usage

 * configure needed bit lenghts of modulis in Make
 * `make` it

== Hints
 * Use `-j N`
 * Take your time, on current CPUs (09/2017) modulis for less than 4096 bits are calculated
   in 1 to 2 hours, but time scales exponentially for longer bits.

== References

 * http://entropux.net/article/openssh-moduli/
 * https://stribika.github.io/2015/01/04/secure-secure-shell.html

== License
GPLv2, see attached License

