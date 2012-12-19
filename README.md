## OpenSource

OpenSource is a tiny shell script that allows you to add the license you wish to add to your project.

### Installation
- First `cd ~`
- Next `git clone git@github.com:mohnish/opensource.git`
- Then `cd opensource/` and `chmod 755 opensource`.

### Setup
- Setup your information in the `config/user.rc` file.
- Set `USER="YourName"` and `EMAIL="YourEmail"`, each in it's own line.

### Usage
- `cd ~/opensource/` and `opensource [options] /path/to/project`
- For a list of options available with `opensource`, you can use the `-h` flag.
It can be used as: `opensource -h` or `opensource --help`.

### Sample
Here is a sample of how the generated license file looks like: [LICENSE](https://github.com/mohnish/opensource/blob/master/LICENSE)

### TODO
- Add support to multiple opensource licenses
- Add support to mulptiple file formats such as markdown, text etc.

I happen to be new to shell scripting, so please do pardon my poor coding style & quality. I would love to have people push updates to this repository to fix/improve the existing code. Thanks in advance. Suggestions for betterment of the project are welcome.

Lots of [<3](http://twitter.com/arrowgunz)


## License

MIT