# es6-to-text-diff

- Convert ES6 Drafts to plain text file.
- Create git repo from `rev*.txt`

## Usage

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

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## License

MIT
