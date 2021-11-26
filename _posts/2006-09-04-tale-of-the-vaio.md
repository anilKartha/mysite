---
layout: fancypost
id: 19
title: "Tale of the Vaio"
date: 2006-09-04T23:50:00+00:00
author: anilm
excerpt: "On the heartrending travails of getting my VAIO to connect to the net and the morals drawn thereof."
guid: http://anilmenon.com/wordpress/2006/09/tale-of-the-vaio.html
permalink: /tale-of-the-vaio/
dsq_thread_id:
  - "31886493"
heroimage: /assets/img/vaio/flatline.jpg
image-desc: 
categories:
  - Technology
  - Web/Tech
---
I spent most of the Labor day weekend{% marginfigure "plug1" "assets/img/vaio/unplug2.png" " " %} trying to get the my SONY VAIO desktop online. Excuse me, trying to get it <span style="font-style: italic;">back</span> online. There's a difference. It's the difference between an eye-operation after a lifetime of blindness versus trying to re-attach a detached eye. Not that I ever had to. Re-attach an eye, I mean. But if I did, I guess it would probably feel a lot like the last weekend. Amidst the purely mechanical aspects of the situation (horror movies make it look way too easy), there are the disquieting philosophical ones: Would the eye pop out again? Was it a feature? Or was it a "<a href="http://arstechnica.com/news/posts/1080251780.html" target="_blank">behavior-by-design</a>" as Microsoft calls its bugs? How do you fix sight if you can't see what to fix? If an eye pops out, and there's no one to see it, has it really popped?

The Vaio lost its wireless connection on Friday evening. The network signal was strong (66%), the cable modem and router were blinking in all the right places, and a quick check showed that my laptop was able to connect with no difficulty. In the first ten minutes, I'd run out of 90% of the usual excuses.

I wasn't too surprised. I'd been expecting a disaster for a while.{% marginnote "commen1" "'Computer Science is embarrassed by computers.'&nbsp;&mdash;Alan Perlis." %} The Vaio is a 1994 Sony 2GHz Pentium 4 with 225 MB Ram; a geezer, true, but still a geezer with class. I've always called it "the" Vaio, as if it were the only one of its kind roaming the cyber-prairies and I'd been granted permission to accompany it at a respectful distance. The Vaio had given me no trouble at all over the years, not even in 2002, when it had a minor lobotomy in the form of a WinXP "upgrade": a few gray coughs, a CD drive that now refuses to open no matter what, and the  emergence of a display flicker that I'd probably miss were it to disappear. In short, a disaster was due. But when it did happen, predictably, I was all out of duct-tape.

So I rebooted. When I tested the browser, Google's page came up like digital sunrise. I shrugged, made a half-hearted resolution to run the virus checker, and basically, piped the entire episode to the internal /dev/null.

Barely two minutes later, the connection failed again.

I rebooted. This time, I ran Trend-Micro. This virus checker is a lot like the cops in Chandler's books: it has a zero-tolerance policy on unprofitable crimes. With its usual sinister confidence, Trend-Micro declared the Vaio to be as clean as a bishop's thoughts. It even lined up a few sawbucks to soothe my suspicions: some harmless cookies, minor adware, and a couple of dlls. I recognized the dlls as toothless remnants from an old evolutionary computation project I'd worked on. When I re-launched the browser, Google came up, per usual. I surfed here and there: music, Ebert's review of Sin City, Google News, mail. But a pall gloomed the surfing.{% marginnote "fail1" "'In computing, the mean time to failure keeps getting shorter.'&nbsp;&mdash;Alan Perlis." %}

A few minutes later, the connection failed.

Now I was worried. I did a few ping tests. They indicated that the Vaio was able to talk to itself, talk to the gateway, and talk to the DHCP server. It knew that the local Google was aka 64.233.161.104. Skype also worked. So did other P2P apps. But telnet didn't work. Ftp didn't work. Anything that needed port 80 to work, didn't.

It was a relief to know that ping was working. At least the Vaio was still able to sample reality, even if it was only in little chopstick nibbles.

