# Errata for _Mastering Salesforce DevOps_

On **page 155** The "Free Limited Access Licenses" for Salesforce may be going away.

---

On **page 165** Salesforce support will _not_ clone you're orgs using the Default Organization Template (DOT) process. You're on your own!

---

On **page 284** Change 'ApexPMD' to 'PMD':

"I am aware of two linting solutions for Apex code: **PMD** and SonarLint."

---

On **page 286** Change 'ApexPMD' to 'PMD':

"Figure 8-7. Instant feedback on Apex from **PMD**"

---

On **page 295** Point to the original Domain Builder URL:

Footnote 20, pointing to the Apex Domain Builder, should point to the original Domain Builder repository: **https://github.com/rsoesemann/apex-domainbuilder**

---

On **page 301** Failed to credit Robert Sösemann as the author of Domain Builder:

This section should read:
"A new open source framework called the Apex Domain Builder (**https://github.com/rsoesemann/apex-domainbuilder**) offers a very performant and readable way of creating test data. **This module was originally created by Robert Sösemann, also the author of most of the Apex rules for PMD, and a leader in promoting clean coding practices for Salesforce.**"

---

On **page 314** Change 'ApexPMD' to 'PMD':

"**PMD**
"...Robert Sösemann did most of the foundational work for **PMD** and remains its biggest and most popular champion...."

---

On **page 315** Change 'ApexPMD' to 'Apex PMD':
Although the underlying engine is just called 'PMD', the VS Code extension by Chuck Jonas is called "Apex PMD". Therefore on this page, the text should read:

"PMD can be run from the command line, or from within the **Apex PMD** extension for VS Code, and its results output in multiple formats such as CSV and HTML."

---

Not an erratum, but I just learned about Browserforce by Matias Rolke.
The tool automates many org setup tasks that can only be done through the UI.
It maintains state to ensure that you don't perform an action twice.
Lots of other cool capabilities as well: https://github.com/amtrack/sfdx-browserforce-plugin

---
