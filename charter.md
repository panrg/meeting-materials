Path Aware Networking Research Group
====================================

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

This research group aims to support research in bringing Internet path
awareness to transport and application layer protocols, and to bring research
in this space to the attention of the Internet engineering and protocol design
community.

Scope
-----

The scope of work within the RG includes, but is not strictly limited to:

- communication and discovery of information about the properties of a path on
  local networks and in internetworks, exploration of trust and risk models
  associated with this information, and algorithms for path selection at
  endpoints based on this information.

- algorithms for improving the operation of transport-layer protocols using
  information about local network and end-to-end path properties. 

- approaches for reconciling endpoint path selection with widely deployed
  interdomain routing protocols and network operations best practices.

- exploration of previous attempts to use lower-layer or end-to-end path
  information at the transport layer, in an effort to understand the limits of
  applicability and deployability of these approaches.

As path-aware networking is an architectural concept, it necessarily draws
from research and engineering work on existing technologies at various stages
of maturity. Many of these technologies are targeted for intradomain
environments; one of PANRG's goals is to expand their applicability to cover
interdomain operations, as well.

PANRG will additionally serve as a coordination point among existing IETF and
IRTF efforts with which its scope overlaps. These include, but are not limited to:

- groups working on multipath transport protocols in multiply-connected
  environments (e.g. MPTCP, QUIC, TSVWG)
  
- congestion control in multiply-connected environments (e.g. ICCRG)

- routing architectures and technologies supporting some notion of a path or
  path properties (e.g. LISP, SPRING)

Administrative details
----------------------

Chairs: Brian Trammell and Jen Linkova

Mailing List: [panrg@irtf.org](mailto:panrg@irtf.org)

Membership in the PANRG is open to all interested parties.

PANRG Meetings
--------------

Meetings are by default open with open attendance and published proceedings,
with remote participation and recording as provided by the meeting venue,
according to the IRTF’s IPR policy. This is always the case with at least one
PANRG meeting co-located with an IETF meeting noted above. However, as deemed
necessary, the chairs may hold virtual or physical meetings with restricted
attendance to discuss observations which cannot be shared openly, provided
that some outcome of such a meeting may be openly shared with the community. 

PANRG will meet one to three times per year, as deemed necessary by the chairs
and according to demand. At least one PANRG meeting will be co-located with an
IETF meeting per year. Given the PANRG’s charter to bridge the gap between
Internet standards and measurement communities, the PANRG may also meet
collocated with relevant academic conferences or network operator forums, as
appropriate.

