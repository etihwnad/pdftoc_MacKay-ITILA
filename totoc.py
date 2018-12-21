#!/usr/bin/env python3

import re

fmt = """BookmarkBegin
BookmarkTitle: {title}
BookmarkLevel: {level}
BookmarkPageNumber: {page}"""

page_re = re.compile(r'\((\d+)\)')

with open('toc.votl') as f:
    for line in f:
        line = line.rstrip()
        x = line.split('\t')
        level = 1 + sum([1 for k in x if k == ''])

        m = page_re.search(line)
        if m is not None:
            page = int(m.group(1))
            title = line[m.end():].lstrip()
        else:
            continue

        print(fmt.format(title=title, level=level, page=page))

