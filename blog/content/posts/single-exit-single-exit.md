+++
title = "Single Exit, Single Exit"
date =  2024-08-03T10:15:27-07:00
+++

# Intro

A common piece of programming advice is only have a single return statement. This is sometimes called the 'Single Return Law'. It is even codified in some coding standards such as MISRA C [^5] [^7].

The origin of this law is misunderstood. I wrote this based on my understanding but haven't done an extensive historical investigation.

# History

Single Entry, Single Exit actually predates C and originates from Structured Programming from Dijkstra. [^1][^2][^4]

Single Entry referred to their being only a single entrypoint to a method (recall that you can use goto to enter a method outside of its normal starting position) and Single Exit meant that you should only exit to a single location - i.e., don't use goto to a different location in for for error handling).

Here is a pseudocode example of the types of code that was being argued against. (I don't know the languages like Fortran where this used to be more common).

```C
FILE* fle;

int do_a_thing_with_a_file() {
  int num;
  int tmp;

  fle = fopen("filename","r");
  if (!fle) {
    goto file_not_open;
  }

  already_open:

  tmp = fread(&num, sizeof(int), 1, fle);

  if (tmp == 0) {
    goto file_not_read;
  }

  return num;
}
```

# More Recent

I don't know the full history here, but I believe exceptions are actually a _structured_ way of doing `goto file_not_open;` and `goto file_not_read;` (and relies on stack unwinding instead of goto).

C programmers then turned this into something different than what Dijkstra meant, and it primarily had to do with resource management (and what Go solves with 'defer' functions)

I'd argue that the "best" modern thing to do is true monadic optionals (like scala, rust, etc.) and better exemplify the 'single exit'.

Alternatively, consider the use of 'COMEFROM'. [^8]

# More Sources

(since I can't figure out how to get footnotes to render without citation)

[^3] [^6] [^9]

# References

[^1]: Dijkstra, E. W. (1970). Notes on structured programming.https://www.cs.utexas.edu/~EWD/ewd02xx/EWD249.PDF

[^2]: Edsger W. Dijkstra. (1968). Letters to the editor: go to statement considered harmful. Commun. ACM, 11(3), 147–148. https://doi.org/10.1145/362929.362947

[^3]: William A. Wulf. (1972). A case against the GOTO. Proceedings of the ACM Annual Conference - Volume 2, 791–797. https://doi.org/10.1145/800194.805861

[^4]: Dijkstra, E. W. (2002). EWD 1308: What Led to “Notes on Structured Programming”. In M. Broy & E. Denert (Eds.), Software Pioneers (pp. 340–346). Springer Berlin Heidelberg. https://doi.org/10.1007/978-3-642-59412-0_19

[^5]: MISRA C:2012: Guidelines for the use of the C language in critical systems. (2013).

[^6]: Dijkstra, E. W. (1972). Chapter I: Notes on structured programming. In Structured programming (pp. 1–82). Academic Press Ltd.

[^7]: International Electrotechnical Commission. (2010). Functional safety of electrical/electronic/ programmable electronic safety-related systems: Part 7: Overview of techniques and measures (International Standard Nos. 61508-7:2010; 2.0). https://webstore.iec.ch/en/publication/5521

[^8]: R. Lawrence Clark. (2018, July 16). Comefrom Statement (archive). Wayback Machine. https://web.archive.org/web/20180716171336/http://www.fortran.com/fortran/come_from.html

[^9]: COME FROM. (n.d.). In The Jargon File (Version 4.4.8). Retrieved 3 August 2024, from http://catb.org/~esr/jargon/html/C/COME-FROM.html
