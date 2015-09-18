# Purpose

[ORGANISATION] follow a model of co-ordinated disclosure where we attempt to work with vendors to resolve any new vulnerabilities that we find. A flow diagram of the process can be found along with this document which gives a high-level view of this process and the people responsible for delivering it. In the event of any problems following this process, the normal management channels should be utilised for escalation.

This policy details how [ORGANISATION] manages the public reporting of security vulnerability information to computer industry vendors, our customers and the public. [ORGANISATION]'s Co-ordinated Disclosure Policy intends to enable all parties to understand and address vulnerabilities in their environment expeditiously, minimising the risk that the vulnerability poses.

The goals of the policy are:

* To assist in the identification and remediation of vulnerabilities in a manner which is effective and efficient for all parties.
* To minimise the risk to all parties from such vulnerabilities.
* To provide all parties with information that supports independent corroboration of these vulnerabilities.
* To provide the security community with the information necessary to learn from these vulnerabilities and thus identify, manage, and reduce the risks of future vulnerabilities in information technology as they occur.
* To minimise the amount of time and resources that all parties would otherwise be required to spend in order to manage these vulnerabilities.
* To facilitate long-term research and development of techniques, products, and processes for understanding, avoiding or mitigating security vulnerabilities.
* To circumvent the antagonism that can sometimes arise in the absence of a formal disclosure policy such as this one.

# Process

The basic steps of [ORGANISATION]'s Advisory Process are listed below, further details will be given in the subsequent sections of this document. These steps are aspirational in nature, and while [ORGANISATION] will attempt to follow them and encourages the other parties involved to follow them, there can be no guarantees that differing situations in practice will not affect any part'y's implementation of the process.

The basic steps are:

1. **Discovery:** [ORGANISATION] discovers a security vulnerability ("the bug") either by accident or while working on specific security research.
2. **Notification:** and acknowledgement: [ORGANISATION] notifies the vendor of the product that contains the bug ("initial notification"). In turn, the vendor provides [ORGANISATION] with evidence that the initial notification was received ("vendor receipt").
3. **Validation:** The vendor tries to verify and validate [ORGANISATION]'s claims ("reproduction").
4. **Resolution:** The vendor tries to identify where the bug resides ("diagnosis"). The vendor develops a patch or workaround that eliminates or reduces the risk of the vulnerability ("fix development"). The fix development is then optionally tested by [ORGANISATION] to ensure that the bug has been corrected ("patch testing"). [ORGANISATION] notifies the vendor of the outcome of the patch testing.
5. **Release:** In a coordinated fashion, the vendor and [ORGANISATION] publicly release information about the vulnerability, along with its resolution ("advisory"). The vendor may initially release this information to its customers and other organizations with which it may have special relationships.

The process will be followed by [ORGANISATION]'s vendor liaison team.

The following describes how the Team intends to operate during each phase of the Advisory Process.

## Phase 1: Discovery

[ORGANISATION] will validate its findings and draft an "initial notification" email. The purpose of this first email will be to:

* Confirm an appropriate vendor contact;
* Establish whether the vendor wishes to use PGP;
* Provide a copy of our co-ordinated disclosure policy;
* Give the vendor details of the product and version affected.

At this point details of the vulnerability will be entered into [ORGANISATION]'s issue management system.

## Phase 2: Notification and acknowledgement

Upon internal validation of the potential flaw, [ORGANISATION] will distribute the "initial email" and record the "initial notification" date.

[ORGANISATION] will utilise external databases such as OSVDBs vendor dictionary as well as the vendors web site to locate a suitable contact.

If [ORGANISATION] is not able to identify the appropriate security-related email address for that vendor, an email will be sent to one or more of the following contacts:

* security@
* support@
* psirt@
* info@
* admin@

Any other communication channel (e.g. telephone) listed by the vendor would also be acceptable.

Once the notification has been sent by [ORGANISATION], response will be expected by email ("vendor receipt") from the vendor within 7 days that (a) acknowledges that they have received and read the notification and (b) describes how they intend to engage with [ORGANISATION].

