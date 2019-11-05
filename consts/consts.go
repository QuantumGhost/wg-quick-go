package consts

import (
	"fmt"
	"os"
)

var programName string
var commitID string
var version string

func ProgramName() string {
	return programName
}

func CommitID() string {
	return commitID
}

func Version() string {
	return version
}

func PrintVersion() {
	const tmpl = `%s

Version: %s
CommitID: %s
`
	_, _ = fmt.Fprintf(os.Stderr, tmpl, programName, version, commitID)
	os.Exit(0)
}
