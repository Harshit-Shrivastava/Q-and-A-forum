/****** Object:  ForeignKey [FK_ans.qid_ques.qid]    Script Date: 11/16/2012 02:47:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ans.qid_ques.qid]') AND parent_object_id = OBJECT_ID(N'[dbo].[ans]'))
ALTER TABLE [dbo].[ans] DROP CONSTRAINT [FK_ans.qid_ques.qid]
GO
/****** Object:  ForeignKey [FK_ans.uid_user.uid]    Script Date: 11/16/2012 02:47:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ans.uid_user.uid]') AND parent_object_id = OBJECT_ID(N'[dbo].[ans]'))
ALTER TABLE [dbo].[ans] DROP CONSTRAINT [FK_ans.uid_user.uid]
GO
/****** Object:  ForeignKey [FK_ques.tid_topics.tid]    Script Date: 11/16/2012 02:47:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ques.tid_topics.tid]') AND parent_object_id = OBJECT_ID(N'[dbo].[ques]'))
ALTER TABLE [dbo].[ques] DROP CONSTRAINT [FK_ques.tid_topics.tid]
GO
/****** Object:  ForeignKey [FK_ques.uid_user.uid]    Script Date: 11/16/2012 02:47:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ques.uid_user.uid]') AND parent_object_id = OBJECT_ID(N'[dbo].[ques]'))
ALTER TABLE [dbo].[ques] DROP CONSTRAINT [FK_ques.uid_user.uid]
GO
/****** Object:  ForeignKey [FK_user.id_login.id]    Script Date: 11/16/2012 02:47:46 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_user.id_login.id]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
ALTER TABLE [dbo].[user] DROP CONSTRAINT [FK_user.id_login.id]
GO
/****** Object:  Table [dbo].[ans]    Script Date: 11/16/2012 02:47:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ans]') AND type in (N'U'))
DROP TABLE [dbo].[ans]
GO
/****** Object:  Table [dbo].[ques]    Script Date: 11/16/2012 02:47:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ques]') AND type in (N'U'))
DROP TABLE [dbo].[ques]
GO
/****** Object:  Table [dbo].[user]    Script Date: 11/16/2012 02:47:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
DROP TABLE [dbo].[user]
GO
/****** Object:  Table [dbo].[topics]    Script Date: 11/16/2012 02:47:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topics]') AND type in (N'U'))
DROP TABLE [dbo].[topics]
GO
/****** Object:  Table [dbo].[login]    Script Date: 11/16/2012 02:47:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[login]') AND type in (N'U'))
DROP TABLE [dbo].[login]
GO
/****** Object:  Table [dbo].[login]    Script Date: 11/16/2012 02:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[login]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uid] [varchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[pass] [varchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
 CONSTRAINT [PK_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[login] ON
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (1, N'admin', N'21232f297a57a5a743894a0e4a801fc3')
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (2, N'moderator', N'ad148a3ca8bd0ef3b48c52454c493ec5')
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (3, N'justin', N'1a1dc91c907325c69271ddf0c944bc72')
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (4, N'fourat', N'1a1dc91c907325c69271ddf0c944bc72')
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (5, N'juchan', N'1a1dc91c907325c69271ddf0c944bc72')
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (6, N'eduardo', N'1a1dc91c907325c69271ddf0c944bc72')
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (7, N'jwallace', N'1a1dc91c907325c69271ddf0c944bc72')
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (8, N'fcaparaz', N'1a1dc91c907325c69271ddf0c944bc72')
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (9, N'mgutherie', N'1a1dc91c907325c69271ddf0c944bc72')
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (10, N'dquixote', N'1a1dc91c907325c69271ddf0c944bc72')
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (12, N'asd', N'f970e2767d0cfe75876ea857f92e319b')
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (19, N'harshit', N'1a1dc91c907325c69271ddf0c944bc72')
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (20, N'hellboydvd', N'1a1dc91c907325c69271ddf0c944bc72')
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (21, N'saurabh', N'1a1dc91c907325c69271ddf0c944bc72')
INSERT [dbo].[login] ([id], [uid], [pass]) VALUES (22, N'harshit', N'1a1dc91c907325c69271ddf0c944bc72')
SET IDENTITY_INSERT [dbo].[login] OFF
/****** Object:  Table [dbo].[topics]    Script Date: 11/16/2012 02:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topics]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[topics](
	[tid] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[description] [varchar](1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_topics] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[topics] ON
INSERT [dbo].[topics] ([tid], [name], [description]) VALUES (1, N'Board Rules and Announcements', N'Important announcements, contests and rules can be found here.')
INSERT [dbo].[topics] ([tid], [name], [description]) VALUES (2, N'Web Development', N'Lounge for web devs for posting queries related to PHP, JS, mysql, ASP, AJAX and other web development languages.')
INSERT [dbo].[topics] ([tid], [name], [description]) VALUES (3, N'C/C++', N'Ideal place to search and ask questions for the most widely used languages in computing.')
INSERT [dbo].[topics] ([tid], [name], [description]) VALUES (4, N'Java', N'Q and A for all Java Fanboys!')
INSERT [dbo].[topics] ([tid], [name], [description]) VALUES (5, N'Game development', N'For those who provide food for the gamers out there.')
INSERT [dbo].[topics] ([tid], [name], [description]) VALUES (6, N'Theoretical CS', N'For appeasements of theoretical nerds. The computer science forum is the best place to solve your doubts.')
INSERT [dbo].[topics] ([tid], [name], [description]) VALUES (7, N'Security', N'Security questions related to firewalls, Routers, Operating Systems and much more.')
INSERT [dbo].[topics] ([tid], [name], [description]) VALUES (8, N'Mobile Development', N'Android, iOS, Windows Phone related queries.')
INSERT [dbo].[topics] ([tid], [name], [description]) VALUES (9, N'Unix & Linux', N'Anything on the C based operating systems.')
INSERT [dbo].[topics] ([tid], [name], [description]) VALUES (10, N'Apple', N'Queries relating to OSX, macbooks, ipods, ipads and all the i stuff that apple has ever released.')
SET IDENTITY_INSERT [dbo].[topics] OFF
/****** Object:  Table [dbo].[user]    Script Date: 11/16/2012 02:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[user](
	[uid] [int] IDENTITY(1,1) NOT NULL,
	[id] [int] NOT NULL,
	[name] [varchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[email] [varchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[phone] [numeric](10, 0) NOT NULL,
	[dob] [date] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[user] ON
INSERT [dbo].[user] ([uid], [id], [name], [email], [phone], [dob]) VALUES (1, 1, N'Harshit Shrivastava', N'harshit.shrivastava14@gmail.com', CAST(9989989980 AS Numeric(10, 0)), CAST(0x30170B00 AS Date))
INSERT [dbo].[user] ([uid], [id], [name], [email], [phone], [dob]) VALUES (2, 2, N'Karan Dwivedi', N'karan1337@live.com', CAST(9812345687 AS Numeric(10, 0)), CAST(0xE2150B00 AS Date))
INSERT [dbo].[user] ([uid], [id], [name], [email], [phone], [dob]) VALUES (3, 3, N'Justin Charles', N'justin@gmail.com', CAST(1605679800 AS Numeric(10, 0)), CAST(0xD4080B00 AS Date))
INSERT [dbo].[user] ([uid], [id], [name], [email], [phone], [dob]) VALUES (4, 4, N'Fourat Zitoni', N'frocks@yahoomail.com', CAST(9145212560 AS Numeric(10, 0)), CAST(0x0F0B0B00 AS Date))
INSERT [dbo].[user] ([uid], [id], [name], [email], [phone], [dob]) VALUES (6, 5, N'Junior U Chan', N'juchan@hotmail.com', CAST(6554433220 AS Numeric(10, 0)), CAST(0xA3230B00 AS Date))
INSERT [dbo].[user] ([uid], [id], [name], [email], [phone], [dob]) VALUES (7, 6, N'Eduardo Copat', N'educopat@gmail.com', CAST(9198520611 AS Numeric(10, 0)), CAST(0x89FF0A00 AS Date))
INSERT [dbo].[user] ([uid], [id], [name], [email], [phone], [dob]) VALUES (8, 7, N'John Wallace', N'jwall@live.com', CAST(1650012312 AS Numeric(10, 0)), CAST(0x58FC0A00 AS Date))
INSERT [dbo].[user] ([uid], [id], [name], [email], [phone], [dob]) VALUES (9, 8, N'Francis Caparaz', N'fcapaz@yahoo.com', CAST(8204258890 AS Numeric(10, 0)), CAST(0x41F90A00 AS Date))
INSERT [dbo].[user] ([uid], [id], [name], [email], [phone], [dob]) VALUES (11, 9, N'Mike Guthrie', N'mikeg@gmail.com', CAST(1100992649 AS Numeric(10, 0)), CAST(0x59010B00 AS Date))
INSERT [dbo].[user] ([uid], [id], [name], [email], [phone], [dob]) VALUES (12, 10, N'Don Quixote', N'donquix@gmail.com', CAST(9151655027 AS Numeric(10, 0)), CAST(0xBEF60A00 AS Date))
INSERT [dbo].[user] ([uid], [id], [name], [email], [phone], [dob]) VALUES (15, 20, N'hellboydvd', N'hellboydvd@gmail.com', CAST(9945441762 AS Numeric(10, 0)), CAST(0x57360B00 AS Date))
INSERT [dbo].[user] ([uid], [id], [name], [email], [phone], [dob]) VALUES (16, 21, N'saurabh', N'sood@gmail.com', CAST(9945441762 AS Numeric(10, 0)), CAST(0x58360B00 AS Date))
INSERT [dbo].[user] ([uid], [id], [name], [email], [phone], [dob]) VALUES (17, 19, N'harshit', N'harshit@gmail.com', CAST(9789879871 AS Numeric(10, 0)), CAST(0x57360B00 AS Date))
SET IDENTITY_INSERT [dbo].[user] OFF
/****** Object:  Table [dbo].[ques]    Script Date: 11/16/2012 02:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ques]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ques](
	[qid] [int] IDENTITY(1,1) NOT NULL,
	[tid] [int] NOT NULL,
	[uid] [int] NOT NULL,
	[title] [varchar](50) COLLATE Latin1_General_CI_AI NOT NULL,
	[question] [varchar](2048) COLLATE Latin1_General_CI_AI NOT NULL,
	[post] [date] NOT NULL,
	[views] [int] NOT NULL,
 CONSTRAINT [PK_ques] PRIMARY KEY CLUSTERED 
(
	[qid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ques] ON
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (3, 1, 1, N'Forum Rules', N'Posting Rules. 1. NO SPAMMING the forum. = PERMANENT Ban! 2. Posts must be written in English. 3. Do Not Post anything Pornographic, nor Violent!. No-racism! If you say Racist words, You have 1 Warning before you are permanently Banned!', CAST(0x53360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (10, 2, 2, N'Javascript line break introduction', N'I have a confirmation pop-up dialog in which I am passing a variable which is a comma separated string. How can I replace the commas and introduce a line break? I tried using replace. I tried passing ''\n'' separated list from back-end. But nothing seems to work — though a normal confirm() used for testing purposes is working fine.', CAST(0x5F360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (11, 2, 3, N'AJAX in firefox', N'sir there is some problem. I work on mac system in codeigniter this ajax code work on google chrome but dont work on firefox my firefox properties is Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US; rv:1.9.0.19) Gecko/2010031218 Firefox/3.0.19', CAST(0x40360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (12, 2, 4, N'Data from API link', N'I have just started looking into JavaScript and jQuery as of last night. I''m playing with the foursquare API (I already hate oauth but that might make for another post at another time) and it''s hard when you have rudimentary knowledge, though I like this way of learning. ', CAST(0x39360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (14, 2, 6, N'Select box resizing problem', N'I have an issue where I have a dropdown box that is as wide as the words "choose please" but when I append to the box it adds the new options to the dropdown but is stays the same width even though the new option are much wider. How do I force it to update the width. ', CAST(0x38360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (15, 2, 7, N'Rails Deleting SQL result from inner join', N'i have two tables Accounts and Details. An account has many details. one of the details is company size. they are ranked from 1-7. i would like to remove all accounts where the size is 6 then i would like to update the accounts so that all those that where size 7 are changed to size 6. so basically i am removing size 6 companies from the system. i am thinking about doing this in a migration.', CAST(0x62360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (16, 3, 8, N'Qt: signal/slot design and performance', N'I''ve recently started using Qt and I need some clarification on signal/slot mechanism. I understand how it''s a great tool for the GUI and communication between objects living in separate threads, but I''m not quite sure whether I should use it in a simple cases like the following one. I have three classes, let''s call them MainWindow, DataManager and DataWorker. DataWorker lives in a separate thread and signals when new data is ready for collection. It is then visualised in MainWindow widgets after some processing. I''ve created DataManager class as to not pollute the GUI class with processing code. Now, how should I handle the communication between DataManager and the MainWindow.', CAST(0x62360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (17, 3, 9, N'Where can we use list initialization?', N'The question here is where can you use list initialization? Also where can you use (in lack of a better term) list assignment? An answer should deal with both C++03 and C++11, highlighting the differences between them.', CAST(0x42360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (20, 3, 11, N'Sharing variables between C# and C++', N'I''m writing a software in c# which needs to call many times and by many threads a function in a c++ unmanaged dll.  My question is: Is it possible to share memory between C++ and C# in order to avoid passing reference every time? Is it just a waste of time? I read about memory mapped files. Could they help me? However, do you know more appropriate solutions?  Thank you very much.', CAST(0x52360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (23, 2, 1, N'Help me with ASP.net', N'What is the difference between innertext and innerhtml? Is there a substantial difference between the two?', CAST(0x65360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (26, 4, 15, N'Unclickable Items under WebView', N'I&#39;m have this test app in Adobe AIR using an Android ANE to insert a VideoView to watch a video. The problem is that once the video is added, the rest of the screen is not clickable.', CAST(0x65360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (27, 4, 16, N'Notifications for volatile attributes in EMF', N'In an Ecore model with an attribute that is declared as transient and volatile (its value is calculated from several other fields), is there a canonical way to generate notifications for changes to this field (i.e. when one of the fields that the transient volatile field depends on changes, check if the value of the transient field is affected by this change and send a notification)?', CAST(0x65360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (28, 4, 17, N' Changing the modality of an existing JDialog', N'I&#39;m integrating an applet and I need to hack one of the dialog and change its modality. My problem is I don&#39;t know Swing, and my attempts have no effect in practice.So there is my question. How can I dynamically change the modality of an existing JDialog ?', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (31, 5, 15, N'How do I calculate opposite of a vector', N'How can i calculate a valid range (RED) for my object&#39;s (BLACK) traveling direction (GREEN). The green is a Vector2 where x and y range is -1 to 1.', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (32, 5, 15, N'How do I render an entire frame to a Texture2D?', N'In a game I am writing, I render an extremely large city out of objects, this can cause lag when moving the camera to view things that are off screen. I need a way to render then ENTIRE city, even the stuff that is off screen, and make it into a Texture2D. ', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (33, 5, 15, N' How to make a registration for my game?', N'Me and my (new) company want to sell a very simple game, but we want it so that only the person that buys it can play it. I want to know if it&#39;s possible to make a &quot;registration&quot; window pop up when the game either first starts or when it is being installed (still haven&#39;t decided whether or not to use an installer or not). It would require the person to input a registration key and it would then check that key against a database to 1. check to see if it&#39;s actually there and 2. to see if it has not been used already. If both are true, it lets you install or play the game an infinite number of times on that computer up until it is uninstalled.', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (34, 6, 15, N'Recent publications on NP ?= coNP question', N'I am interested in the question of whether NP is equal to coNP or not. I&#39;d much appreciate some advice on good publications to read on the topic. For the record, I know that this question is intimately connected to the question of whether P equals NP or not (such that if NP != coNP then P != NP).', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (39, 6, 15, N'Associative Hash mixing', N'Consider the lowly singly-linked list in a purely functional setting. Its praises have been sung from the mountain tops and will continue to be sung. Here I will address one among its many strengths and the question of how it may be extended to the wider class of purely functional sequences based on trees. The problem is the following: You want to test for almost certain structural equality in O(1) time by means of strong hashing. If the hash function is structurally recursive, i.e. hash (x:xs) = mix x (hash xs), then you can transparently cache hash values on lists and update them in O(1) time when an element is consed onto an existing list. Most algorithms for hashing lists are structurally recursive, so this approach is eminently usable in practice. My question is, what have I missed? There must be papers of relevance in both the literature on cryptography and data structures that I failed to find in my search. Any comments on this problem and possible venues to explore would be greatly appreciated.', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (41, 7, 15, N'Risks  due to embedding a commenting service', N'Can commenting services like Disqus, IntenseDebate, etc. pose a security risk for corporations? What risks could arise when embedding such services into corporate websites?', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (42, 7, 16, N'Web Services Security', N'Do we have any good resources on WebServices Security? Any book, pdfs, articles and even the detail answers regarding the securing web services would be appreciated.', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (43, 7, 8, N'How much does a security audit cost?', N'For a PHP CMS, what should I expect to budget for a security audit, both whitebox and blackbox? The codebase is about 85,000 LOC and I would probably use a North American company for testing. I really have no idea if an audit would cost $10-20k or well over $100k. I&#39;m not asking for an exact quote, just a general guesstimate so that I know what to expect. If you could separate your estimates between blackbox and whitebox testing, that would also be helpful.', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (45, 8, 8, N'How to type sms in a full sized keyboard?', N'Is there any application that would allow me to type in the keyboard and the keystrokes echo in the Android device, through bluetooth or an USB cable?', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (46, 8, 8, N'HTC backup', N'I want to back up my htc desire but I dont have the usb cable handy for a while, Any Ideas?', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (47, 8, 8, N'Reverse Teethering on Samsung Galaxy Fit', N'I was implementing reverse-tethering using Samsung galaxy fit and ubuntu 10.10. I am using a DSL connection(BroadBand) and upon running sudo ifconfig eth01 0.0.0.0, I got SIOCSIFADDR: No such device', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (48, 9, 8, N'Make cp return an error if target value exists', N'Is there a way to make cp (from GNU coreutils on Linux) return a nonzero value in case the target file does already exist? Or is there any other small utility which is commonly available and which provides this functionality?', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (49, 9, 8, N'Cron script', N'For example, if I have a java process that (once every 2 hours) takes a backup of a large file, like 500mb, and places it into folder A on HDD A, and I want to schedule a cron script to copy the entire folder A to HDD B once per day... what happens if the cron script happens to fire while the java process is in the middle of writing to folder A? Will it wait? Will it just ignore the file that isn&#39;t done being written yet?', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (50, 9, 6, N'Purpose of lost+found directory?', N'There is a folder at the root of Linux and Unix operating systems called /lost+found/ What is it for? Under what circumstances would I interact with it? How would I interact with it?', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (51, 10, 6, N'iPhone 4 taking blurry pictures', N'pictures taken on my iPhone4 recently became blurry. No software updates were performed, and not water damage exists. Even pictures taken with lots of light show some blur and look foggy. Anyone else had this problem? - What could be the possible reasons/solutions?', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (52, 10, 6, N'Safari with OS X 10 6.8 will not open PDF files', N'After installing the OS X 10.6.8 update on my iMac (10,1), when PDF files are opened within Safari, a blue circle appears, then a black screen with the first page of the PDF file. It will not open further or download. I also downloaded the update on our older iMac (7,1) and the same thing happened. After visiting the Apple Store today, it was suggested that we reinstall Safari, which we did on both computers. This did not change the situation. We also have a third computer, a laptop that has not been updated to 10.6.8. This computer has no problem. Any ideas?', CAST(0x66360B00 AS Date), 0)
INSERT [dbo].[ques] ([qid], [tid], [uid], [title], [question], [post], [views]) VALUES (53, 10, 6, N'Is my MacBook Pro hard drive dying?', N'I have an early 2011 13&quot; MBP, i7, 8GB crucial RAM, 500 GB Seagate ST9500325ASG. I&#39;ve had it for about 4 months. Twice, including last night, the beach ball appears, concurrent with a sound that can only be described as a squeak, coming from, I assume, the hard drive. Then, the beach ball freezes and the machine can only be revived by a hard restart. The cover is closed and I am using a keyboard and monitor. The Console shows nothing, no kernel panic.I have done some research, and this sound is not like those recorded on YouTube. I am at a loss. Is my hard drive on its way out? Should I be concerned?', CAST(0x66360B00 AS Date), 0)
SET IDENTITY_INSERT [dbo].[ques] OFF
/****** Object:  Table [dbo].[ans]    Script Date: 11/16/2012 02:47:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ans]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ans](
	[aid] [int] IDENTITY(1,1) NOT NULL,
	[qid] [int] NOT NULL,
	[uid] [int] NOT NULL,
	[answer] [varchar](2048) COLLATE Latin1_General_CI_AI NOT NULL,
	[pdate] [date] NOT NULL,
 CONSTRAINT [PK_ans] PRIMARY KEY CLUSTERED 
(
	[aid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[ans] ON
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (1, 10, 2, N'In your code you are replacing "\n" with "\n", which would make no difference. You want to replace "," with "\n" instead, right?', CAST(0x5F360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (3, 10, 3, N'string.replace(searchvalue,newvalue). var finallist = List.replace(",", "\n");', CAST(0x5F360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (4, 11, 4, N'When you reload the document, there is reason to set the text of the page. The page is exiting. Why are you making an Ajax request if you are reloading the page? Just use a normal form submission if you are going to do that.', CAST(0x41360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (5, 12, 3, N'You can''t do alert() on a JSON object. Instead, try this: alert(JSON.stringify(data));', CAST(0x3C360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (6, 12, 2, N'I would personally use console.log. It will help you a looong way :) ', CAST(0x3C360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (7, 14, 4, N'This issue is CSS-relative. By default, it works good: http://jsfiddle.net/featalion/A6qbd/. So, try to update your width style to automatic resize the select: http://jsfiddle.net/featalion/f5QWH/1/.', CAST(0x38360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (8, 15, 6, N'You can achieve this task using ActiveRecord API. You should always try to minimize the amount of plain SQL statements inside your application (for cross database compatibility).', CAST(0x62360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (9, 15, 8, N'Well, this SQL statement will work. Here i make an inner SELECT to get all the ids you want, and use it on the outer DELETE.', CAST(0x62360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (10, 16, 6, N'You cannot call GUI functions directly from your thread. So option #1 won''t work, unless there''s a signal/slot connection between DataWorker and DataManager::eventNewData(). The only way to call GUI functions from another thread is through a signal/slot connection. Signal/slot communication always incurs overhead, since it''s purely runtime-based and operates on strings (the names of the slots are generated at compile time, and then compared at runtime.) It''s dynamic dispatch. Direct function calls are always faster.', CAST(0x62360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (11, 16, 7, N'I don''t know exactly how QT works so I''m not sure if there is a performance hit but my intuition says 1. there shouldn''t be a big difference 2. it will probably not matter anyway in a GUI context. The option using the standard QT mechanism has the benefit of the DataManager not needing to know anything about the GUI. Many people consider this good design because it can allow you to replace your GUI without changes to the internals.', CAST(0x62360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (12, 17, 11, N'In C++03 you can only use list-initialization for aggregates (C++03 [dcl.init.aggr]) and scalar (C++03 [dcl.init]/13) types. You could not use "list-assignment" anywhere in C++03. The grammar shown in [expr.ass]/1 does not allow a braced list on the right of an assignment. In C++11 you can use list-initialization pretty much anywhere you can create a variable (see [dcl.init] in C++11 and [dcl.init.list]/1 which lists contexts where list-initialization is allowed)', CAST(0x42360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (13, 17, 12, N'Aggregate initialization is the subset of list initialization that is limited just to aggregates and PODs (as discussed in the question you referenced). Both types of initialization make use of curly braces and optionally and an equals, so the syntax does appear the same at the point of initialization. See http://en.cppreference.com/w/cpp/language/aggregate_initialization and http://en.cppreference.com/w/cpp/language/list_initialization for more details including places where each form of initialization can be used. In C++03 aggregate initialization could only be used with equals (i.e. T object {arg1, arg2}; wasn''t valid just T object = {arg1, arg2};), while C++11 allows it without equals (i.e. T object {arg1, arg2}; became valid). Also in C++11 aggregate initialization was modified slightly to disallow narrowing conversions in aggregate initialization.', CAST(0x43360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (14, 20, 2, N'There is no problem sharing memory between C# and C++ using P/Invoke once you know how it works. I would suggest reading about marshaling in MSDN. You might also want to read about using the unsafe keyword and fixing memory Here is a sample that assumes that your variables can be described as a simple struct. You can use more complex scenarios like allocating and releasing the structure in c++, using other forms of marshaling to get the data back like building your own class to read and write directly to the unmanaged memory. But if you can use a simple struct to hold your variables the method above is the simplest.', CAST(0x53360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (15, 20, 3, N'One way to avoid having to pass a reference to the variables / data that both the C# and C++ code require is to export two functions from the native DLL. In addition to your function that does the work, provide another function that allows the reference to be passed in and stored to a file scope static pointer that is defined in the same .cpp file as both functions so that is accessible to both.', CAST(0x53360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (36, 26, 15, N'Put a background on the video view of say red for testing. The video or layout may be covering your button and if clickable=true then the events wont propagate past that lay and hit the buttons.
', CAST(0x65360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (37, 27, 16, N'You will be aware that EMF comes with its own Adapters. Adding adapters isn&#39;t actually such tedious work, and I&#39;d suggest that in your case this may well be the best option (in fact, generating the model code will include these adapters, cf. this blog post about what every developer should know about EMF).', CAST(0x65360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (38, 23, 17, N'They both apply to text boxes. However, one converts the text into html equivalents while the other does not.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (39, 28, 17, N'I guess that you haven&#39;t acquired the AWTPermission.toolkitModality permission for your applet.Another problem could be that the exclusion type isn&#39;t supported on your platform -- you can check this with Toolkit.isModalExclusionTypeSupported(java.awt.Dialog.ModalExclusionType).', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (40, 28, 17, N'To change whether your dialog is modal or modeless, use setModalityType method.When you call setModal(true), modality type is the same as calling setModalityType(Dialog.DEFAULT_MODALITY_TYPE). The default value is ModalityType.APPLICATION_MODAL.When you call setModal(true), modality type is set to ModalityType.MODELESS.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (41, 31, 15, N'You need a normal vector for your rocket direction. You can use cross product to calculate it, which in 2D results to normal = vector(direction.y, -direction.x); Now the burn vector is just a normalized linear combination of -direction and normal.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (42, 31, 15, N'I&#39;d suggest you calculate the polar angle (angle with the X axis) of the vector. Then you can rotate it by 180&#176; and for each particle add a randomized value based on the width of the burn effect cone (e.g. +/- 30&#176;). Then convert the angle back to vector. ', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (43, 32, 15, N'For 3D Just move the camera much further away so that the entire city is in the view volume. [or make the view volume wider/higher if using orthographic projection]. You will have to make the size of the render target much bigger to accommodate the required resolution, but you will not be able to make a texture more than 4,096 pixels in either dimension.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (44, 33, 15, N'Your method sounds like it could be detrimental to paying customers. Rule #1 about DRM: Never screw paying customers. Sure, you may lose more copies to the pirates, but your paying customers will thank you. That said, I&#39;d look at either getting your game accepted to a platform like Steam or XBox Live that already does this user checking. Failing that, I would recommend maintaining a database on your own web server and require that users create an account and have to log in to play. There are additional security concerns when you are storing customers&#39; private information though, so do some research before you get rainbow hacked.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (45, 34, 15, N'NP is equal to coNP if and only if there are efficiently verifiable proofs of unsatisfiability. I.e., if and only if there exists a polynomial time turing machine M.Most theorists believe there are no such efficient proofs, but proving that they don&#39;t exist would resolve the P vs NP question. However, there has been progress in showing that proofs of a restricted type must necessarily be superpolynomial in size. This is the subject of proof complexity: see the foundational paper by Cook and Reckhow, the survey by Krajicek, or these lecture notes by Razborov.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (46, 34, 15, N'As implied by @Sasho&#39;s answer, you will have more luck if you search for the equivalent question of &quot;existence of a super propositional proof system&quot; than directly for &quot;NP vs. coNP&quot;. It is the central question of propositional proof complexity. A large portion of the area has been on proving super-polynomial lower-bounds for particular proof systems (in classical complexity theory terms, proving that some particular non-deterministic algorithms cannot solve coNP problems in polynomial time).', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (47, 39, 15, N'This answer is about building a hash function for hash tables which is easy to implement. A provable guarantee on the quality is not expected. I do not know much about finite groups which allow fast operations, but I guess that such groups are known in coding theory. Using the symmetric group of order at least m may not be so bad.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (48, 41, 15, N'Answer to the original question: No, it&#39;s not a security risk for your employees to use Disqus etc. -- at least, no more than any other form of communication. Of course, if employees post sensitive corporate information on these systems, then that may harm the corporation&#39;s interests. But you could say the same of any other means of communication. Hopefully, you train employees not to do that, and can rely upon them to be sensible.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (49, 41, 15, N'I personally believe that using Disqus is more secure. My logic you ask? It&#39;s simple. Disqus gives you a few popular service that you can use to log in with, Facebook, OpenID, etc. I would much rather use credentials stored on their servers, than on some total random site that I can&#39;t verify has decent security. I&#39;m not saying that just because the services Disqus provides are popular that they are secure, I just think they&#39;ve had more time to correct &amp; improve their security. There are exceptions of course.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (50, 42, 16, N'OWASP (The Open Web Application Security Project) provides a lot of resources for developers and pen-testers. 

    OWASP is an open community dedicated to enabling organizations to conceive, develop, acquire, operate, and maintain applications that can be trusted. All of the OWASP tools, documents, forums, and chapters are free and open to anyone interested in improving application security.
', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (52, 43, 8, N'Okay, there are a huge number of factors affecting cost and scope of a security audit, which is why it is so difficult to give you a ballpark without a lot more detail on the scope.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (53, 43, 8, N'This really depends on a lot of factors that makes final price. Costs for source code analysis can be counted by counting lines or amount of code in Kilobytes. As far as I have seen, more popular is second method - to count by size of code. While pricing per lines may be more accurate, such approach does not eliminate unexpected things like very poorly written code, that definitely will take much more time to assess. Others additionally counts found vulnerabilities in code. Some people might say that pricing depends on the quality of service. I would disagree and say that this is not always the case. New services needs to proof themselves and usually starts with lower prices and middle quality of audit - not only practical experience is essential, but also personal management, users support, etc. Brand services can afford higher prices. But there is also possibility when the brand service starts to skive, or newbies are capable of doing better audit than the well known brand. So, it is advisable to get some background about service, read recommendations and comments. ', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (54, 45, 8, N'If you have a Google Voice account, you could also head to http://voice.google.com/ and type your SMS messages there. Of course, have the Google Voice app on your phone so that you can sync your messages with your desktop. It works really well.
', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (55, 45, 8, N'SMS2PC will let you see, reply and compose SMS messages on your desktop. All the message are synced back to the phone too. I tried it yesterday and it works great. Wifi only, though.
', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (56, 45, 8, N'Android Manager will let you do this as well. It connects over WiFi to your phone to send and receive SMS messages and it also allows other stuff to sync over WiFi with your computer, for free. I&#39;ve found this to be a great program.
', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (57, 46, 8, N'You can backup to your SD card, then use a card reader, the take out the SD card and physically copy the data to your computer. Backing up to the cloud via Drobox is another option.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (58, 46, 8, N'If your device is equipped with Android 4.0, and you&#39;ve got the SDK installed on your computer, you might want to take a look at Full Backup of non-rooted devices (for how to do a full backup using ADB), plus adbWireless, WiFi ADB, ADB WiFi, and similar apps (which allow you to connect your device to your computer via ADB without the need of an USB cable). I didn&#39;t check all of them, at least some of these apps require root. But you didn&#39;t give enough information to figure out whether that&#39;s an issue.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (59, 47, 8, N'The instructions for USB Networking Replicant are here. Replicant is a Free Software-Only fork of CyanogenMod, so it&#39;s more or less a rooted Android.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (60, 47, 8, N'I think that the problem is, and may also be for you, that &quot;tethering and Usb debugging don&#39;t work simultaneously on this device&quot;. Bummer.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (61, 48, 8, N'(set -C; : &gt;&quot;$target&quot; &amp;&amp; cp -- &quot;$source&quot; &quot;$target&quot;)', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (62, 48, 8, N'You could do: (set -C &amp;&amp;  cat &lt; /path/to/src &gt; /path/to/dest) It won&#39;t copy anything but the content of the file though (not the permissions, ownership or sparseness as some cp implementations do).', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (63, 49, 8, N'In general, Unix commands treat files the same, whether they are open and being written to or not. So if a cron job is using cp to copy a directory, what gets copied depends solely on what is in the directory at the time the cp command examines the directory. If a file is only partially written at the time cp visits it, a partially written copy will be produced. If you want to prevent such occurrences, you need to implement a locking scheme amongst cooperating processes to prevent concurrent access to the directory.
', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (64, 50, 6, N'If you run fsck, the filesystem check and repair command, it might find data fragments that are not referenced anywhere in the filesystem. In particular, fsck might find data that looks like a complete file but doesn&#39;t have a name on the system — an inode with no corresponding file name. This data is still using up space, but it isn&#39;t accessible by any normal means. If you tell fsck to repair the filesystem, it will turn these almost-deleted files back into files. The thing is, the file had a name and location once, but that information is no longer available. So fsck deposits the file in a specific directory, called lost+found (after lost and found property).Files that appear in lost+found are typically files that were already unlinked (i.e. their name had been erased) but still opened by some process (so the data wasn&#39;t erased yet) when the system halted suddenly (kernel panic or power failure). If that&#39;s all that happened, these files were slated for deletion anyway, you don&#39;t need to care about them.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (65, 50, 6, N'The lost+found directory (not Lost+Found) is a construct used by fsck when there is damage to the filesystem (not to the hardware device, but to the fs). Files that would normally be lost because of directory corruption would be linked in that filesystem&#39;s lost+found directory by inode number. Some of these might be lost directories or lost files or even lost devices. Each filesystem should have its own lost+found directory, but you might be looking at a system with only one filesystem. In general, you should hope that the directory is empty; but if there is corruption, be thankful that in many conditions files can be recovered after fsck places them here.
', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (66, 51, 6, N'Is there any chance some water vapour found its way into the phone / lens assembly? Were you using it any place where condensation could have occurred inside the phone? Radical temperate / humidity changes? I&#39;ve never seen this, but I guess it could be possible. I remember folks experiencing this with first generation iPhones.', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (67, 51, 6, N'A thick skin or cover causes the foggy effect with the flash. You can force the effect by holding several fingers above the flash and lens and take a photo. Reflecting light from the flash can cause the problem.
', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (68, 52, 6, N'Are you sure it is not just in non-continuous-scrolling mode? Try pressing the down arrow to go to the next page, or right-clicking and choosing “Single Page Continuous”.
', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (69, 52, 6, N'Run the installer for Snow Leopard over your current installation. The issue is in your settings. The easiest way to make this work is to let the installer reinstall. Most likely you restored both machines from a time machine backup at some point and the setting was incorrect and never got fixed. Easy fix though.
', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (70, 53, 6, N'Number one, backup immediately. At least if it dies you got all your data. I would recommend using a drive scanning utility to check your drive for hardware issues. S.M.A.R.T is useless, its pretty good that telling you that your drive is already dead. All the really good utils aren&#39;t free. Techtool Pro has been my tool of choice, however its not cheap. ', CAST(0x66360B00 AS Date))
INSERT [dbo].[ans] ([aid], [qid], [uid], [answer], [pdate]) VALUES (71, 53, 6, N'Is your computer still covered by warranty or do you have AppleCare? If yes, Apple will no doubt replace the drive for you at no cost.But first get an external drive. Do a complete backup on it with a tool like SuperDuper or Carbon Copy Cloner. Once done set startup so that the external drive starts up your machine. Once you start up unmount (dismount) the internal drive which isn&#39;t running the show anymore. This should stop it from spinning. Use the external drive for a while and see if you hear the noise. If you don&#39;t hear it it&#39;s probably the internal drive and if the machine is under warranty you can erase it and let Apple replace it (with your good backup safely in hand). If your machine is out of warranty you can erase the internal and replace it with a new internal drive yourself, then format it and use SuperDuper or CCC to copy the backup back over it. Start up from the new internal drive and you&#39;re back in business.', CAST(0x66360B00 AS Date))
SET IDENTITY_INSERT [dbo].[ans] OFF
/****** Object:  ForeignKey [FK_ans.qid_ques.qid]    Script Date: 11/16/2012 02:47:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ans.qid_ques.qid]') AND parent_object_id = OBJECT_ID(N'[dbo].[ans]'))
ALTER TABLE [dbo].[ans]  WITH CHECK ADD  CONSTRAINT [FK_ans.qid_ques.qid] FOREIGN KEY([qid])
REFERENCES [dbo].[ques] ([qid])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ans.qid_ques.qid]') AND parent_object_id = OBJECT_ID(N'[dbo].[ans]'))
ALTER TABLE [dbo].[ans] CHECK CONSTRAINT [FK_ans.qid_ques.qid]
GO
/****** Object:  ForeignKey [FK_ans.uid_user.uid]    Script Date: 11/16/2012 02:47:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ans.uid_user.uid]') AND parent_object_id = OBJECT_ID(N'[dbo].[ans]'))
ALTER TABLE [dbo].[ans]  WITH CHECK ADD  CONSTRAINT [FK_ans.uid_user.uid] FOREIGN KEY([uid])
REFERENCES [dbo].[user] ([uid])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ans.uid_user.uid]') AND parent_object_id = OBJECT_ID(N'[dbo].[ans]'))
ALTER TABLE [dbo].[ans] CHECK CONSTRAINT [FK_ans.uid_user.uid]
GO
/****** Object:  ForeignKey [FK_ques.tid_topics.tid]    Script Date: 11/16/2012 02:47:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ques.tid_topics.tid]') AND parent_object_id = OBJECT_ID(N'[dbo].[ques]'))
ALTER TABLE [dbo].[ques]  WITH CHECK ADD  CONSTRAINT [FK_ques.tid_topics.tid] FOREIGN KEY([tid])
REFERENCES [dbo].[topics] ([tid])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ques.tid_topics.tid]') AND parent_object_id = OBJECT_ID(N'[dbo].[ques]'))
ALTER TABLE [dbo].[ques] CHECK CONSTRAINT [FK_ques.tid_topics.tid]
GO
/****** Object:  ForeignKey [FK_ques.uid_user.uid]    Script Date: 11/16/2012 02:47:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ques.uid_user.uid]') AND parent_object_id = OBJECT_ID(N'[dbo].[ques]'))
ALTER TABLE [dbo].[ques]  WITH CHECK ADD  CONSTRAINT [FK_ques.uid_user.uid] FOREIGN KEY([uid])
REFERENCES [dbo].[user] ([uid])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ques.uid_user.uid]') AND parent_object_id = OBJECT_ID(N'[dbo].[ques]'))
ALTER TABLE [dbo].[ques] CHECK CONSTRAINT [FK_ques.uid_user.uid]
GO
/****** Object:  ForeignKey [FK_user.id_login.id]    Script Date: 11/16/2012 02:47:46 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_user.id_login.id]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user.id_login.id] FOREIGN KEY([id])
REFERENCES [dbo].[login] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_user.id_login.id]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user.id_login.id]
GO
