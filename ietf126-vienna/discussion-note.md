# The Future of PANRG

We propose a *slight* reframing of PANRG's charter to focus on the following question:

**What should endpoints and networks tell each other, and how should each act on
it?**

Here's why.

## Looking Back

PANRG was chartered nine years ago to create a venue to discuss the various work
happening on the broader theme of endpoint path awareness around the IETF. We've
published guidance on [things that have already been tried](#) and found to work
less than perfectly in this space, elaborated a [set of open questions](#) in
path aware networking to guide those discussions, and started on a formalization
of [what a path is and what properties it can have](#) from the endpoint's
perspective. We've also provided a venue to discuss path-aware reimaginings of
the whole Internet, as well as more targeted cooperative approaches.

## Looking Around

As we celebrate almost a decade as a research group, it's worth reviewing how
the research and standardization environment surrounding its open questions has
changed. What we see is that the various requirements leading to work in path
aware networks, and routing/transportation cooperative approaches more
generally, continue to drive work in this space. Some of this work (e.g. SCONE,
CATS) is standards-ready, but there remains a need for an early stage venue to
discuss bringing research work toward standards, and bringing standards people
to the research, in this area.

## Looking Forward

PANRG was chartered to discuss one set of answers to the question **what should
endpoints and networks tell each other, and how should each act on it?**: those
in which endpoints interact with paths through a multidomain environment
explicitly, as first order entities. SCION, which we have spent much time
discussing, is an architecture that provides one way of implementing that
pattern, a useful testbed for experimenting with path aware concepts, and shows
that the concept works in real production networks. 

However, we've noticed that, increasingly, what brings people to PANRG to speak
is more a focus on the general question, and not the specifics originally
assumed by our charter. Many of the open questions posed in RFC 9217 apply to
any approach where endpoints and networks communicate with each other, and that
general question does not have a home, is not obviously shaped like a standards
deliverable, and continues to drive a few lines of research, both industrial and
academic.

## The proposal

We propose to the charter on that broader question, with path awareness named as its
founding instance rather than its boundary. The RG's two jobs are unchanged: a
bridge between the research and standards communities, and a place to discuss
ideas that are not yet ready for standardization.

We are **not** proposing to rename the group, and we are **not** proposing to
take on work that belongs in an existing working group. The point is to make
explicit that the RG's scope is the endpoint/network interface broadly, of which
path selection is one part.

## For discussion in Vienna

Do we have this right? Is *what should endpoints and networks tell each other,
and how should each act on it* the right center of gravity for the RG? Are there
useful restrictions on the proposed scope beyond this? Are there research
communities doing interesting work in this space that haven't been represented
here that we should reach out to for future meetings?