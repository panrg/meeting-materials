Path Aware Networking Proposed Research Group
=============================================

The Internet architecture assumes a division between the end-to-end
functionality of the transport layer and the properties of the path between the
endpoints. The path is assumed to be invisible, homogeneous, singular, with
dynamics solely determined by the connectivity of the endpoints and the Internet
control plane. Endpoints have very little information about the paths over which
their traffic is carried, and no control at all beyond the destination address.

Increased diversity in access networks, and ubiquitous mobile connectivity, have
made this architecture's assumptions about paths less tenable. Multipath
protocols taking advantage of this mobile connectivity begin to show us a way
forward, though: if endpoints cannot control the path, at least they can
determine the properties of the path by choosing among paths available to them.

This research group aims to support research in bringing path awareness to
transport and application layer protocols, and to bring research in this space
to the attention of the Internet engineering and protocol design community.

Scope
-----

The scope of work within the RG includes, but is not strictly limited to:

- communication and discovery of information about the properties of a path on
 local networks and in internetworks, exploration of trust and risk models
 associated with this information, and algorithms for path selection at
 endpoints based on this information.

- algorithms for making transport-layer scheduling decisions based on
 information about path properties.

- algorithms for reconciling path selection at endpoints with widely deployed
 routing protocols and network operations best practices.

The research group's scope overlaps with existing IETF and IRTF efforts, and
will collaborate with groups chartered to work on multipath transport protocols
(MPTCP, QUIC, TSVWG), congestion control in multiply-connected environments
(ICCRG), and alternate routing architectures (e.g. LISP), and is related to
the questions raised in the multiple recent BoF sessions that have addressed
path awareness and multiply-connected networks (e.g. SPUD, PLUS, BANANA).

Administrative details
----------------------

Chairs: Brian Trammell and Jen Linkova

Mailing List: [panrg@irtf.org](mailto:panrg@irtf.org)

Meetings: The PAN(P)RG intends to meet at each IETF meeting until a
determination is made whether or not to charter it. Afterward, the RG intends to
meet at 1-3 IETF meetings per year, and hold one workshop per year, colocated
with a related academic conference.