After receiving a response from the vendor, or where no response is forthcoming [ORGANISATION]' published list of upcoming advisories will be updated to reference the vendor concerned. No details will be provided as to the product or type of vulnerability that has been found. Where no response is provided, [ORGANISATION] may then proceed to Phase 5 at their discretion

## Phase 3: Validation

During this phase, it is anticipated that the vendor will attempt to address the vulnerability ("reproduction"). [ORGANISATION] will provided more detailed information in the manner agreed upon which should allow the correct identification of the code containing the bug.

The following is a list of suggestions for vendors to ensure that the resolution is satisfactory for their customers. These suggestions are expressed as "should" consistent with [ORGANISATION]'s understanding of good practices at this time:

1. If the vulnerability is found in a product which is supported by the vendor ("supported product") then the vendor should:
  1. Reproduce the vulnerability.
  2. Determine if there is enough evidence for the existence of the vulnerability if it cannot be reproduced. 
  3. Determine if the vulnerability is already known (and possibly already resolved).
  4. Or, work with [ORGANISATION] or other security experts to determine if the vulnerability is related to the specific environment in which it was discovered (including configuration errors or interactions with other products). As resources permit, [ORGANISATION] will help the vendor with the validation phase when requested.
2. If the vulnerability is found in an unsupported or discontinued product, the vendor may refuse to validate the vulnerability. However, the vendor should undertake measures to ensure that the reported vulnerability does not exist in supported product versions or other supported products based on the vulnerable product.
3. The vendor should examine its product to ensure that it is free of other problems that may be similar to the reported vulnerability. Related vulnerabilities in the same product are often found by others after a specific vulnerability is publicly disclosed. Finding multiple vulnerabilities up front during the validation phase saves the vendor and customers time and money by minimising the need to create and install multiple patches.
4. The vendor should provide status updates to [ORGANISATION] every 7 days from initial notification. The vendor and [ORGANISATION] may come to an agreement for sharing less frequent updates
5. The vendor should notify [ORGANISATION] when it is able to reproduce the vulnerability.
6. The vendor should attempt to resolve the vulnerability as described in Phase 4 within 30 days of initial notification. There are valid reasons why vulnerabilities cannot be resolved within this time period. If a good faith effort is being made by the vendor to validate the vulnerability, [ORGANISATION] will delay the public disclosure of information regarding the vulnerability until a resolution is found or created.
7. If the vendor is aware of other vendors that share the same code base as the affected product, the vendor should either (1) notify those vendors, or (2) notify a vulnerability coordinator, such as CERT/CC (http://www.cert.org), that other vendors may be affected by the reported vulnerability.

## Phase 4: Resolution

The resolution of a vulnerability should involve action regarding one or more of the following:

* Patch creation;
* Recommendation of configuration change;
* Design change;
* Workaround.

During this phase, [ORGANISATION] recommends that the vendor should:

1. Identify the fundamental nature of the flaw within the source code or in the design of the product ("diagnosis").
2. Determine whether to (a) provide a patch, configuration or design change, or workaround that appropriately reduces or eliminates the risk of the vulnerability ("fix development"), or (b) provide [ORGANISATION] with specific reasons for their decision to pursue an alternative to fixing the vulnerability.
3. Request time extensions from [ORGANISATION] when necessary.
4. Test the patches, configuration changes, and workarounds sufficiently to clarify how it may or may not adversely affect the operation of the product.
5. Provide [ORGANISATION] with details of the proposed fix ("fix development"). The vendor should also provide [ORGANISATION] with any patches so that [ORGANISATION] may optionally conduct our own testing of the fix ("patch testing"). This will help [ORGANISATION] confirm that the vulnerability has been reduced or eliminated. A vendor may have existing policies in place that require that only supported customers have access to this information; these policies should also be communicated to [ORGANISATION] by email.

## Phase 5: Release

1. [ORGANISATION] will work with the vendor to create a timetable pursuant to which the vulnerability information ("advisory") may be released to [ORGANISATION] customers, the vendor's customers and the general public in a coordinated fashion.
2. However, if the parties cannot agree to a coordinated release of the vulnerability information and a forced disclosure is triggered, [ORGANISATION] will honour a "grace period" of up to 30 days. During this time, it will unilaterally update the published list of upcoming advisories to include further summary information to the public. No details of the specific vulnerability will be disclosed in an effort to reduce the likelihood that attackers might exploit the product based on receiving the new vulnerability information. [ORGANISATION] will make every effort to describe or publish workarounds, configuration or design changes, or even patches where this information is not available from the vendor. After the expiration of the 30-day grace period [ORGANISATION] will publicly release the full Security Advisory.
3. If the vendor has not resolved the vulnerability within the timeframe determined in the Release Phase, then [ORGANISATION] may work with a coordinator, such as CERT/CC (http://www.cert.org) to announce the vulnerability to customers and the public.
4. If another security reporter has publicly announced the vulnerability before the release date agreed between by [ORGANISATION] and the vendor, [ORGANISATION] may immediately share details of the vulnerability with its customers who might be exposed to such vulnerability.
5. The security advisory will contain the following information:
* Advisory references: An external MITRE supplied CVE ID;
* Vendor name: The name(s) of the vendor of the product;
* Vulnerable products: The name(s) of the vulnerable product(s) and the specific version(s) affected;
* Vulnerability title: The type of vulnerability discovered;
* Reporter: The name of the author(s) of the advisory;
* Details: Some or all of the following:
** A description of how the vulnerability presents itself;
** Components and configurations that are affected;
** Mitigating factors;
** Workarounds or configuration changes to resolve the vulnerability;
** Preventative measures to address similar problems in the future.
* Impact: A description of the impact the vulnerability has/can have on the system e.g. "remote execution of code" or "local privilege escalation";
* Exploit code: Where deemed necessary/desirable Proof of Concept code to enable the verification of the issue(s) discovered;
* Remediation: If known, [ORGANISATION] will recommend available courses of action for customers to eliminate or mitigate the vulnerability in their environment.

# References

This policy was originally derived from "Responsible Vulnerability Disclosure Process", by Steve Christey of MITRE and Chris Wysopal of @stake. Portions of this policy are also based on "Full Disclosure Policy (RFPolicy) v2.0" by Rain Forest Puppy. This policy has most recently been updated in accordance with BS ISO/IEC 30111:2013 and BS ISO/IEC 29147:2014.

# Suggestions for vendors

* Vendors should provide a security contact address on their web site and make it easy to find.
* Vendors should set up a security response process to respond to security vulnerabilities in a timely manner.
* Vendors should incorporate lessons learned into training for their security, IT, product and marketing organizations.
* Vendors should notify customers that someone has reported a problem, present a temporary work-around and/or tell customers that they are working to provide a final resolution.
* Vendors should clearly notify customers and the public when a resolution is (a) faulty, (b) revised or (c) resolved.
* Vendors should credit the reporter who notified them of the vulnerability if the reporter was working to responsibly protect customers.
* Vendors should create and communicate a vulnerability response policy which details how they respond to and assess reports of vulnerabilities, how long customers should expect to wait for a typical resolution, and information about vulnerability reporting standards, if any, that they follow.

# Suggestions for customers

* The customer must not assume that the lack of details in a public vulnerability report will prevent the creation of an exploit.
* If a vendor has released information regarding a vulnerability, then the customer should assume that the information is credible. The customer should not require that the vulnerability be demonstrated before applying the resolution.
* If a vendor has not released such information, but a well-established reporter or coordination center has, then the customer should assume that the information is credible. The customer should not require that the vulnerability be demonstrated before applying the resolution.
* If vulnerability information has been released and a grace period exists, then the customer should apply the resolution to its system during the grace period immediately.
* Where possible, the customer should test any patches, configuration or design changes, or workarounds on test systems before making the changes in an operational environment.
* The customer should inform the vendor and the public if a patch, configuration or design change, or workaround does not appear to work as described.
* The customer should give preference to products whose vendors follow coordinated disclosure practices.
