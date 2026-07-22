**Session Date/Time:** 21 Jul 2026 16:30

# [PANRG](../wg/panrg.html)

## Summary

The Path Aware Networking Research Group (PANRG) met at IETF 126 in Vienna, Austria. The session was co-chaired by Jen Linkova and Brian Trammell. 

The meeting featured presentations on Autonomous System (AS) security profiles and a series of updates on SCION-related research, including the status of the core SCION specification drafts in the Independent Submission (IS) stream, Multipath QUIC over SCION, TCP/IPv6 to Multipath TCP (MPTCP) translation over SCION, and Tailscale integration with SCION. The session concluded with an open floor discussion regarding the future charter and direction of PANRG.

Note-taking was led by Ryo Yanagida and Nicola Rustignoli. These minutes were generated from by Eric Rescorla's automatic minutes tooling, retrieved from https://ietfminutes.org/minutes/ietf126/index.html, as corrected by Ryo and Nicola's notes.

---

## Key Discussion Points

### 1. Welcome, Administration, and Agenda Bash
Co-chairs Brian Trammell and Jen Linkova opened the session, noting the IRTF Note Well. The co-chairs thanked the note-takers and transitioned into the scheduled presentations.

### 2. Suggestions for AS Security Profiles for Secure and Resilient Internet Paths
* **Presenter:** Shyam Krishna Khadka
* **Slides:** [Suggestions for AS security profiles for secure and resilient Internet paths​](https://datatracker.ietf.org/meeting/126/materials/slides-126-panrg-suggestions-for-as-security-profiles-for-secure-and-resilient-internet-paths-01)
* **Discussion:**
  * Shyam Krishna Khadka presented an early-stage proposal to define "AS security profiles" to assist endpoints and operators in determining the security and resilience of Internet paths.
  * The profile distinguishes between **routing security** (e.g., Route Origin Validation [ROV], Autonomous System Provider Authorization [ASPA], and Route Origin Authorizations [ROAs]) and **infrastructure/operational security** (e.g., DDoS scrubbing, router hardening, and Remotely Triggered Black Hole [RTBH] filtering).
  * Rather than using a single aggregate score, the profile maintains distinct vectors, as different applications prioritize routing security or infrastructure security differently.
  * Feasibility was shown via existing measurement methodologies. The profiles could be maintained in existing registries (IRRs, RPKI, PeeringDB) or carried in SCION path construction beacons (PCBs) or BGP Add-Path.
  * The presenter left open several discussion questions regarding incentives for ASes to publish profiles, deployment in BGP and SCION, and which attributes are most valuable to operators.

### 3. SCION Specification - IS Process Feedback and Future Work
* **Presenter:** Nicola Rustignoli
* **Slides:** [SCION specification - IS process feedback and future work](https://datatracker.ietf.org/meeting/126/materials/slides-126-panrg-scion-specification-is-process-feedback-and-future-work-00)
* **Discussion:**
  * Nicola Rustignoli gave an update on the progress of the three core SCION specifications undergoing the Independent Submission (IS) stream process: the Control Plane, Data Plane, and PKI drafts.
  * Recent draft updates incorporate feedback on SCION Control Message Protocol (SCMP) signaling, ConnectRPC updates, the UDP underlay, time synchronization requirements, and full ASN.1 modules for X.509-based trust materials.
  * Future protocol evolution and research topics include post-quantum cryptographic algorithms for the PKI, alternate data planes (e.g., IPv6 extension headers), PCB extensions, and bringing SCION closer to end hosts.
  * **Q&A:**
    * **Ryo Yanagida** asked what SCION brings to the end host. Nicola Rustignoli noted ongoing research regarding multipath transport (like Multipath QUIC), naming systems, and SCION addressing.
    * **Brian Trammell** remarked that splitting SCION into three drafts provides standardizable components that serve as a strong foundation for future research in PANRG.
    * **Colin Perkins** agreed, noting that documenting these components is a significant milestone and encouraged taking the work to the IETF for standardization once sufficient interest builds.

### 4. Guidelines for QUIC Multipath over SCION — Updates
* **Presenter:** Tilmann Zäschke
* **Slides:** [Guidelines for QUIC Multipath over SCION — Updates](https://datatracker.ietf.org/meeting/126/materials/slides-126-panrg-guidelines-for-quic-multipath-over-scion-updates-00)
* **Discussion:**
  * Tilmann Zäschke presented updates on running Multipath QUIC over SCION.
  * He detailed a security challenge: IP addresses are not globally unique in SCION (uniqueness relies on the combination of Isolation Domain [ISD], AS number, and IP address). If a QUIC library only checks the IP address and port during path validation, it is vulnerable to redirection attacks.
  * Tilmann illustrated an attack where two cooperating adversaries can redirect a server's data stream to an innocent victim's IP address by changing the ISD/AS context.
  * **Mitigations:** The QUIC library must be made "SCION-aware" to validate that the ISD/AS numbers do not change alongside the IP address during path validation, or it must drop packets from paths other than the initial handshake path.
  * Additional ideas for future work include establishing end-host path selection recommendations (to trim down the thousands of available paths) and anti-spoofing filtering rules for border routers and end hosts.
  * Tilmann reminded attendees that following the hackathon, connectivity to the public SCION network is available directly from the IETF meeting network.
  * **Q&A:**
    * **Brian Trammell** asked how the situation where SCION does not reach the host itself on the client side fits into this. Tilmann Zäschke suggested translation mechanisms like NATs mapping traffic to unique ports.
    * **Colin Perkins** questioned the assumption of IP uniqueness within a single AS, noting he encountered this issue while working on NAT Traversal. Tilmann Zäschke noted this is not worse than standard QUIC;  port numbers must be taken into account where NAT is present

### 5. Bridging the Gap: Translating TCP/IPv6 to MPTCP/SCION
* **Presenter:** Lars Christian Schulz
* **Slides:** [Bridging the Gap: Translating TCP/IPv6 to MPTCP/SCION](https://datatracker.ietf.org/meeting/126/materials/slides-126-panrg-bridging-the-gap-translating-tcpipv6-to-mptcpscion-00)
* **Discussion:**
  * Lars Christian Schulz presented "SCITRA" / "SiTRA" (SCION IP Translator), which performs stateless translation between IPv6 and SCION to enable legacy applications to run over SCION without modification. 
  * SiTRA maps SCION's ISD, AS, and host address parts into a single IPv6 address (e.g., using an `FC00::/8` prefix).
  * Lars discussed ongoing, unpublished work translating Multipath TCP (MPTCP) to SCION. The translator generates "surrogate" IPv6 addresses for the kernel's MPTCP path manager so that different MPTCP subflows are mapped to distinct physical SCION paths.
  * He also highlighted "in-band telemetry," a project allowing end hosts to query path metrics directly from SCION border routers using hop-by-hop extension headers processed on the fast path.
  * **Q&A:**
    * **Brian Trammell** asked how much this was working before the hackathon versus after. **Lars Christian Schulz** replied that it was working before, almost didn't work at the hackathon, but he managed to get it working yesterday.

### 6. Tailscale over SCION
* **Presenter:** Tony John
* **Slides:** [Tailscale over SCION](https://datatracker.ietf.org/meeting/126/materials/slides-126-panrg-tailscale-over-scion-00)
* **Discussion:**
  * Tony John discussed implementing SCION transport in Tailscale's UDP multiplexer, "MagicSock".
  * To share SCION addresses across peers without modifying Tailscale's coordination server, the implementation piggybacked the SCION address inside the verbatim `peer API 4` description field.
  * Because SCION exposes hundreds of paths, probing them all causes excessive overhead. The implementation filters paths down to the five most distinct options, calculates a median RTT over an eight-slot ring buffer to avoid path flapping, and only switches paths if there is a 20% or 2ms performance improvement.
  * **Q&A:**
    * **Brian Trammell** noted that new context creates new problems, observing that path policy is a large space to explore and suggesting consideration of what path characteristics matter to inform future work.

### 7. Future of PANRG Charter and Direction Discussion
* **Leads:** Brian Trammell and Jen Linkova
* **Slides:** [Chair Slides](https://datatracker.ietf.org/meeting/126/materials/slides-126-panrg-chair-slides-02)
* **Discussion:**
  * Brian Trammell initiated a discussion on the future of PANRG, proposing a high-level framing question: *"What should endpoints and networks tell each other, and how should they act on it?"*
  * **Dave Oran** cautioned that the framing might be too broad. He proposed three narrower research areas:
    1. *Traffic Engineering vs. Endpoint Control:* Analyzing the trade-offs and power balance between operators doing traffic engineering and endpoints selecting paths.
    2. *Path Explosion and Equivalence Classes:* Designing algorithms at the edge and core to group thousands of paths into a small number of practical equivalence classes to prevent routing overhead.
    3. *Coordinated Action Constraints:* How networks can constrain user path selections to prevent DDoS or commercial manipulation.
  * **Marcus Ihlar** noted that the IETF SCONE (Secure Communication Of Network Exposure) working group is addressing similar network-to-endpoint communication (e.g., rate-limiting feedback) on the engineering side, which could benefit from broader academic research in PANRG.
  * **Tilmann Zäschke** supported focusing on path policy languages to merge application and operator preferences. He clarified that SCION has mechanisms to limit paths (e.g., a limit of 8,000 paths), but Dave Oran argued that active selection of diverse paths is needed rather than just rate-limiting the flooding.
  * **Dirk Kutscher** (IRTF Chair) suggested transitioning PANRG from research on "path-aware architectures" to "path-aware internet services" (e.g., exposure, negotiation, and utilization of path properties). He advised focusing on concrete topics to ensure the academic community remains engaged.
  * **Colin Perkins** warned that Brian's broad framing could invite out-of-scope non-path policies (e.g., user age-verification) and suggested explicitly limiting the scope to properties of the path and the traffic, rather than properties of the user or identity.
  * **Adrian Perrig** advocated for studying richer path properties (e.g., latency/loss distributions and bandwidth certainty). He noted that complex path properties could leverage AI-assisted decision-making at the application layer.
  * **Rüdiger Volk** attempted to speak but experienced microphone problems; **Brian Trammell** requested that he take the discussion to the mailing list.
  * **Nicola Rustignoli** supported a recharter that aligns with adjacent communities (such as SCONE, L4S, and Multipath QUIC) by maintaining a concrete, well-scoped list of research topics.

---

## Decisions and Action Items

* **Mailing List Discussion on Charter:** The group agreed to transition the scoping and charter discussion to the PANRG mailing list (`panrg@irtf.org`).
* **Dave Oran** to post research questions to the mailing list.
* **Colin Perkins** to post his feedback regarding drawing a clear boundary between path/traffic properties and user-identity properties to the mailing list.

---

## Next Steps

* Co-chairs will synthesize the mailing list feedback to draft a potential updated charter for PANRG.
* PANRG will meet at IETF 127 in San Francisco, with several presentations already proposed for the agenda.
