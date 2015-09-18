# Purpose

[ORGANISATION] follows a model of co-ordinated disclosure where we attempt to work with vendors to resolve any new vulnerabilities that we find. A flow diagram of the process can be found along with this document which gives a high-level view of this process and the people responsible for delivering it. In the event of any problems following this process, the normal management channels should be utilised for escalation.

This process details how [ORGANISATION] manages the public reporting of security vulnerability information we hold to computer industry vendors, our customers and the public. This process intends to enable all parties to understand and address vulnerabilities expeditiously in their environment, minimising the risk that the vulnerability information poses.

# Process

[FOR CLIENT DERIVED VULNERABILITIES: When a new vulnerability is found in the course of a client engagement, it will be reported as we would for any other issue that we might find. For critical vulnerabilities, a notice will be raised whilst for less critical vulnerabilities, the client's first visibility will be when the report is issued. In essence, our existing processes will be followed. Parallel to this, the following steps will also be taken:]

Further details can be found in [ORGANISATION]'s Advisory Process Operational Guide.

## Phase 1: Discovery

The team member responsible for finding the vulnerability will open a new issue in [ORGANISATION]'s issue management system ([ISSUE TRACKER URL]).

## Phase 2: Notification and acknowledgement

[ORGANISATION]'s vendor liaison team will confirm that the bug is actually new by checking, at minimum, the following locations:

* OSVDB dictionary;
* CVE search;
* Patch notes/security bulletins/KB articles on vendor website (if applicable).

If the vulnerability appears to be new following the checks listed above, the vendor liaison team will then:

1. Check whether the vulnerability was found while working for a client. If this is the case, this will be escalated via normal management channels so that they can, if necessary make the client aware of our advisory disclosure process and the fact that we will be making contact with the vendor of a product they use.
2. It should be noted that, even if a vendor does not cooperate and no patch is released, the client should still be made aware of the vulnerability and should potentially consider moving to a new product.

If it turns out that [ORGANISATION]'s vendor liaison team have never dealt with the vendor concerned, this will be escalated via normal management channels before initiation of vendor contact to confirm that [ORGANISATION] do not have an ongoing dialogue with the affected vendor.

In order to initiate a dialogue with the vendor, the following steps to find a contact address should be taken:

1. Vendor web site will be checked for a security/support contact address/form.
2. OSVDB vendor dictionary checked for contact address.
3. If [ORGANISATION] is not able to identify the appropriate security-related email address for that vendor, an email will be sent to one or more of the following contacts:

* security@
* support@
* psirt@
* info@
* admin@

The purpose of this first email will be to:

* Confirm an appropriate vendor contact;
* Establish whether the vendor wishes to use PGP;
* Provide a link to the Coordinated Disclosure Policy ([COORDINATED DISCLOSURE POLICY URL]);
* Give the vendor the details of the product and the version affected.

It is not expected that this first email will be encrypted however reasonable attempts will be made to do so (for example if there has been previous contact with the vendor).

## Phase 3: Pre-disclosure

At this stage, [ORGANISATION] will update the public web site containing the list of upcoming advisories to reference the vendor concerned. No details will be provided as to the product or type of vulnerability that has been found.

At this point the vulnerability will be referenced by the [ORGANISATION] ID assigned by the issue management system.

If the tester who reported the vulnerability requests that there should be no pre-disclosure announcement then this is to be escalated for confirmation. The tester will have to provide sufficient evidence to support why they believe we should not make a pre-diclosure announcement.

Once initial contact has been made, or after 30 days have elapsed since the first contact, the pre-disclosure announcement will be published.

Note: The externally facing policy demands an initial response within 7 days. This discrepancy in timings is intended to account for unexpected delays in making contact.

## Phase 4: Validation and resolution

[ORGANISATION] expect to be regularly updated as to the progress the vendor has made in resolving the bug. In the event that 30 days pass without vendor contact, we reserve the right to publish at our convenience. When an update is received, this clock will be reset. During this period, it is expected that there may be regular exchanges between the vendor liaison team and the vendor. These exchanges can be handled by any/all members of the vendor liaison team as appropriate.

Details of the exchanges will be entered into the issue management system in order that the team member responsible for finding the bug is kept in the loop. Where necessary, the team member may themselves be asked to provide input into the disclosure process however this should not be direct and instead, such exchanges will be mediated by any/all authorised members of the vendor liaison team as appropriate.

The issue management system will also be utilised to track the date of last contact so as to allow the triggering of a forced disclosure in the case of an uncooperative vendor.

Once a vendor confirms the validity of the vulnerability, or forced disclosure is triggered an external CVE ID will be requested from MITRE (http://www.mitre.org/) by the vendor liaison team in preparation for publishing. In some instances a vendor's PSIRT (Product Security Incident Response Team) may be able to assign a CVE ID on MITRE's behalf.

## Phase 5: Release

In the event that a forced disclosure is triggered, or that the vendor confirms that the bug reported has been resolved, [ORGANISATION] will then prepare an advisory based on our standard XML format. This will allow easy conversion to both HTML (for consumption by [ORGANISATION]'s web site) and text for distribution to the standard mailing lists.

This will need to be prepared within 7 days, as the expectation is that full disclosure will occur 14 days after forced disclosure is triggered, or that the vendor confirms that the bug reported has been resolved.

Once the advisory has been completed it will be submitted for QA prior to publishing.

Having passed through QA, [ORGANISATION] will update the web site containing the list of advisories to reference the newly created advisory.

The advisory will be published. It is expected that in addition to publishing the advisory on the [ORGANISATION] web site, a text only version will be sent to the following email addresses:

* bugtraq@securityfocus.com
* full-disclosure@lists.grok.org.uk
* vuln@secunia.com
* moderators@osvdb.org
