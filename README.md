# es6-to-text-diff

**This is not the official**

- Convert ES6 Drafts to plain text file.
- Create git repo from `rev*.txt`

## Usage

Please see [meta-ecmascript/es6-draft-revision](https://github.com/meta-ecmascript/es6-draft-revision "meta-ecmascript/es6-draft-revision")

### doc to docx

Some doc file is broken. So convert doc to docx.

for OS X:

```applescript
tell application "Microsoft Word"
	repeat with i from 1 to the count of (documents)
		save as the front document file name path of the front document & ".docx" file format format document
		close front document saving no
	end repeat
end tell
```

- [How can I batch convert doc to docx for my MSWord docs? - Microsoft Community](http://answers.microsoft.com/en-us/mac/forum/macoffice2008-macword/how-can-i-batch-convert-doc-to-docx-for-my-msword/d6f8a3ac-7641-403a-984c-6f89722dbc28 "How can I batch convert doc to docx for my MSWord docs? - Microsoft Community")

for Windows:

- [Automation: how to automate transforming .doc to .docx? - Stack Overflow](http://stackoverflow.com/questions/2405417/automation-how-to-automate-transforming-doc-to-docx "Automation: how to automate transforming .doc to .docx? - Stack Overflow")


### docx to txt

for OS X:

use [textutil(1)](https://developer.apple.com/library/mac/documentation/Darwin/Reference/ManPages/man1/textutil.1.html "textutil(1) Mac OS X Manual Page")

for any platform:

use pandoc

[doc-to-txt.sh](doc-to-txt.sh) depend on pandoc.


### txt to git repository

```sh
# create & git push
./new-git-revision.sh && ./git-push-revision.sh
```

Create git repository from revision text files.
The repository has a single file `es-draft.txt` that maintain a history of ES6 Drafts.

The repository of the result => [meta-ecmascript/es6-draft-revision](https://github.com/meta-ecmascript/es6-draft-revision "meta-ecmascript/es6-draft-revision")

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

MIT

## COPYRIGHT NOTICE

- [harmony:specification_drafts [ES Wiki]](http://wiki.ecmascript.org/doku.php?id=harmony:specification_drafts "harmony:specification_drafts [ES Wiki]")
- http://www.ecma-international.org/publications/standards/Ecma-262.htm

```
COPYRIGHT NOTICE

© 2015 Ecma International

This document may be copied, published and distributed to others, and certain derivative works of it may be prepared, copied, published, and distributed, in whole or in part, provided that the above copyright notice and this Copyright License and Disclaimer are included on all such copies and derivative works. The only derivative works that are permissible under this Copyright License and Disclaimer are:

(i) works which incorporate all or portion of this document for the purpose of providing commentary or explanation (such as an annotated version of the document),

(ii) works which incorporate all or portion of this document for the purpose of incorporating features that provide accessibility,

(iii) translations of this document into languages other than English and into different formats and

(iv) works by making use of this specification in standard conformant products by implementing (e.g. by copy and paste wholly or partly) the functionality therein.

However, the content of this document itself may not be modified in any way, including by removing the copyright notice or references to Ecma International, except as required to translate it into languages other than English or into a different format.

The official version of an Ecma International document is the English language version on the Ecma International website. In the event of discrepancies between a translated version and the official version, the official version shall govern.

The limited permissions granted above are perpetual and will not be revoked by Ecma International or its successors or assigns.

This document and the information contained herein is provided on an "AS IS" basis and ECMA INTERNATIONAL DISCLAIMS ALL WARRANTIES, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE INFORMATION HEREIN WILL NOT INFRINGE ANY OWNERSHIP RIGHTS OR ANY IMPLIED WARRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE."
```