It was time to consult Dr. Google. Using my laptop&mdash; a miserable midget I'd bought to impress friends&mdash; I searched on "ping works browser failure." Pay dirt! Someone called SongDog had experienced <a href="http://ask.metafilter.com/mefi/39092" target="_blank">the same problem</a>. It appeared to be a "simple" WinSock fix&mdash; everyone on the message board seemed to be converging towards that solution. In SongDog's case though, the problem had returned.

"What the hell," I thought. Perhaps it would also work for me. Some generous soul had written a <a href="http://www.snapfiles.com/get/winsockxpfix.html" target="_blank">Winsock fix utility</a>, and the fervent user-testimonials indicated that it would either fry the Vaio or save it. I downloaded and ran the utility. It backed up the registry, made adjustments, and asked for a reboot. Mentally, I waved the Vaio goodbye. Goodbye, Ishmael old buddy. Thanks for all the fish. Reboot.

Surf. Hope. Disconnect.

I didn't notice when{% marginnote "perlis3" "'Sometimes I think the only universal in the computing field is the fetch-execute cycle.'&nbsp;&mdash;Alan Perlis" %} Friday became Saturday had become Sunday. There was a dull predictability to the misery: Search for fixes; implement fixes; reboot the Vaio; surf; hope; disconnect. The WinXP connection-disconnect problem appears to have many possible causes: IEEE 801.11 permission issues, Microsoft's WZC idiotware, Winsock corruption, over-heated routers, virus/spyware, firealarm issues.... I tried all the fixes. Nothing. A complete WinXP reinstall&mdash; a fix that cures by killing the patient&mdash; began to loom as the only solution left to try.

I'd emailed SongDog&mdash; his name turned out to be Sven E. Aas&mdash; asking how his saga had ended. It'd ended well. He was kind enough to point me to <a href="http://www.dslreports.com/forum/remark,16663046" target="_blank">another message board</a> where another group of experts had tried to work out the problem. Sven wrote he was able to resolve his problem by resetting his Linksys router; not a hardware reset but via a software one. I had Linksys. He had Linksys. I reset my router via the laptop.

Groundhog day.

Well, it was time to put the Vaio to sleep.{% marginfigure "cancel1" "assets/img/vaio/cancel.gif" " " %} I transferred most of my data to a Pocketmate Datastore. I'd lost the Vaio system disks a long time ago, so I spent an hour or so printing out various configuration details. I logged onto the net (via the midget) for instructions on WinXP re-installs. The <a href="http://www.winsupersite.com/showcase/windowsxp_sg_clean.asp" target="_blank">details</a> were frightening.

So frightening, that I decided to try one last thing. I just claimed I'd tried all the fixes. Actually, not all. There were a couple of people who'd sworn that the ZoneAlarm firewall was a major "person of interest" in the browser-disconnect syndrome. I'd never installed ZoneAlarm. I was 100% sure of it. There was nothing in the TaskList, nothing in the Program files, and nothing had ever indicated that a ZoneAlarm process was running in the background. It was irrational enough to be possible.

I checked the registry for references to ZoneAlaram's dlls. And lo and behold, there they were. Vsutil this. VsCrap that. There were dlls tucked away in Windows system32 folder. There was even a ZoneAlarm process running in the deep background; Windows's Task manager wasn't aware of it, but Mark Russinovich's <a href="http://www.sysinternals.com/Utilities/ProcessExplorer.html" target="_blank">Procexp</a>&#8212; god bless him&mdash; was. The process didn't want to be killed and put up a struggle. Which was nice.

Memory is 20/20.{% marginnote "perlis5" "'Every program has (at least) two purposes: the one for which it was written, and another for which it wasn't.'&nbsp;&mdash;Alan Perlis" %} I vaguely remembered that a few weeks ago, I'd test-driven a miserable crapware of a firewall; something ez-something. It was essentially a wrapper around pieces of ZoneAlarm, <a href="http://forums.spywareinfo.com/lofiversion/index.php/t42657.html" target="_blank">another fine piece of crapware</a>. To call ZoneAlarm a firewall is a bit like relying on your housing complex security guard to fight Thanos.

Removing ZoneAlarm's bits and pieces was not easy. The registry had to be involved, always a delicate operation. Fortunately, step by step instructions were available on the web. I ran a Winsock fix at the end of it all. It seemed like the decent thing to do.

Reboot. Hope.

Some thirty hours later, the Vaio's connection is still going strong.
