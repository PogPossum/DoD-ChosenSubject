<h2>Description of project.</h2>
<p>This project is gonna function as an extension of my retro games/consoles database, <i>Ashii's Arcade</i>, much like my console application where I can access my database via a console which only works on my local network, I want to have a public website/webapp where I can access the data on my database from anywhere.</p> 
------------ ------------ ------------
<h3> -- Goals -- </h3>
<p>- I can browse my collection and search for specific games/consoles, <i>kinda something like Bilbasen</i>.</p>
<p>- I want the webapp to have the visuals of a classic termminal, to really add to the retro vibes.</p>
<h3> -- Current Project Milsestone -- </h3>
<p>- automatically secured over https via cloudflare.</p>
<p>- webserver managed in a docker container.</p>
<p>- routed through docker internal networking.</p>
<p>- organized dynamically by console IDs.</p>
<p>- sorted alphabetically in Games drop-down menus.</p>
<p>- keeping the classic abmer terminal vibe.</p>
------------ ------------ ------------
<h3> -- Extras -- </h3>
<p>I ended up deploying two over projects during this extracurricular, here are all links to my deployments;</p>
<p>https://ashiisarcade.ardenscor.com/</p>
<p>https://spookshack.ardenscor.com/</p>
<p>https://portfolio.ardenscor.com/</p>
------------ ------------ ------------
<h3> -- project setup -- </h3>
<p>database (windows VM)</p>
<p>    |-arcade-db</p>
<p>        |-C:\arcade\</p>
<p>            |-main.py</p>
<p>    |-horror-db</p>
<p>        |-C:\horror\</p>
<p>            |-main.py</p>
<p></p>
<p>docker (ubuntu VM)</p>
<p>|- arcade-web</p>
<p>    |- index.html/js</p>
<p>    |- style.css</p>
<p>|- horror-web</p>
<p>    |- index.html/js</p>
<p>    |- style.css</p>
<p>|- portfolio-web</p>
<p>    |- index.html</p>
<p>    |- about.html</p>
<p>    |- projects.html</p>
<p>    |- style.css</p>
<p>    |- terminal.js</p>
<p>        |- terminal.css</p>
<p>|- cloudflare-tunnel</p>
