#!/usr/bin/awk -f

BEGIN {
	line = ""
	line_quote = ""
	in_quote = 0
	admonition = 0
}

/^#/ {
	for (i = 1; i <= NF; i++) {
		if ($i != 1 && ($i == "the" || $i == "of" || $i == "a" || \
		       $i == "an" || $i == "for" || $i == "and" || $i == "or" || \
		       $i == "on" || $i == "from" || $i == "to" || $i == "off")) {
			continue
		}
		else {
			$i = toupper(substr($i, 1, 1)) substr($i, 2)
		}
	}
}

/[ \t]+$/ {
	sub(/[ \t]+$/, "", $0);
}

/^>[ \t]*$/ {
	if (line != "")
		print(line)
	line = ""
	in_quote = 1
	print("")
	next
}

/^[ \t]*$/ {
	if (line != "")
		print(line)
	line = ""
	if (in_quote == 1) {
		in_quote = 0
		if (admonition == 1) {
			print("")
			print(":::")
			admonition = 0
		}
	}
	print("")
	next
}

/^>[ \t]*\*\*Note/ {
	line = ":::note Note"
	in_quote = 1
	admonition = 1
	next
}

/^>[ \t]*\*\*Example/ {
	line = ":::info Example"
	in_quote = 1
	admonition = 1
	next
}

/^>[ \t]*\*\*Definition/ {
	line = ":::note Definition"
	in_quote = 1
	admonition = 1
	next
}

/^>/ {
	new = $0
	sub(/^>[ \t]+/, "", new)
	if (line == "")
		line = new
	else
		line = line " " new
	next
}

{
	if (line == "")
		line = $0
	else
		line = line " " $0
	next
}

END {
	if (line != "")
		print(line)
	if (in_quote == 1) {
		in_quote = 0
		if (admonition == 1) {
			print("")
			print(":::")
			admonition = 0
		}
	}
}
