+++
title = 'The Old Net'
date = 2024-01-19T20:31:11-08:00
tags = ["TIL", "tech"]
+++

If you set your HTTP proxy to `theoldnet.com` with port `1999`, and add an exclusion for `web.archive.org`, then all your web pages will come from 1999, via the Wayback Machine.  You can pick a different year by changing the port.

Example

{{< highlight bash >}}
$http_proxy=theoldnet.com:1996 no_proxy=web.archive.org curl http://nintendo.com
{{< /highlight >}}

# Source

LeoPanthera. (2024, January 19). Comment on ‘Surf the web like it’s 1999’ [Comment]. Hacker News. https://news.ycombinator.com/item?id=39058806
