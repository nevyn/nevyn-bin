require 'date'
data = <<END
Apr 01, 2010 02:09 AM PDT	Berangere Biencourt iPhone 3G	4dc0f659f82cc22083cfbcee18739d9995dfa565	Added	Andreas Bengtsson
Apr 01, 2010 06:41 AM PDT	Janny	94f6ee171745a608f30de9f537e1cc9cea960197	Added	Andreas Bengtsson
Apr 01, 2010 06:41 AM PDT	Olivier	98eb29b23cba9add3e628e5496e63628f5db1ad9	Added	Andreas Bengtsson
Apr 07, 2009 06:33 AM PDT	christian remrod	9cbfb9f538354988319fe1a45edaf52ca655785b	Added	Jesper Särnesjö
Apr 07, 2009 06:35 AM PDT	jonas vig	64b03981b00095a71af18c793658bd5b4cc904b5	Added	Jesper Särnesjö
Apr 09, 2009 01:04 AM PDT	carsten schou	75914dec1a3d97410896b4e2b6332fc18de47b4a	Added	Andreas Bengtsson
Apr 09, 2009 01:05 AM PDT	kim sorensen	c85f90de9e426b2f715c0026d0f322a1d12486ca	Added	Andreas Bengtsson
Apr 09, 2009 01:05 AM PDT	morten morch	dd1e730c8d655d7e8679184d5a67a674e84780ff	Added	Andreas Bengtsson
Apr 09, 2009 01:21 AM PDT	Mattias Forsell Stahre	49bca22d51f14d5e48ef0fc37a36b0012e302d7c	Added	Erik Hartwig
Apr 09, 2009 01:34 AM PDT	Daniel Norberg	5ae6b79c61a5fd7e05562109b56533e5430a18f6	Added	Erik Hartwig
Apr 09, 2010 05:06 AM PDT	Joachim Bengtsson iPad	35df88551c1b2014c220592a110a142c206aa1de	Added	Andreas Bengtsson
Apr 12, 2010 04:27 AM PDT	Joachim Bengtsson iPod touch 1G	75ff028381cc7ccfcc45d0f4ec49486e57e80ad7	Added	Andreas Bengtsson
Apr 12, 2010 06:25 AM PDT	Marcus Forsell Stahre iPad	b66fa599b49d8e91aaeb59d787d8fb8ba16c6447	Added	Andreas Bengtsson
Apr 14, 2010 09:00 AM PDT	Noa Resare iPhone 3G	6ee99cfdfd37ff8228f12daa1c04186107f62eef	Added	Andreas Bengtsson
Apr 14, 2010 09:57 AM PDT	Michelle Kadir iPhone 3Gs	6880b2616abed765ca822389e3de53896146fd42	Added	Andreas Bengtsson
Apr 16, 2011 10:13 AM PDT	Canvas3	ae41e47782bb6d63a2d3fdddb108e6c0cf622195	Added	Andreas Bengtsson
Apr 18, 2011 07:53 AM PDT	Daniel Kennett iPhone 4	e0631c661fc5fb5a2e7dfc0ffd72940de9f1e26a	Added	Daniel Kennett
Apr 18, 2011 07:54 AM PDT	From Daniel Kennett iPhone 4 to Daniel's iPhone		Modified	Daniel Kennett
Aug 01, 2011 05:34 AM PDT	From Santeri Hernejaervi iPhone 4 to iPhone4		Modified	Joachim Bengtsson
Aug 05, 2009 05:48 AM PDT	Tom Christian Gotschalksen	acf0fbd84459b91d77f1c835f015b825526c38ce	Added	Andreas Bengtsson
Aug 05, 2009 05:49 AM PDT	Daniel Waterhouse	305fd84da754677d0cc54a90003c6e0ee9c5f8f6	Added	Andreas Bengtsson
Aug 05, 2009 05:49 AM PDT	Jonathan Fildes	2d21c5387e48c13e15d6479cfcf381bbe8457d6c	Added	Andreas Bengtsson
Aug 05, 2009 08:18 AM PDT	Tobias Edstrom	8dd99036aca3541dca7bc14ea2ce8345eb57fa23	Added	Andreas Bengtsson
Aug 08, 2011 12:55 AM PDT	Daniel Ek's awesome iPad	d03d8311814dab96aaafe00932345f445a47481b	Added	Mattias Arrelid
Aug 11, 2009 02:10 AM PDT	Jonathan Ross	d099c1df337b54839d3fe70a57c955d15469a7f9	Added	Andreas Bengtsson
Aug 11, 2009 02:10 AM PDT	Michael Paull	1ef1b1b4186aa2f81cfd0a2948cc8fa07ab90093	Added	Andreas Bengtsson
Aug 11, 2009 02:10 AM PDT	Staffan Alfven	fa42a24459da0bd249e271aaba5f65e34d37aa88	Added	Andreas Bengtsson
Aug 18, 2011 06:02 AM PDT	Patrik "Voxar" Sjöberg iPhone4	44eb2a6ab6faeaff9e0f0ef3d7a640cc5bc7116c	Added	Andreas Bengtsson
Dec 05, 2008 04:27 AM PST	klaus hommels	bf92ebc1f36cd87b9de7b2ed81b5e1f27ae57cb2	Added	Andreas Bengtsson
Dec 05, 2008 09:30 AM PST	fredrik arrelid	5c06cc6cda5f265041a0151182cff81d45ba2beb	Added	Andreas Bengtsson
Dec 09, 2009 08:26 AM PST	Spotify iphone	209ab5afb1d064a754d5727087f5516b4aeca594	Added	Erik Hartwig
Dec 09, 2009 08:27 AM PST	From Spotify iphone to Spotify dev 3GS		Modified	Erik Hartwig
Dec 10, 2010 06:52 AM PST	Noa Resare iPhone 4	1b07a39ff8be90cc679f878f554a9a5c3672fa33	Added	Andreas Bengtsson
Dec 10, 2010 06:52 AM PST	Kristian Karl iPhone 3G	802bf11309a51a00cd69f2809f98340a8c127741	Added	Andreas Bengtsson
Dec 10, 2010 06:52 AM PST	Stefan Rungardt iPhone 3G	15879022ba1a109a773127ea55ec8bc5261389d8	Added	Andreas Bengtsson
Dec 10, 2010 06:52 AM PST	Pär Johansson iPhone 4	6fe378dbc71d2056a33066564256cccc66abf330	Added	Andreas Bengtsson
Dec 10, 2010 06:52 AM PST	Henrik Preifors IPhone 3GS	deafa6328867ff2a30ac0cd5b02491a6184b0343	Added	Andreas Bengtsson
Dec 10, 2010 06:52 AM PST	Wilhelm Lundborg iPhone 4	d79549d87028cba6aaedac3d5d2c8de92515f56e	Added	Andreas Bengtsson
Dec 10, 2010 07:33 AM PST	Stine Bauer Dahlberg iPhone 4	b512537cfdf3a11ccb4a90c6c0c2b7748198a7b7	Added	Andreas Bengtsson
Dec 16, 2008 07:00 AM PST	constantin hommels	f1f458e033c081f4ec41ad7fd0a3e21c796f0676	Added	Andreas Bengtsson
Dec 16, 2008 07:00 AM PST	andreas oman	4a95fb1ad26a9b77960fe644209b52f196afe515	Added	Andreas Bengtsson
Dec 16, 2008 07:00 AM PST	cecilia vigil	bb07a98c6db5d5d89523eda9db07a46442078a8f	Added	Andreas Bengtsson
Dec 16, 2009 06:51 AM PST	Joachim Bengtsson 3G	39d926b6cf800cafd5bd65402f7fd00d091360c8	Added	Erik Hammar
Dec 16, 2009 06:55 AM PST	Santeri Hernejaervi Touch2G	7ee5cf5cc54ff36e338c49b4ccc24b1e5e670c9a	Added	Erik Hammar
Dec 22, 2008 07:12 AM PST	johannes schildt	fc233aca8b4a7c82d56b98d35411f23b8e292afe	Added	Andreas Bengtsson
Dec 27, 2009 10:27 AM PST	Ludvig Strigeus Spotify 3GS	7a6da06cacddf45835723d70478952c68d0c44a3	Added	Andreas Bengtsson
Feb 02, 2010 01:28 AM PST	Oscar Stal iPod Touch 1G	97ca900b2bbb69f9d0753b5bb8111f105d9e7a9e	Added	Andreas Bengtsson
Feb 02, 2010 01:31 AM PST	From Oscar Stal iPod Touch 1G to Oskar Stal iPod Touch 1G		Modified	Andreas Bengtsson
Feb 04, 2011 08:41 AM PST	Florentine Vos	 iPhone 3G	9739946ca3d08579f0b86a91eb7fa771786a9277	Added	Andreas Bengtsson
Feb 08, 2010 01:42 AM PST	Samuel Ahlqvist Lilja 3Gs	d2c58b87033117a99a4c6e7100290a52c54440d9	Added	Andreas Bengtsson
Feb 08, 2010 01:42 AM PST	Niklas Bivald 3Gs	c4f4450d693851c9e65f0247a76f93f3720c43e2	Added	Andreas Bengtsson
Feb 08, 2010 01:42 AM PST	Julian Kennedy Touch 2G	f7648ba57fbd883e7c876296e0d09b6635952bd8	Added	Andreas Bengtsson
Feb 09, 2009 08:53 AM PST	mengmeng du iphone 3g	From 33afae61d64a8443f7a9c823ac01b0a9fed057b3 to 099b86acc2e7595ca137dfac5fd8196e3c190a5c	Modified	Andreas Bengtsson
Feb 09, 2009 08:53 AM PST	mengmeng du iphone 3g	33afae61d64a8443f7a9c823ac01b0a9fed057b3	Removed	Andreas Bengtsson
Feb 09, 2009 08:56 AM PST	jp jones	3a0ea5a58bfb41149ad09e626e62c58724347b16	Added	Andreas Bengtsson
Feb 09, 2009 08:56 AM PST	christian wilsson	460e09452c2ef3e653a77a72a25794c30d6b3693	Added	Andreas Bengtsson
Feb 09, 2009 08:57 AM PST	From leo giertz iphone to leo giertz	From d5d6e51195f14b95b587c8f3ad336f91c7873f7a to 9ab528559f53cdcc1a6f5b242f5f7a92fb53016e	Modified	Andreas Bengtsson
Feb 09, 2009 08:57 AM PST	leo giertz iphone	d5d6e51195f14b95b587c8f3ad336f91c7873f7a	Removed	Andreas Bengtsson
Feb 10, 2010 11:24 AM PST	Par Johansson iPhone 3GS	70d41626f222d09490377d78c9ebf983b2423e81	Added	Andreas Bengtsson
Feb 10, 2010 11:24 AM PST	Oscar Nilsson iPhone 3Gs	377d7b69c2c3027ee5b795c4f453e465eafbb67e	Added	Andreas Bengtsson
Feb 17, 2009 09:29 AM PST	rebecca horvath	8dfd1a9db9422b3931a902516d8b85b7a9e57bc1	Added	Andreas Bengtsson
Feb 17, 2009 09:29 AM PST	jimmy stridh	997fe018d898d9577630cd2982b24c07df5efd1f	Added	Andreas Bengtsson
Feb 19, 2009 06:19 AM PST	richard mahlberg iphone 3g	3c1a78bb92a48bd80cafd8d4a6b6f48dfddd8e1c	Added	Andreas Bengtsson
Feb 23, 2009 08:04 AM PST	niklas ivarsson iphone 3g	8dc3a5b56c12702ad7e2e15f99581833317c0b88	Added	Jesper Särnesjö
Feb 25, 2009 01:23 AM PST	johan persson 2	5a751601e4ddc487faa7dc43adcdcc4d35d27179	Added	Andreas Bengtsson
Feb 25, 2009 05:42 AM PST	tom christian gotschalksen	77559bd3df3836292fea9c0304a3b59986b4d2e2	Added	Andreas Bengtsson
Jan 06, 2009 02:12 AM PST	stefan	02525782304370072626e26e2f19afd9dbba962f	Added	Andreas Bengtsson
Jan 06, 2009 02:12 AM PST	anders hallin	ad3db2ac6bd5c3e6e45d7d8fc526249aade38c9a	Added	Andreas Bengtsson
Jan 08, 2009 04:25 AM PST	staffan alfven	cf962ca189c7a366332602d150e9e751615c0c40	Added	Andreas Bengtsson
Jan 12, 2009 04:52 AM PST	marten brink	b7085ddc77bc7935633943a3f25855b73658c16d	Added	Andreas Bengtsson
Jan 12, 2010 01:09 AM PST	Gustav Soderstrom 3Gs	8e00ef37774df26d28f53523b08a426c57dab8cc	Added	Andreas Bengtsson
Jan 12, 2010 05:17 AM PST	Rasmus Andersson 3G	4491294519cd4403ee564fbb3e66f8dc07d89c87	Added	Andreas Bengtsson
Jan 14, 2009 01:26 AM PST	sorosh tavakoli	fa5cf7457126961fb7b9b75ede649a6cc97fd621	Added	Andreas Bengtsson
Jan 15, 2009 01:44 AM PST	robert nyman	d97e5635b32df4a1ad2be844c6e39a861a7ff654	Added	Andreas Bengtsson
Jan 16, 2009 03:13 AM PST	harald hartwig	bd6b7658f4af02cf2f2fbc84c3a185cbb35f62d1	Added	Andreas Bengtsson
Jan 17, 2011 06:39 AM PST	DerwiPhone	68c3f43a9f867a97cb19ad4d2bc844aa57725b8c	Added	Andreas Andersson
Jan 17, 2011 06:51 AM PST	From DerwiPhone to Andreas Andersson iPhone 3Gs		Modified	Joachim Bengtsson
Jan 19, 2011 07:34 AM PST	From Karin Björkén Iphone 4G to Karin Björkén’s iPhone		Modified	Mattias Arrelid
Jan 21, 2011 01:29 AM PST	Henrik Landgren iPhone 4	399a9a1ba20a2087ca402d4a0a1ac79e7c3aeb16	Added	Andreas Bengtsson
Jan 21, 2011 01:29 AM PST	Tobias Ahlin iPhone 4	005051032275d75b294cac0b1a672d3208f4df19	Added	Andreas Bengtsson
Jan 24, 2011 06:31 AM PST	Gustav Soderstrom iPhone 4	c9d933f90790e40ce1e2e7a14f76c2ad9408a9be	Added	Andreas Bengtsson
Jan 28, 2011 01:22 AM PST	Andres Sehr iPhone 3G	dfc94960e502fc4f9372a4d71ed9c56d6e6fcefa	Added	Andreas Bengtsson
Jan 29, 2010 03:48 AM PST	Spotify 3 3Gs	c08c30b25d88c6d77a1d4dbd35c03293328a1495	Added	Andreas Bengtsson
Jul 01, 2009 02:04 AM PDT	Tobias Edstrom	c583403c036126df91cc1dc85394208776fbb9f9	Added	Max Thoursie
Jul 05, 2011 12:46 PM PDT	Pontus Johansson's iPhone 4	f2ae96726e10d613370074c62e4128f68b15d1b6	Added	Andreas Bengtsson
Jul 10, 2011 11:22 AM PDT	Canvas4	62815b414dd20eff8e6504016c866a547572fd53	Added	Andreas Bengtsson
Jul 11, 2011 04:19 AM PDT	From Joachim Bengtsson Spotify iPhone 4 to Moir		Modified	Joachim Bengtsson
Jul 12, 2011 01:38 AM PDT	Michelle's iPhone 4	7b4173d9862b122fd1ec6461583fba98a131d82c	Added	Andreas Bengtsson
Jul 13, 2011 03:29 PM PDT	Daniel Källbom's iPhone 4	405e3731e1856de782e45c9612ba321b6a3bc992	Added	Andreas Bengtsson
Jul 15, 2009 03:02 AM PDT	Marc Hazan	0fbf3d0111cecb1671e36ff57a3c7619407df624	Added	Andreas Bengtsson
Jul 15, 2009 03:02 AM PDT	Johan Edlund 3GS	89f78af02fc382d6e08650d88b32fe15ae3764d0	Added	Andreas Bengtsson
Jul 15, 2009 03:02 AM PDT	Anders Bond	c8b70867c63b9a849cf6d3f152482cd4fdb28e16	Added	Andreas Bengtsson
Jul 18, 2011 02:34 AM PDT	Mattias Arrelid’s iPad	49e7fbdda68c6d365d0453965e24f65978ddae4e	Added	Mattias Arrelid
Jul 18, 2011 02:35 AM PDT	From Mattias Arrelid’s iPad to Mattias Arrelid’s iPad 2		Modified	Andreas Bengtsson
Jul 22, 2009 02:51 AM PDT	Rory Cellan Jones	bdbc1826cf92dab50903e7b7a03ca76f9519316e	Added	Erik Hartwig
Jul 22, 2009 07:49 AM PDT	Eliot Van Buskirk	5fb61a35cf444988120b56b5798b8e7770fc65e4	Added	Erik Hartwig
Jul 23, 2010 07:40 AM PDT	Joachim Bengtsson Spotify iPhone 4	1cbc74edfdea4c42e8dd6466f2971e40a72afcf6	Added	Andreas Bengtsson
Jul 26, 2010 12:42 PM PDT	Adam Williams iPhone 3Gs	e3b844b4fe0dfd5e04f6902ff4e59349d97b9ab9	Added	Andreas Bengtsson
Jul 26, 2011 11:35 AM PDT	From Mattias Arrelid’s iPad 2 to Mattias Arrelid’s iPad		Modified	Mattias Arrelid
Jul 27, 2009 10:20 AM PDT	From jon mitchell iphone to jon mitchell iphone OLD		Modified	Andreas Bengtsson
Jul 27, 2009 10:21 AM PDT	Jon Mitchell iPhone 3G	203b26a1dbcd542fee58d77ba48a97213de3aedd	Added	Andreas Bengtsson
Jul 27, 2009 10:24 AM PDT	Kieron	74dc03d43419c5323f978e49074052085b4a1cf9	Added	Andreas Bengtsson
Jul 27, 2009 10:24 AM PDT	Eamonn Forde	d027db0565ffe17ccb3d06311abb06a44a4e074f	Added	Andreas Bengtsson
Jul 27, 2009 10:24 AM PDT	Om Malik	3246e67d992c44391373b5cd7d8c540de320e501	Added	Andreas Bengtsson
Jul 27, 2009 10:24 AM PDT	Stuart Dredge	994b6e84001c3ddc6e4f0b6c82e27b83c8a7f155	Added	Andreas Bengtsson
Jul 27, 2010 08:36 AM PDT	Spotify QA iPhone 4	5e0dc2da7054cb1e25e9d32278a98e190fc25af9	Added	Andreas Bengtsson
Jul 28, 2009 01:15 AM PDT	Mike Butcher	1721fca438a8433319fc606c469e891c64b0b792	Added	Andreas Bengtsson
Jul 29, 2011 02:00 AM PDT	Jonas Westerlund’s iPhone 4	a99293a666a6fc01ad4abfa132a5d6c500a0bbcb	Added	Joachim Bengtsson
Jul 30, 2009 04:48 AM PDT	Daniel Grabham	5a9af0435d7f92276ff0e91179cc85e1e0ebc267	Added	Andreas Bengtsson
Jul 30, 2009 04:48 AM PDT	Lars Roth	304b1e4caf5ec88f85987196460741acc21a358c	Added	Andreas Bengtsson
Jul 30, 2009 04:48 AM PDT	Richard Taylor	5c459cb2c0b39317cca51bbeaf74f1017792ad78	Added	Andreas Bengtsson
Jul 30, 2009 04:48 AM PDT	Josh Spears	0b3bd2e5f9e223632f62941c2cb1bc6a8ed88aef	Added	Andreas Bengtsson
Jul 30, 2009 04:48 AM PDT	Mabel Chu	b77a30742c11657df29676aff30fc8f9ef4236e0	Added	Andreas Bengtsson
Jul 30, 2009 04:48 AM PDT	Robert Scoble	b1e5d4e8e8ca5bb2593e1a89ade99d5e28b1dcc6	Added	Andreas Bengtsson
Jun 03, 2010 09:10 AM PDT	From Marcus Forsell Stahre Spotify 3GS to Togi's iPhone		Modified	Marcus Forsell Stahre
Jun 10, 2010 12:11 PM PDT	From Joachim Bengtsson 3Gs to Mishai		Modified	Andreas Bengtsson
Jun 15, 2010 08:44 AM PDT	Jouhaine Aljobair iPhone 3G	a0568ae389867529c89fdd0668a45e70e3b3f282	Added	Andreas Bengtsson
Jun 15, 2010 08:44 AM PDT	Joachim Bengtsson iPad 3G	74e39ee0ac6b69af6f57e213cf5c6b95e5fd787f	Added	Andreas Bengtsson
Jun 21, 2010 02:18 AM PDT	From Spotify 1 3G to Spotify iPhone		Modified	Andreas Bengtsson
Jun 22, 2010 02:11 AM PDT	Tom Noble iPhone 3GS	5093519aea81d4e4e968361ce21bb4dc714d23bb	Added	Andreas Bengtsson
Jun 25, 2009 01:16 AM PDT	From spotify iphone 3g to spotify iphone 3g OS version 2	b17fbbd76db1e2f98df0db5ab1afc17e2f38908d	Modified	Andreas Bengtsson
Jun 25, 2009 01:17 AM PDT	spotify iphone 3g OS version 3	c47521576765de11c3fdb2ce07c291392145c548	Added	Andreas Bengtsson
Jun 27, 2011 11:34 AM PDT	From Mattias Arrelid’s iPhone 4G to Mattias Arrelid’s iPhone		Modified	Mattias Arrelid
Jun 30, 2010 02:06 AM PDT	Daniel Ek iPhone 4	597de683d94aa6ba1a1dbb89d7ea5208f1f26d10	Added	Andreas Bengtsson
Mar 05, 2010 02:40 AM PST	Par Johansson 3Gs	aa537df89ba6d13f36e734d48836bc090b789131	Added	Andreas Bengtsson
Mar 05, 2010 02:40 AM PST	Peter Schuller 3G	b6eb21dd1a210fd38104dfae2156c7ea30ae17a4	Added	Andreas Bengtsson
Mar 05, 2010 02:41 AM PST	Par Johansson iPhone 3GS	70d41626f222d09490377d78c9ebf983b2423e81	Removed	Andreas Bengtsson
Mar 09, 2010 01:30 PM PST	Johan Persson iPhone 3G	fd1736a32f0271022a53f014de383ec1fd5db366	Added	Andreas Bengtsson
Mar 09, 2010 01:30 PM PST	Niklas Lundberg iPhone 3G	6bb1c5acbf455b56d6977ffe9dfd5091f3bca679	Added	Andreas Bengtsson
Mar 09, 2010 01:30 PM PST	Martin Lorentzon iPhone 3Gs	1b9103c597608ce2ab1cc72d0e33e1fd3ffe5433	Added	Andreas Bengtsson
Mar 09, 2010 01:30 PM PST	Oskar Serrander iPhone 3G	b451b5463eab768f1b59045b0fded28cfcf16355	Added	Andreas Bengtsson
Mar 09, 2010 01:30 PM PST	Fredrik Niemela iPhone 3G	0bd7fa632a0cf87c3caa8f9ab383ec9b13f222b4	Added	Andreas Bengtsson
Mar 09, 2010 01:30 PM PST	Niklas Ivarsson iPhone 3G	8dc3a5b56c12702ad7e2e15f99581833317c0b88	Added	Andreas Bengtsson
Mar 09, 2010 01:30 PM PST	Cecilia Vigil iPhone 3G	41957c5e6e29f11c71ac719b5e872e397543462d	Added	Andreas Bengtsson
Mar 09, 2010 01:30 PM PST	Andreas Oman iPhone 3G	4a95fb1ad26a9b77960fe644209b52f196afe515	Added	Andreas Bengtsson
Mar 09, 2010 01:30 PM PST	Jenny Hermanson iPhone 3G	417fd391a37b8afb9b2172470adbcd550c798a9e	Added	Andreas Bengtsson
Mar 09, 2010 01:30 PM PST	Magnus Osterlind iPhone 3Gs	ef0ffb3381285cae1f1016e4782b3557d2df8066	Added	Andreas Bengtsson
Mar 09, 2010 01:30 PM PST	Viktor Brannfors iPhone 3G	f6b90a2636549556a91d439caebd37038dec9edd	Added	Andreas Bengtsson
Mar 10, 2010 10:12 AM PST	Krister Nilsson iPod Touch 1G	4c37d828449bbc98f6f7345f63a1721a14768eac	Added	Andreas Bengtsson
Mar 10, 2010 10:12 AM PST	Mattias Jansson iPhone 3G	fe10ad8477399fdb6c839b12410d2523459ca528	Added	Andreas Bengtsson
Mar 10, 2010 10:12 AM PST	Stefan Palmquist iPhone 3G	4f31bb26dd523de67a06886071fe4372cb815d15	Added	Andreas Bengtsson
Mar 10, 2010 10:12 AM PST	Elias Raam iPod touch 1G	97560e3e8391e37cb2a29dd244e84b7e6d72cb91	Added	Andreas Bengtsson
Mar 11, 2009 09:00 AM PDT	daniel ek 20090311	4c284adcfc73b6985b42a954952f15f8c97c9afb	Added	Andreas Bengtsson
Mar 13, 2009 07:17 AM PDT	andreas mattson	f5b14f9d752d962478f5d7b82fae999882ea157d	Added	Andreas Bengtsson
Mar 17, 2011 09:30 AM PDT	Mark Andrews iPod Touch 2G	c308bcad984a7164713578514e2638b12d8c714a	Added	Andreas Bengtsson
Mar 27, 2009 05:41 AM PDT	thang manh tran	d52ceb999e34f7e3c50be324b0a68f0ee02afbc8	Added	Andreas Bengtsson
May 12, 2010 08:21 AM PDT	From Joachim Bengtsson 3Gs to Mishai		Modified	Joachim Bengtsson
May 14, 2009 07:52 AM PDT	daniel ek iphone 3g	c47521576765de11c3fdb2ce07c291392145c548	Removed	Andreas Bengtsson
May 20, 2009 10:24 PM PDT	stefan blom iphone 3g	3b6272abb0edd098f6b898964fc6fa186a2f4712	Added	Andreas Bengtsson
May 21, 2009 12:27 AM PDT	spike sugiyama iphone 3g	016aa7ae6f54012fb7fb1b75a4bd4d9e76bb9b3f	Added	Andreas Bengtsson
May 21, 2010 07:57 AM PDT	From Mishai to Joachim Bengtsson 3Gs		Modified	Andreas Bengtsson
May 21, 2010 08:02 AM PDT	From Olivier to Olivier Dubigeon		Modified	Andreas Bengtsson
May 21, 2010 08:14 AM PDT	James Duffett-Smith 3G	9e29bf26cd898c6833b88e76019e07df824c3bb1	Added	Andreas Bengtsson
May 21, 2010 08:14 AM PDT	Andrea Rosengren 3Gs	b38c919fa6ed6268774249f2444c9eed36171220	Added	Andreas Bengtsson
May 21, 2010 08:14 AM PDT	Jonathan Forster 3G	8230fb47e4149540771a30d7fe04a47120ced040	Added	Andreas Bengtsson
May 29, 2009 09:59 AM PDT	robert litsen iphone 3g	a65942e3c3a1031e173643948645eadd394c14a8	Added	Andreas Bengtsson
Nov 03, 2010 02:44 PM PDT	From Spotify dev 3GS to Erik’s iPhone		Modified	Andreas Bengtsson
Nov 03, 2010 06:48 AM PDT	Martin Sandberg Iphone 3GS	a5b5d0214a60a0f165d84890cc722ea9aa6e449b	Added	Joachim Bengtsson
Nov 03, 2010 06:48 AM PDT	Nick Barkas iPhone 3G	0a13599e95cf76bd45431deab07951b15021b27a	Added	Joachim Bengtsson
Nov 03, 2010 06:59 AM PDT	Cecilia Vigil iPhone 3G	41957c5e6e29f11c71ac719b5e872e397543462d	Removed	Andreas Bengtsson
Nov 03, 2010 06:59 AM PDT	Cecilia Vigil iPhone 4	b5f4881edc463c7df1b73cc7f863a7c3bee256b0	Added	Andreas Bengtsson
Nov 06, 2010 11:41 AM PDT	From iPad to Mattias Arrelid’s iPad		Modified	Andreas Bengtsson
Nov 07, 2008 08:29 AM PST	andreas ehn 20081107	f28ab8ce61b8f5438b3a4edb4e8608fbf57fae73	Added	Andreas Bengtsson
Nov 10, 2008 12:52 AM PST	par jorgen parson	18820607f45c4606cd97ae858cabf4fca60101b4	Added	Andreas Bengtsson
Nov 10, 2008 12:53 AM PST	From andreas ehn 20081107 to andreas ehn iphone 3g	f28ab8ce61b8f5438b3a4edb4e8608fbf57fae73	Modified	Andreas Bengtsson
Nov 11, 2010 06:36 AM PST	Karin Björkén Iphone 4G	58ddd9b7cfafe5ab7e9e3d3739c348bd8bcc72cb	Added	Joachim Bengtsson
Nov 11, 2010 06:36 AM PST	Martin Sandberg Ipad	758f596dfd7f319cbe8ae53a8ab68181b69723cc	Added	Joachim Bengtsson
Nov 12, 2008 02:36 AM PST	simon habtemikael	626b50c5cf13d2ebc57c3f8123d191f672a35cce	Added	Andreas Bengtsson
Nov 12, 2008 05:32 AM PST	From rasmus andersson iphone to rasmus andersson iphone 3g	From 504269fc86127844d9167ea9e4a77570abbbc867 to 4491294519cd4403ee564fbb3e66f8dc07d89c87	Modified	Andreas Bengtsson
Nov 12, 2008 05:32 AM PST	rasmus andersson iphone	504269fc86127844d9167ea9e4a77570abbbc867	Removed	Andreas Bengtsson
Nov 13, 2008 11:43 PM PST	magnus hugemark	910ae0488812af5c160daeb3559360a8aa1e206e	Added	Andreas Bengtsson
Nov 14, 2008 05:47 AM PST	alfred ruth	c12bf16641c74f4408009d924420c924b2fb4c6a	Added	Andreas Bengtsson
Nov 14, 2008 05:47 AM PST	fredrik nylander	e2717e29f9c9160694e76d7bc91c7192722c5115	Added	Andreas Bengtsson
Nov 19, 2009 06:41 AM PST	Joachim Bengtsson 3Gs	bc8147c3cf554020d8357d1f5d723e3beb2070a1	Added	Joachim Bengtsson
Nov 21, 2008 04:00 AM PST	johan persson iphone 3g	From 7bcb7af323ce67fdf9e196f2d02e6555294c1af1 to b29c043cd702b4500edb939bc9007c70f3e3b8f7	Modified	Andreas Bengtsson
Nov 21, 2008 04:00 AM PST	johan persson iphone 3g	7bcb7af323ce67fdf9e196f2d02e6555294c1af1	Removed	Andreas Bengtsson
Nov 24, 2008 07:44 AM PST	niklas jakobsen	314b46e363e912dcf204805326f456da620a38cc	Added	Andreas Bengtsson
Nov 26, 2008 12:42 AM PST	felix hagno	841ea6a99a2e5d1edbbc7494e9845cf4d92364e0	Added	Andreas Bengtsson
Oct 01, 2010 05:22 AM PDT	Elias Freider iPhone 2G	5d08ea2175eabf94a4d886d80065495d587699bc	Added	Andreas Bengtsson
Oct 01, 2010 05:22 AM PDT	Spotify iPod Touch 4G	b9e286801f11fadde0a1e7e94d4b3b1c6a605011	Added	Andreas Bengtsson
Oct 13, 2008 06:07 AM PDT	eric ohlsson	c6057e72772592173f034704712fe67f1c5e4c1c	Added	Andreas Bengtsson
Oct 13, 2008 06:08 AM PDT	rouzbeh delavari	6c2f71c4ad640caf6abd0aad4dee5b633fcd5c0d	Added	Andreas Bengtsson
Oct 14, 2008 05:07 AM PDT	henrik berggren	d7c033ad316bb07fc546460b039616738ceae91a	Added	Andreas Bengtsson
Oct 20, 2010 01:22 AM PDT	Erik Hammar iPhone 4	dbc5ba4f7aa346ec5e18bbba50b7f33ef0b81525	Added	Andreas Bengtsson
Oct 21, 2010 11:36 PM PDT	iPhone	4abe4975ad7cd7b3659d8de77f3182141b230ade	Added	Andreas Bengtsson
Oct 22, 2010 02:44 AM PDT	iPhone4	9e7072bb530852fae2243c919a1fcaafb80a2da7	Added	Andreas Bengtsson
Oct 22, 2010 02:57 AM PDT	From iPhone4 to Santeri Hernejaervi iPhone 4		Modified	Andreas Bengtsson
Oct 22, 2010 04:31 AM PDT	From iPhone to Mattias Arrelid's iPhone 4G		Modified	Andreas Bengtsson
Oct 23, 2008 02:38 AM PDT	lutz emmerich iphone 3g	589d4b26f229de7e16696abf564cb06d73bb557d	Added	Andreas Bengtsson
Oct 23, 2008 02:48 AM PDT	caspar von gwinner iphone	ed703e11aec2ed3a6a76ee69b0204c3ddd662a9b	Added	Andreas Bengtsson
Oct 25, 2010 05:45 AM PDT	From Spotify 3GS to iPhone		Modified	Andreas Bengtsson
Oct 25, 2010 05:47 AM PDT	From Mattias Arrelid's iPhone 4G to Mattias Arrelid’s iPhone 4G		Modified	Andreas Bengtsson
Sep 08, 2010 06:40 AM PDT	From Marcus Forsell Stahre iPad to Andreas Blixt iPad		Modified	Marcus Forsell Stahre
Sep 08, 2010 06:44 AM PDT	Marcus Forsell Stahre iPad 3G	59db8f5d4e60deaceff5dc9a9616e3b1199d0d5e	Added	Marcus Forsell Stahre
Sep 10, 2008 10:17 AM PDT	anders jonson iphone	fe4189788ccbb8bdb691b513a18a81b79e9ac79c	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	oskar gustafsson	1de627512bb8952279d54c39ef3b0c92529837e1	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	daniel ek iphone 3g	c47521576765de11c3fdb2ce07c291392145c548	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	andreas liffgarden iphone	baf2c73a953fd7ea1ee9a1cba34cc794e442e4aa	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	daniel ekberger iphone 3g	d6e0ca389f25e7339790515fd26841e61ee78e10	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	max thoursie iphone 3g	a448e0678e206e7ac8362fc1d52540f5de1254e0	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	mattias arrelid iphone	2857db598bb4a18bfb39be6d66d5300135dd2ff9	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	leo giertz iphone	d5d6e51195f14b95b587c8f3ad336f91c7873f7a	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	jon mitchell iphone	3a6cd51c12f049a7d5a62d21c227795a2e6f7ac4	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	johan persson iphone 3g	b29c043cd702b4500edb939bc9007c70f3e3b8f7	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	joakim jardenberg	9d10a55bc27719f9fec9c03c7c7afe2632351762	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	mengmeng du iphone 3g	33afae61d64a8443f7a9c823ac01b0a9fed057b3	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	niklas ivarsson iphone	a59fbdfd3e0abff495eb46a82e91e612f1038b23	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	erik hartwig iphone 3g	00c4da1aed9a729c03f99cbaa2d8f7f34cad43fd	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	rasmus andersson iphone	504269fc86127844d9167ea9e4a77570abbbc867	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	spotify iphone 3g	b17fbbd76db1e2f98df0db5ab1afc17e2f38908d	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	spotify ipod touch	3a10b7d3e2d132cd8632351bbba526eb75c6d7a6	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	jesper sarnesjo iphone	1ff9680b93d0a385abf512a9f2e8f0054bca45a5	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	gustav soderstrom iphone 3g	16fbd7cc11d7d904f21d25acc54448bf48ffa2d6	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	goran sander ipod touch	9041c2da1af7e5a7ed05d2855da89ffbe9dc9a30	Added	Jesper Särnesjö
Sep 10, 2008 10:23 AM PDT	goran sander iphone	5f885f088db723f8d44bf9de64b32072c3c20372	Added	Jesper Särnesjö
Sep 15, 2008 06:31 AM PDT	oscar trollheden	d7adaa8c32573b7def0f6f2dc3598d84badf45ac	Added	Andreas Bengtsson
Sep 15, 2009 01:45 AM PDT	Spotify 3GS	79e9b2cd37aaf68e73774c0b2216ebe800c5508e	Added	Andreas Bengtsson
Sep 15, 2009 08:26 AM PDT	Marcus Forsell Stahre Spotify 3GS	77c739a264acc889eb8af0d934bc26666fd8d208	Added	Andreas Bengtsson
Sep 15, 2009 08:26 AM PDT	Andreas Ehn Spotify 3G	f28ab8ce61b8f5438b3a4edb4e8608fbf57fae73	Added	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Eliot Van Buskirk	5fb61a35cf444988120b56b5798b8e7770fc65e4	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Anders Bond	c8b70867c63b9a849cf6d3f152482cd4fdb28e16	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Daniel Grabham	5a9af0435d7f92276ff0e91179cc85e1e0ebc267	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Daniel Norberg	5ae6b79c61a5fd7e05562109b56533e5430a18f6	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Daniel Waterhouse	305fd84da754677d0cc54a90003c6e0ee9c5f8f6	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Eamonn Forde	d027db0565ffe17ccb3d06311abb06a44a4e074f	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Johan Edlund 3GS	89f78af02fc382d6e08650d88b32fe15ae3764d0	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Jon Mitchell iPhone 3G	203b26a1dbcd542fee58d77ba48a97213de3aedd	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Jonathan Fildes	2d21c5387e48c13e15d6479cfcf381bbe8457d6c	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Jonathan Ross	d099c1df337b54839d3fe70a57c955d15469a7f9	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Josh Spears	0b3bd2e5f9e223632f62941c2cb1bc6a8ed88aef	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Kieron	74dc03d43419c5323f978e49074052085b4a1cf9	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Lars Roth	304b1e4caf5ec88f85987196460741acc21a358c	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	anders hallin	ad3db2ac6bd5c3e6e45d7d8fc526249aade38c9a	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	alfred ruth	c12bf16641c74f4408009d924420c924b2fb4c6a	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Tom Christian Gotschalksen	acf0fbd84459b91d77f1c835f015b825526c38ce	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Tobias Edstrom	8dd99036aca3541dca7bc14ea2ce8345eb57fa23	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Tobias Edstrom	c583403c036126df91cc1dc85394208776fbb9f9	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Stuart Dredge	994b6e84001c3ddc6e4f0b6c82e27b83c8a7f155	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Staffan Alfven	fa42a24459da0bd249e271aaba5f65e34d37aa88	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Mabel Chu	b77a30742c11657df29676aff30fc8f9ef4236e0	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Robert Scoble	b1e5d4e8e8ca5bb2593e1a89ade99d5e28b1dcc6	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Richard Taylor	5c459cb2c0b39317cca51bbeaf74f1017792ad78	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Om Malik	3246e67d992c44391373b5cd7d8c540de320e501	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Mike Butcher	1721fca438a8433319fc606c469e891c64b0b792	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Michael Paull	1ef1b1b4186aa2f81cfd0a2948cc8fa07ab90093	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Mattias Forsell Stahre	49bca22d51f14d5e48ef0fc37a36b0012e302d7c	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Marc Hazan	0fbf3d0111cecb1671e36ff57a3c7619407df624	Removed	Andreas Bengtsson
Sep 15, 2009 12:42 AM PDT	Rory Cellan Jones	bdbc1826cf92dab50903e7b7a03ca76f9519316e	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	jp jones	3a0ea5a58bfb41149ad09e626e62c58724347b16	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	andreas ehn iphone 3g	f28ab8ce61b8f5438b3a4edb4e8608fbf57fae73	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	andreas liffgarden iphone	baf2c73a953fd7ea1ee9a1cba34cc794e442e4aa	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	andreas mattson	f5b14f9d752d962478f5d7b82fae999882ea157d	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	andreas oman	4a95fb1ad26a9b77960fe644209b52f196afe515	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	carsten schou	75914dec1a3d97410896b4e2b6332fc18de47b4a	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	caspar von gwinner iphone	ed703e11aec2ed3a6a76ee69b0204c3ddd662a9b	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	cecilia vigil	bb07a98c6db5d5d89523eda9db07a46442078a8f	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	christian perez iphone 3g	fae9e37ef1da63707552058eff7d0b0aaacf2f0b	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	christian remrod	9cbfb9f538354988319fe1a45edaf52ca655785b	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	christian wilsson	460e09452c2ef3e653a77a72a25794c30d6b3693	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	constantin hommels	f1f458e033c081f4ec41ad7fd0a3e21c796f0676	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	daniel ek 20090311	4c284adcfc73b6985b42a954952f15f8c97c9afb	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	daniel ekberger iphone 3g	d6e0ca389f25e7339790515fd26841e61ee78e10	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	diego farias	d2822bb17f2d6a1ecb568f28a0d70e5177cb0073	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	eric ohlsson	c6057e72772592173f034704712fe67f1c5e4c1c	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	erik hartwig iphone 3g	00c4da1aed9a729c03f99cbaa2d8f7f34cad43fd	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	anders jonson iphone	fe4189788ccbb8bdb691b513a18a81b79e9ac79c	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	fredrik arrelid	5c06cc6cda5f265041a0151182cff81d45ba2beb	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	fredrik nylander	e2717e29f9c9160694e76d7bc91c7192722c5115	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	goran sander iphone	5f885f088db723f8d44bf9de64b32072c3c20372	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	goran sander ipod touch	9041c2da1af7e5a7ed05d2855da89ffbe9dc9a30	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	gustav soderstrom iphone 3g	16fbd7cc11d7d904f21d25acc54448bf48ffa2d6	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	harald hartwig	bd6b7658f4af02cf2f2fbc84c3a185cbb35f62d1	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	henrik berggren	d7c033ad316bb07fc546460b039616738ceae91a	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	henrik torstensson	49ed924f3a5e5872325e7abb415ecb1d4a340210	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	jesper sarnesjo iphone	1ff9680b93d0a385abf512a9f2e8f0054bca45a5	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	jimmy stridh	997fe018d898d9577630cd2982b24c07df5efd1f	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	joakim jardenberg	9d10a55bc27719f9fec9c03c7c7afe2632351762	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	johan persson 2	5a751601e4ddc487faa7dc43adcdcc4d35d27179	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	johan persson iphone 3g	b29c043cd702b4500edb939bc9007c70f3e3b8f7	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	johannes schildt	fc233aca8b4a7c82d56b98d35411f23b8e292afe	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	jon mitchell iphone OLD	3a6cd51c12f049a7d5a62d21c227795a2e6f7ac4	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	jonas hombert	8bbaf6e793619bc9bdb761d637c126391c7d566f	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	jonas vig	64b03981b00095a71af18c793658bd5b4cc904b5	Removed	Andreas Bengtsson
Sep 15, 2009 12:43 AM PDT	felix hagno	841ea6a99a2e5d1edbbc7494e9845cf4d92364e0	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	richard mahlberg iphone 3g	3c1a78bb92a48bd80cafd8d4a6b6f48dfddd8e1c	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Lars Roth	304b1e4caf5ec88f85987196460741acc21a358c	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	rebecca horvath	8dfd1a9db9422b3931a902516d8b85b7a9e57bc1	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Kieron	74dc03d43419c5323f978e49074052085b4a1cf9	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	rasmus andersson iphone 3g	4491294519cd4403ee564fbb3e66f8dc07d89c87	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	par jorgen parson	18820607f45c4606cd97ae858cabf4fca60101b4	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Josh Spears	0b3bd2e5f9e223632f62941c2cb1bc6a8ed88aef	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Jonathan Ross	d099c1df337b54839d3fe70a57c955d15469a7f9	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	oskar gustafsson	1de627512bb8952279d54c39ef3b0c92529837e1	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Jonathan Fildes	2d21c5387e48c13e15d6479cfcf381bbe8457d6c	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	oscar trollheden iphone 3g	d7adaa8c32573b7def0f6f2dc3598d84badf45ac	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Jon Mitchell iPhone 3G	203b26a1dbcd542fee58d77ba48a97213de3aedd	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	niklas jakobsen	314b46e363e912dcf204805326f456da620a38cc	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Johan Edlund 3GS	89f78af02fc382d6e08650d88b32fe15ae3764d0	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	niklas ivarsson iphone 3g	8dc3a5b56c12702ad7e2e15f99581833317c0b88	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	niklas ivarsson iphone	a59fbdfd3e0abff495eb46a82e91e612f1038b23	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Eliot Van Buskirk	5fb61a35cf444988120b56b5798b8e7770fc65e4	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	morten morch	dd1e730c8d655d7e8679184d5a67a674e84780ff	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Eamonn Forde	d027db0565ffe17ccb3d06311abb06a44a4e074f	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	mengmeng du iphone 3g	099b86acc2e7595ca137dfac5fd8196e3c190a5c	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Daniel Waterhouse	305fd84da754677d0cc54a90003c6e0ee9c5f8f6	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	max thoursie iphone 3g	a448e0678e206e7ac8362fc1d52540f5de1254e0	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Daniel Norberg	5ae6b79c61a5fd7e05562109b56533e5430a18f6	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	mattias arrelid iphone	2857db598bb4a18bfb39be6d66d5300135dd2ff9	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Daniel Grabham	5a9af0435d7f92276ff0e91179cc85e1e0ebc267	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	marten brink	b7085ddc77bc7935633943a3f25855b73658c16d	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Anders Bond	c8b70867c63b9a849cf6d3f152482cd4fdb28e16	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	marcus forsell stahre	82f7d6cc8dc540f90cd1bb861c0a8c31c6412a40	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	magnus hugemark	910ae0488812af5c160daeb3559360a8aa1e206e	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	lutz emmerich iphone 3g	589d4b26f229de7e16696abf564cb06d73bb557d	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	leo giertz	9ab528559f53cdcc1a6f5b242f5f7a92fb53016e	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	krister nilsson ipod touch	4c37d828449bbc98f6f7345f63a1721a14768eac	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Tom Christian Gotschalksen	acf0fbd84459b91d77f1c835f015b825526c38ce	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	klaus hommels	bf92ebc1f36cd87b9de7b2ed81b5e1f27ae57cb2	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	kim sorensen	c85f90de9e426b2f715c0026d0f322a1d12486ca	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	tom christian gotschalksen	77559bd3df3836292fea9c0304a3b59986b4d2e2	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	thang manh tran	d52ceb999e34f7e3c50be324b0a68f0ee02afbc8	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	stefan blom iphone 3g	3b6272abb0edd098f6b898964fc6fa186a2f4712	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	anders hallin	ad3db2ac6bd5c3e6e45d7d8fc526249aade38c9a	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	anders jonson iphone	fe4189788ccbb8bdb691b513a18a81b79e9ac79c	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	andreas ehn iphone 3g	f28ab8ce61b8f5438b3a4edb4e8608fbf57fae73	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Tobias Edstrom	8dd99036aca3541dca7bc14ea2ce8345eb57fa23	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	stefan	02525782304370072626e26e2f19afd9dbba962f	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Tobias Edstrom	c583403c036126df91cc1dc85394208776fbb9f9	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	staffan alfven	cf962ca189c7a366332602d150e9e751615c0c40	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Stuart Dredge	994b6e84001c3ddc6e4f0b6c82e27b83c8a7f155	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Staffan Alfven	fa42a24459da0bd249e271aaba5f65e34d37aa88	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	spotify ipod touch	3a10b7d3e2d132cd8632351bbba526eb75c6d7a6	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	spotify iphone 3g OS version 3	c47521576765de11c3fdb2ce07c291392145c548	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Rory Cellan Jones	bdbc1826cf92dab50903e7b7a03ca76f9519316e	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	spotify iphone 3g OS version 2	b17fbbd76db1e2f98df0db5ab1afc17e2f38908d	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Robert Scoble	b1e5d4e8e8ca5bb2593e1a89ade99d5e28b1dcc6	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	spike sugiyama iphone 3g	016aa7ae6f54012fb7fb1b75a4bd4d9e76bb9b3f	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Richard Taylor	5c459cb2c0b39317cca51bbeaf74f1017792ad78	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Om Malik	3246e67d992c44391373b5cd7d8c540de320e501	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	sorosh tavakoli	fa5cf7457126961fb7b9b75ede649a6cc97fd621	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	simon habtemikael	626b50c5cf13d2ebc57c3f8123d191f672a35cce	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Mike Butcher	1721fca438a8433319fc606c469e891c64b0b792	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	rouzbeh delavari	6c2f71c4ad640caf6abd0aad4dee5b633fcd5c0d	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Michael Paull	1ef1b1b4186aa2f81cfd0a2948cc8fa07ab90093	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	alfred ruth	c12bf16641c74f4408009d924420c924b2fb4c6a	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	robert nyman	d97e5635b32df4a1ad2be844c6e39a861a7ff654	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	robert litsen iphone 3g	a65942e3c3a1031e173643948645eadd394c14a8	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Marc Hazan	0fbf3d0111cecb1671e36ff57a3c7619407df624	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Mabel Chu	b77a30742c11657df29676aff30fc8f9ef4236e0	Removed	Andreas Bengtsson
Sep 15, 2009 12:44 AM PDT	Mattias Forsell Stahre	49bca22d51f14d5e48ef0fc37a36b0012e302d7c	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	jesper sarnesjo iphone	1ff9680b93d0a385abf512a9f2e8f0054bca45a5	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	joakim jardenberg	9d10a55bc27719f9fec9c03c7c7afe2632351762	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	johan persson 2	5a751601e4ddc487faa7dc43adcdcc4d35d27179	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	johan persson iphone 3g	b29c043cd702b4500edb939bc9007c70f3e3b8f7	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	johannes schildt	fc233aca8b4a7c82d56b98d35411f23b8e292afe	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	jon mitchell iphone OLD	3a6cd51c12f049a7d5a62d21c227795a2e6f7ac4	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	jonas hombert	8bbaf6e793619bc9bdb761d637c126391c7d566f	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	jonas vig	64b03981b00095a71af18c793658bd5b4cc904b5	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	jp jones	3a0ea5a58bfb41149ad09e626e62c58724347b16	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	kim sorensen	c85f90de9e426b2f715c0026d0f322a1d12486ca	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	andreas liffgarden iphone	baf2c73a953fd7ea1ee9a1cba34cc794e442e4aa	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	andreas mattson	f5b14f9d752d962478f5d7b82fae999882ea157d	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	andreas oman	4a95fb1ad26a9b77960fe644209b52f196afe515	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	carsten schou	75914dec1a3d97410896b4e2b6332fc18de47b4a	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	caspar von gwinner iphone	ed703e11aec2ed3a6a76ee69b0204c3ddd662a9b	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	cecilia vigil	bb07a98c6db5d5d89523eda9db07a46442078a8f	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	christian perez iphone 3g	fae9e37ef1da63707552058eff7d0b0aaacf2f0b	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	christian remrod	9cbfb9f538354988319fe1a45edaf52ca655785b	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	christian wilsson	460e09452c2ef3e653a77a72a25794c30d6b3693	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	constantin hommels	f1f458e033c081f4ec41ad7fd0a3e21c796f0676	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	daniel ek 20090311	4c284adcfc73b6985b42a954952f15f8c97c9afb	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	daniel ekberger iphone 3g	d6e0ca389f25e7339790515fd26841e61ee78e10	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	diego farias	d2822bb17f2d6a1ecb568f28a0d70e5177cb0073	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	eric ohlsson	c6057e72772592173f034704712fe67f1c5e4c1c	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	erik hartwig iphone 3g	00c4da1aed9a729c03f99cbaa2d8f7f34cad43fd	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	felix hagno	841ea6a99a2e5d1edbbc7494e9845cf4d92364e0	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	fredrik arrelid	5c06cc6cda5f265041a0151182cff81d45ba2beb	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	fredrik nylander	e2717e29f9c9160694e76d7bc91c7192722c5115	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	goran sander iphone	5f885f088db723f8d44bf9de64b32072c3c20372	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	goran sander ipod touch	9041c2da1af7e5a7ed05d2855da89ffbe9dc9a30	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	gustav soderstrom iphone 3g	16fbd7cc11d7d904f21d25acc54448bf48ffa2d6	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	harald hartwig	bd6b7658f4af02cf2f2fbc84c3a185cbb35f62d1	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	henrik berggren	d7c033ad316bb07fc546460b039616738ceae91a	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	henrik torstensson	49ed924f3a5e5872325e7abb415ecb1d4a340210	Removed	Andreas Bengtsson
Sep 15, 2009 12:45 AM PDT	jimmy stridh	997fe018d898d9577630cd2982b24c07df5efd1f	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	spike sugiyama iphone 3g	016aa7ae6f54012fb7fb1b75a4bd4d9e76bb9b3f	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	tom christian gotschalksen	77559bd3df3836292fea9c0304a3b59986b4d2e2	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	spotify iphone 3g OS version 3	c47521576765de11c3fdb2ce07c291392145c548	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	spotify ipod touch	3a10b7d3e2d132cd8632351bbba526eb75c6d7a6	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	staffan alfven	cf962ca189c7a366332602d150e9e751615c0c40	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	stefan	02525782304370072626e26e2f19afd9dbba962f	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	stefan blom iphone 3g	3b6272abb0edd098f6b898964fc6fa186a2f4712	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	thang manh tran	d52ceb999e34f7e3c50be324b0a68f0ee02afbc8	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	sorosh tavakoli	fa5cf7457126961fb7b9b75ede649a6cc97fd621	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	simon habtemikael	626b50c5cf13d2ebc57c3f8123d191f672a35cce	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	rouzbeh delavari	6c2f71c4ad640caf6abd0aad4dee5b633fcd5c0d	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	robert nyman	d97e5635b32df4a1ad2be844c6e39a861a7ff654	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	klaus hommels	bf92ebc1f36cd87b9de7b2ed81b5e1f27ae57cb2	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	krister nilsson ipod touch	4c37d828449bbc98f6f7345f63a1721a14768eac	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	leo giertz	9ab528559f53cdcc1a6f5b242f5f7a92fb53016e	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	lutz emmerich iphone 3g	589d4b26f229de7e16696abf564cb06d73bb557d	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	magnus hugemark	910ae0488812af5c160daeb3559360a8aa1e206e	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	marcus forsell stahre	82f7d6cc8dc540f90cd1bb861c0a8c31c6412a40	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	marten brink	b7085ddc77bc7935633943a3f25855b73658c16d	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	mattias arrelid iphone	2857db598bb4a18bfb39be6d66d5300135dd2ff9	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	max thoursie iphone 3g	a448e0678e206e7ac8362fc1d52540f5de1254e0	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	mengmeng du iphone 3g	099b86acc2e7595ca137dfac5fd8196e3c190a5c	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	morten morch	dd1e730c8d655d7e8679184d5a67a674e84780ff	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	niklas ivarsson iphone	a59fbdfd3e0abff495eb46a82e91e612f1038b23	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	niklas ivarsson iphone 3g	8dc3a5b56c12702ad7e2e15f99581833317c0b88	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	niklas jakobsen	314b46e363e912dcf204805326f456da620a38cc	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	spotify iphone 3g OS version 2	b17fbbd76db1e2f98df0db5ab1afc17e2f38908d	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	oscar trollheden iphone 3g	d7adaa8c32573b7def0f6f2dc3598d84badf45ac	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	oskar gustafsson	1de627512bb8952279d54c39ef3b0c92529837e1	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	par jorgen parson	18820607f45c4606cd97ae858cabf4fca60101b4	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	robert litsen iphone 3g	a65942e3c3a1031e173643948645eadd394c14a8	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	richard mahlberg iphone 3g	3c1a78bb92a48bd80cafd8d4a6b6f48dfddd8e1c	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	rebecca horvath	8dfd1a9db9422b3931a902516d8b85b7a9e57bc1	Removed	Andreas Bengtsson
Sep 15, 2009 12:46 AM PDT	rasmus andersson iphone 3g	4491294519cd4403ee564fbb3e66f8dc07d89c87	Removed	Andreas Bengtsson
Sep 17, 2008 01:38 AM PDT	henrik torstensson	49ed924f3a5e5872325e7abb415ecb1d4a340210	Added	Andreas Bengtsson
Sep 17, 2008 01:39 AM PDT	johan persson iphone 3g	From b29c043cd702b4500edb939bc9007c70f3e3b8f7 to 7bcb7af323ce67fdf9e196f2d02e6555294c1af1	Modified	Andreas Bengtsson
Sep 17, 2008 03:20 AM PDT	From oscar trollheden to oscar trollheden iphone 3g	d7adaa8c32573b7def0f6f2dc3598d84badf45ac	Modified	Mattias Arrelid
Sep 17, 2009 12:24 PM PDT	Spotify 2 3G	b17fbbd76db1e2f98df0db5ab1afc17e2f38908d	Added	Andreas Bengtsson
Sep 17, 2009 12:24 PM PDT	Gustav Soderstrom 3G	16fbd7cc11d7d904f21d25acc54448bf48ffa2d6	Added	Andreas Bengtsson
Sep 17, 2009 12:24 PM PDT	Andreas Mattson 3G	f5b14f9d752d962478f5d7b82fae999882ea157d	Added	Andreas Bengtsson
Sep 17, 2009 12:24 PM PDT	Spotify 1 3G	c47521576765de11c3fdb2ce07c291392145c548	Added	Andreas Bengtsson
Sep 20, 2010 11:17 AM PDT	iPad	92c0ef0695a4d863b08c543be27afb074e3c060e	Added	Andreas Bengtsson
Sep 21, 2009 09:07 AM PDT	Max Thoursie	a448e0678e206e7ac8362fc1d52540f5de1254e0	Added	Andreas Bengtsson
Sep 21, 2009 09:07 AM PDT	From Max Thoursie to Max Thoursie 3G		Modified	Andreas Bengtsson
Sep 21, 2009 09:07 AM PDT	Joakim Onnerdal 3G	033679f9a67d8830f8024aadd69cdb17f8375572	Added	Andreas Bengtsson
Sep 22, 2009 02:48 AM PDT	Spotify Touch1G	3a10b7d3e2d132cd8632351bbba526eb75c6d7a6	Added	Andreas Bengtsson
Sep 23, 2008 01:17 AM PDT	jonas hombert	8bbaf6e793619bc9bdb761d637c126391c7d566f	Added	Andreas Bengtsson
Sep 23, 2009 01:13 AM PDT	John Novatnack 3GS	995d24f31c86e8b2cc16105861031a2c653364c4	Added	Andreas Bengtsson
Sep 26, 2008 01:51 AM PDT	krister nilsson ipod touch	4c37d828449bbc98f6f7345f63a1721a14768eac	Added	Andreas Bengtsson
Sep 26, 2008 01:57 AM PDT	diego farias	d2822bb17f2d6a1ecb568f28a0d70e5177cb0073	Added	Andreas Bengtsson
Sep 26, 2008 12:02 PM PDT	christian perez iphone 3g	fae9e37ef1da63707552058eff7d0b0aaacf2f0b	Added	Andreas Bengtsson
Sep 30, 2008 12:28 AM PDT	marcus forsell stahre	82f7d6cc8dc540f90cd1bb861c0a8c31c6412a40	Added	Andreas Bengtsson
END
info = data.split("\n").map do |line|
  a = Hash[%w(date_str name id action user).map{|s|s.to_sym}.zip(line.split("\t"))]
  a[:date] = DateTime.parse(a[:date_str])
  a
end.sort{|a,b| a[:date] <=> b[:date]}.each do |o|
  puts %w(date_str name id action user).map{|s|o[s.to_sym]}.join("\t")
end
