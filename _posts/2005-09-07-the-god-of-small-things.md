---
layout: fancypost
id: 45
title: "The God of Small Things"
date: 2005-09-07T17:52:52+00:00
author: anilm
comments: true
excerpt: "A paen to R. L. Goodstein's miraculous theorem in Proof theory. What's it about? The God of Small Things of course."
guid: http://anilmenon.com/wordpress/2005/09/the-god-of-small-things.html
permalink: /the-god-of-small-things/
heroimage: /assets/img/thegodofsmallthings/M13.1Hydra.jpg
image-desc: Hercules and the Hydra
dsq_thread_id: "31886611"
categories:
  - mathematics
---
[Reuben Goodstein](https://en.wikipedia.org/wiki/Reuben_Goodstein){:target='blank'}'s remarkable [theorem](https://en.wikipedia.org/wiki/Goodstein%27s_theorem){:target='blank'} is almost{% marginnote "rus1" "B. Russell & A. Whitehead derive 1 + 1 = 2 after some 300 pages into their opus, [_Principia Mathematica_](https://quod.lib.umich.edu/cgi/t/text/pageviewer-idx?c=umhistmath&cc=umhistmath&idno=aat3201.0002.001&frm=frameset&view=image&seq=126){: target='blank'}. They add the comment, 'The above proposition is occasionally useful.'" %} completely unknown outside of formal logic. It cannot be proved to be true via the logical arithmetical reasoning we use for proving stuff like there are an infinite number of prime numbers or 1 + 1 = 2. In other words, it is Turing-undecidable. Nonetheless, Goodstein proved his proposition using something called "second-order" arithmetic. 

Roger Penrose sees deep consequences in the fact that Goodstein's mind was able to do so. Penrose's claim, as I understand it, is that since human minds can derive theorems that a Turing machine cannot, it follows our minds are superior &mdash; or rather, Goodstein's mind is superor &mdash; to a Turing machine. So what is this theorem about? First a bit of notation.

Notation: $$2^k$$ means 2 multiplied with itself, k times. Thus $$2^3 = 2 \times 2 \times 2 = 8$$. 

(1)  Take any positive number. We'll use the number 33 as a running example.

(2) Write the number in base-2 representation. Example: $$ 33 = $$  $$ = 2\times 2 \times 2 $$ $$ \times 2 \times 2 + 1 $$ $$ = 2^5 + 1 $$.

(3) Express _everything_ &mdash;{% marginnote "hre1" "This is called the [hereditary](http://mathworld.wolfram.com/HereditaryRepresentation.html){: target='blank'} representation of a number." %} even the the powers &mdash; in base-2. Example: $$ 33 = $$ $$ 2^5 + 1 $$ $$ = 2^{(2^2 + 1)} + 1 $$. 

(4) Increase the base by 1.  Example: the base is currently 2, so we increase it to 3. That is, $$ 33 = $$ $$ 2^{(2^2 + 1)} $$ $$ + 1 $$ $$ \longrightarrow $$ $$ 3^{(3^3 + 1)} + 1 = 22876792454962.$$

(5) Decrease the number obtained in the last step by 1. Example: $$ 22876792454962 $$ $$= 3^{(3^3 + 1)} $$ $$ + 1 \longrightarrow  3^{(3^3 + 1)} $$ $$ = 22876792454961. $$ 

(6) Repeat steps (1) through (5) to the number obtained in the previous step (in this
example, $$ 22876792454961 $$).

What do you think will happen? Out intuition would suggest that the number will get larger and larger and larger, since base increases have much more impact than the tiny reductions by 1. In the running example, after step (4), the number{% marginfigure  "thm1" "assets/img/thegodofsmallthings/Goodstein.jpg" "Goodstein, R. L. On the Restricted Ordinal Theorem. _J. Symb. Logic_ 9, 33-41, 1944." %} went from 33 to 22876792454962 after a _single_ base increase from 2 to 3. Whereas after step (5), the number was merely reduced by one. Obviously, if we keep repeating this process (base increase followed by reduction by 1), the numbers are surely going to head for Carl Sagan territory. Right?

Wrong. R. L. Goodstein proved that these small decreases by 1 will eventually make the sequence converge to... ZERO!

Initially, the increases in base do generate larger and larger numbers, but the decrements in step 5 take their fatal toll and eventually converges the sequence to zero. It is death by a googol of pinpricks.

Amazing, right? Here's an even more amazing consequence. Remember the myth of [Hercules and the Hydra](https://en.wikipedia.org/wiki/Lernaean_Hydra){: target='blank'}? It's impossible to kill the Hydra because every time you chop off one of its heads, the Hydra spawns more heads. If you think about it, this a bit like the five steps above.{% marginnote "kir1" "Kirby, L. & Paris, J. Accessible Independence Results for Peano Arithmetic. _Bulletin of the London Mathematical Society_, 14(4): 285, 1982." %} Goodstein's number is a kind of mathematical Hydra. Mathematicians Laurence Kirby and Jeff Paris formalized this lovely metaphor and proved that the single neck chops will eventually slay the Hydra.

So how did Goodstein prove his wonderful theorem if it can be proved using the usual proof techniques of arithmetic? The problem is with the ordinary mathematical induction. By using a stronger form of induction known as <a href="http://en.wikipedia.org/wiki/Transfinite_induction" target="_blank">transfinite induction</a>, he was able to prove his proposition.

Reuben Goodstein's theorem: a mathematical version of the God of Small Things, so to speak. Why did Arundhati Roy take so many pages?

### Acknowledgments

The featured image (Hercules battling the Lernaean Hydra, attrib. ca. 525 B.C.) is
from The J. Paul Getty Museum, Malibu. Catalogue: [Malibu 83.AE.346](https://www.theoi.com/Gallery/M13.1.html){: target: 'blank'}.

<!--
TODO: This seems to work, but deferrred for later.
{% if page.comments %}

<div id="disqus_thread"></div>
<script>
    /**
    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
    
    var disqus_config = function () {
    this.page.url = '{{ page.url }}';  // Replace PAGE_URL with your page's canonical URL variable
    this.page.identifier = '{{ page.url }}'; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
    };
   /
    (function() { // DON'T EDIT BELOW THIS LINE
    var d = document, s = d.createElement('script');
    s.src = 'https://rounddice.disqus.com/embed.js';
    s.setAttribute('data-timestamp', +new Date());
    (d.head || d.body).appendChild(s);
    })();
</script>
<script src="https://rounddice.disqus.com/embed.js"></script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
	
{% endif %}
-->
