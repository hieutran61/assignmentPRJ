USE [Assignment]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 7/13/2022 9:58:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[Fullname] [nvarchar](255) NULL,
	[Avatar] [varchar](255) NULL,
	[Role] [tinyint] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ARTICLE]    Script Date: 7/13/2022 9:58:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ARTICLE](
	[ArticleID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Description] [nvarchar](1000) NULL,
	[Content] [ntext] NULL,
	[Image] [varchar](255) NULL,
	[Author] [varchar](50) NULL,
	[Likes] [int] NULL,
	[TimePost] [smalldatetime] NULL,
	[CateID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ArticleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 7/13/2022 9:58:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[CateName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMMENT]    Script Date: 7/13/2022 9:58:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMMENT](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[ArticleID] [int] NULL,
	[Username] [varchar](50) NULL,
	[TimeComment] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ACCOUNT] ([Username], [Password], [Fullname], [Avatar], [Role], [Status]) VALUES (N'hieu', N'123', N'tndh', N'1.png', 1, 1)
INSERT [dbo].[ACCOUNT] ([Username], [Password], [Fullname], [Avatar], [Role], [Status]) VALUES (N'Mquoc', N'123', N'tmq', N'2.png', 1, 1)
INSERT [dbo].[ACCOUNT] ([Username], [Password], [Fullname], [Avatar], [Role], [Status]) VALUES (N'nd', N'123', N'nd', N'3.png', 0, 1)
INSERT [dbo].[ACCOUNT] ([Username], [Password], [Fullname], [Avatar], [Role], [Status]) VALUES (N'quoc', N'123', N'ndcq', N'4.png', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[ARTICLE] ON 

INSERT [dbo].[ARTICLE] ([ArticleID], [Title], [Description], [Content], [Image], [Author], [Likes], [TimePost], [CateID]) VALUES (3, N'TP.HCM: Tạm giữ nghi phạm trộm xe máy cùng hàng hóa của nam shipper', N'Kiểm tra 1 khách sạn ở Q.Phú Nhuận (TP.HCM), công an phát hiện Dương Nguyễn Hoàng Sơn, nghi phạm lấy trộm xe máy của một nam shipper.', N'Ngày 13.7, lãnh đạo UBND P.22 (Q.Bình Thạnh) xác nhận với Thanh Niên, Công an P.22 đã tạm giữ Dương Nguyễn Hoàng Sơn (34 tuổi, ngụ Q.Bình Thạnh) để điều tra về hành vi trộm cắp tài sản. Sơn là nghi phạm vụ trộm xe máy cùng hàng hóa chở theo trên xe của anh Nguyễn Khánh D. (25 tuổi, quê Hưng Yên, tạm trú Q.Bình Thạnh, TP.HCM). Theo đó, trưa 11.7, trong lúc giao hàng cho khách tại hẻm 113 đường Võ Duy Ninh (P.22, Q.Bình Thạnh), anh D. bất ngờ bị 1 nam thanh niên lấy xe máy tẩu thoát cùng thùng hàng phía sau ước tính khoảng 20 triệu đồng.

Vào cuộc điều tra, ngày 12.7, Công an P.22 phối hợp với Đội Cảnh sát Hình sự Q.Bình Thạnh mời bạn gái của nghi phạm là chị T.T.T (29 tuổi, quê An Giang) lên làm việc. Qua đó, chị T. khai nhận, chiều 11.7, thấy Sơn (người yêu của chị T.) mang về 1 giỏ đồ bên trong có nhiều gói hàng, nên mở ra xem.

Sau đó, công an mời anh D. đến. Anh D. xác nhận các gói hàng mà Sơn mang về nhà có mã trùng với mã hàng hóa anh bị lấy mất. Công an P.22 đã lập biên bản thu giữ các gói hàng.

Tối 12.7, lực lượng chức năng kiểm tra hành chính 1 khách sạn trên đường Phan Đăng Lưu (Q.Phú Nhuận) phát hiện chị T. và Sơn tại đây.

Bước đầu Sơn khai nhận, trưa 11.7 đã trộm 1 xe máy tại hẻm 113 đường Võ Duy Ninh (P.22, Q.Bình Thạnh). Công an P.22 đang phối hợp với Đội Cảnh sát Hình sự Q.Bình Thạnh tiếp tục điều tra, củng cố hồ sơ để xử lý theo quy định.', N'1.png', N'quoc', 99, CAST(N'2022-07-13T00:00:00' AS SmallDateTime), 1)
INSERT [dbo].[ARTICLE] ([ArticleID], [Title], [Description], [Content], [Image], [Author], [Likes], [TimePost], [CateID]) VALUES (4, N'Twitter kiện tỉ phú Elon Musk, yêu cầu thực hiện thỏa thuận 44 tỉ USD', N'Công ty Twitter ngày 12.7 đã kiện tỉ phú Elon Musk lên tòa án ở bang Delaware (Mỹ) vì vi phạm thỏa thuận mua lại công ty trị giá 44 tỉ USD.', N'Reuters đưa tin Twitter ngày 12.7 đã nộp đơn kiện tỉ phú Elon Musk lên tòa án ở bang Delaware (Mỹ) vì vi phạm thỏa thuận mua lại công ty trị giá 44 tỉ USD. Twitter cũng yêu cầu tòa án ra lệnh cho ông Musk phải hoàn tất việc mua lại Twitter với mức giá 54,20 USD/cổ phiếu như đã thỏa thuận.

"Musk rõ ràng tin rằng ông ấy - không giống như mọi bên khác tuân theo luật hợp đồng Delaware - có thể tự do thay đổi ý định, từ bỏ công ty, làm gián đoạn hoạt động của công ty đó, phá hủy giá trị của cổ đông và bỏ đi", đơn kiện cho biết.

Đây có thể sẽ trở thành một trong những vụ kiện lớn nhất trong lịch sử Phố Wall. Tỉ phú Musk vẫn chưa bình luận về động thái của Twitter.', N'2.png', N'hieu', 69, CAST(N'2022-07-13T00:00:00' AS SmallDateTime), 8)
INSERT [dbo].[ARTICLE] ([ArticleID], [Title], [Description], [Content], [Image], [Author], [Likes], [TimePost], [CateID]) VALUES (5, N'Xe điện VinFast VF e34 độ dàn âm thanh 400 triệu đồng', N'Đây rất có thể là xe điện VinFast VF e34 đầu tiên tại Việt Nam được nâng cấp hệ thống âm thanh chuyên nghiệp với chi phí lên tới 400 triệu đồng.', N'Tại Giải thi đấu âm thanh xe hơi EMMA Việt Nam 2022 diễn ra tại TP.HCM từ 29.6 đến 1.7.2022, xe điện VinFast VF e34 gây chú ý khi đây là "thí sinh" duy nhất sử dụng động cơ thuần điện tham gia cuộc thi với dàn âm thanh độ thêm trị giá 400 triệu đồng. Chiếc xe điện này được chủ nhân nâng cấp thêm dàn loa chất lượng cao, đồng thời tăng cường hệ thống cách âm của toàn bộ chiếc xe. Hai thương hiệu loa lắp trên xe là Brax và Focal, chủ yếu phục vụ nhu cầu nghe nhạc Hi-end của chủ xe. Xe điện VinFast VF e34 trang bị động cơ điện đặt ở cầu trước, có công suất 147 mã lực và mô-men xoắn 240 Nm. Cụm pin lithium-ion có dung lượng 42 kWh cho khả năng được được khoảng 285 km khi sạc đầy.

Tổng chi phí để độ dàn âm thanh cho chiếc VinFast VF E34 này vào khoảng 400 triệu đồng, thời gian thi công khoảng một tháng.', N'3.png', N'quoc', 1, CAST(N'2022-07-13T00:00:00' AS SmallDateTime), 7)
INSERT [dbo].[ARTICLE] ([ArticleID], [Title], [Description], [Content], [Image], [Author], [Likes], [TimePost], [CateID]) VALUES (6, N'Lương Thùy Linh, Đỗ Thị Hà khoe dáng nóng bỏng trên thảm đỏ', N'Các nàng hậu như Lương Thùy Linh, Đỗ Thị Hà, Trần Tiểu Vy hay các Á hậu Ngọc Thảo, Phương Anh và Tường San luôn khiến các fan sắc đẹp Việt xuýt xoa ngưỡng mộ bởi vẻ ngoài ngày càng sắc sảo và nóng bỏng. ', N'Sáng 12.7, họp báo chung kết Miss World Vietnam 2022 chính thức diễn ra với sự góp mặt của các nàng hoa, á hậu xinh đẹp. Ngoài ra, Top 38 người đẹp xuất sắc của cuộc thi này cũng xuất hiện và mang đến cho mọi người một màn trình diễn thời trang ấn tượng Trên thảm đỏ, Hoa hậu Lương Thùy Linh nổi bật với chiếc đầm màu sắc vô cùng sặc sỡ với kiểu dáng ôm sát cơ thể. Ở cuối chương trình, chân dài gốc Cao Bằng còn khiến khán giả bất ngờ khi đóng vai "điệp viên" để mang chiếc vương miện Miss World Vietnam 2022 lên sân khấu', N'4.png', N'quoc', 1, CAST(N'2022-07-13T00:00:00' AS SmallDateTime), 3)
INSERT [dbo].[ARTICLE] ([ArticleID], [Title], [Description], [Content], [Image], [Author], [Likes], [TimePost], [CateID]) VALUES (7, N'Vì sao iPhone 12 và 13 bị cấm bán ở Colombia?', N'Một tòa án ở Bogotá, Colombia vừa ra lệnh cấm Apple bán cũng như nhập khẩu các mẫu iPhone 12 và 13 vào quốc gia này, mặc dù Apple lập luận rằng không có mạng 5G cho người tiêu dùng Colombia.', N'Theo Digitaltrends, lệnh cấm ảnh hưởng đến các thiết bị hỗ trợ 5G của Apple, bao gồm iPhone 12, iPhone 13 và iPad Pro, do tòa án phát hiện công ty vi phạm bằng sáng chế của Ericsson liên quan đến công nghệ 5G. Lệnh cấm được đưa ra chưa đầy 6 tháng sau khi nhà sản xuất iPhone bị khởi kiện. Lệnh không chỉ cấm Apple bán và nhập khẩu iPhone và iPad hỗ trợ 5G ở Colombia mà còn không cho phép công ty thương mại hóa và quảng cáo chúng. Apple cũng được lệnh phải gửi cảnh báo đến các cửa hàng, nhà bán lẻ, chủ sở hữu các nền tảng truyền thông xã hội, phương tiện thông tin đại chúng và nền tảng thương mại điện tử trong nước để đảm bảo tuân thủ.

Chưa dừng lại ở đó, Apple cũng không thể đệ đơn chống lại phán quyết của tòa án. Tuy nhiên, công ty vẫn có thể khởi kiện Ericsson ở Texas (Mỹ) về những thiệt hại do phán quyết từ tòa án Colombia đưa ra cũng như mọi khoản tiền phạt, lệ phí, hình phạt và chi phí phát sinh từ vụ kiện này.

Được biết, Apple từng trả phí bản quyền cho Ericsson để sử dụng công nghệ 5G đã được cấp bằng sáng chế trong các thiết bị của họ, tuy nhiên hãng đã không thể gia hạn giấy phép khi chúng hết hạn. Kết quả là, Ericsson đã khởi kiện buộc tội Apple vi phạm bằng sáng chế.

Sau đó, vào tháng 12.2021, Apple đã kiện công ty Thụy Điển vì cho rằng họ vi phạm các điều khoản Công bằng, hợp lý và không phân biệt đối xử (FRAND), các bằng sáng chế là tiêu chuẩn thiết yếu và điều đó khiến phí cấp phép trở nên quá đắt. Kể từ đó, một loạt vụ kiện khác giữa hai bên đã xảy ra, bao gồm cả yêu cầu lệnh cấm nhập khẩu đối với các sản phẩm vi phạm tại một số thị trường quốc tế như Colombia. Lệnh cấm đối với iPhone 12 và 13 nói trên là kết quả của một trong những vụ kiện đó.', N'5.png', N'hieu', 1, CAST(N'2022-07-13T00:00:00' AS SmallDateTime), 2)
INSERT [dbo].[ARTICLE] ([ArticleID], [Title], [Description], [Content], [Image], [Author], [Likes], [TimePost], [CateID]) VALUES (8, N'Hệ lụy khi phụ huynh thay con quyết định nghề nghiệp tương lai', N'Cứ đến mùa xét tuyển, mỗi ngày có hàng trăm phụ huynh gọi điện hỏi thông tin hoặc đến tận trường ĐH, CĐ nhờ tư vấn để chọn ngành cho con, điều chỉnh nguyện vọng... trong khi đúng ra đây là việc của thí sinh.', N'“Con còn nhỏ chưa biết gì nên phải chọn giúp con” !
Ông Vũ Khắc Ngọc, công tác tại Viện Khoa học công nghệ Việt Nam, và cũng là một thầy giáo luyện thi môn hóa nổi tiếng tại Hà Nội, kể lại: “Có một bác phụ huynh kiên nhẫn chờ trước lớp học của tôi tới tận 21 giờ 30 để hỏi về việc điều chỉnh nguyện vọng cho con. Bác rất cẩn thận, giấy tờ, tài liệu, sổ sách, bút thước đủ cả. Quá xúc động trước sự cẩn thận, chu đáo của bác, tôi buột miệng hỏi con bác đâu mà sao không thấy đi cùng bác. Bác trả lời do trời mưa nên con ngại không đến, tuy nhiên vẫn đi xem phim cùng bạn. Tôi hỏi tiếp: “Thế những nguyện vọng này do bạn ấy chọn hay bác chọn?”. Bác nói: “Tôi chọn hết thầy ơi, nó có để tâm đến cái gì bao giờ đâu”. Tôi tiếp tục thắc mắc: “Lỡ bác chọn rồi mà bạn ấy không thích thì sao?”. Bác thản nhiên nói: “Kệ nó thầy ạ, con bảo tôi là con đã cố hết sức rồi, chỉ được 23 điểm thôi, giờ mẹ thích chọn ngành gì thì chọn”.

Trước tình huống này, tiến sĩ Ngọc chỉ còn biết lắc đầu. “Đôi khi bố mẹ cẩn thận, chu đáo và chăm chút quá cũng là nguyên nhân sinh ra những bạn trẻ có thái độ thờ ơ. Bố mẹ lo hết phần của con rồi thì con đâu còn gì để lo, và cũng không biết phải lo những gì”, tiến sĩ Ngọc nhận định.

Tiến sĩ Nguyễn Trung Nhân, Trưởng phòng Đào tạo Trường ĐH Công nghiệp TP.HCM, cũng cho biết trong suốt nhiều ngày qua, có rất nhiều phụ huynh gọi điện tới trường mỗi ngày nhờ cán bộ tuyển sinh tư vấn để xem mình nên chọn ngành học nào cho con.

“Trước và trong thời gian diễn ra việc điều chỉnh nguyện vọng cũng vậy, có phụ huynh đến tận trường hỏi mà không hề có thí sinh đi theo. Ba mẹ của những thí sinh này chia sẻ mình là người quyết định chọn ngành chứ không cho con chọn. Ở đây có 2 tình huống, một là ba mẹ có nhiều kinh nghiệm và hiểu biết, nắm được sở thích, năng lực của con cũng như hiểu rõ nhu cầu thị trường lao động, muốn tốt cho con nên định hướng con phải học ngành đó. Hai là ba mẹ thể hiện quyền lực, muốn tự mình quyết định thay con nhưng không có sự am hiểu về ngành nghề, không hiểu khả năng của con, chọn ngành theo đám đông rồi áp đặt con phải học. Tình huống thứ 2 rõ ràng rất nguy hại”, tiến sĩ Trung Nhân nhìn nhận.

Tại Trường ĐH Công nghiệp thực phẩm TP.HCM, thạc sĩ Nguyễn Thái Sơn, Giám đốc Trung tâm tuyển sinh và truyền thông, cũng chia sẻ tình trạng cha mẹ gọi điện đến trường hỏi thay con càng ngày càng nhiều hơn trước, nhất là ở các thành phố lớn. “Phụ huynh nói rằng do con vẫn còn nhỏ, chưa biết gì nên mới phải tìm hiểu và lựa chọn giúp con. Có thí sinh lại nói cứ để mẹ chọn trước rồi mình chọn sau, nếu không sẽ bị mẹ la...”, thạc sĩ Sơn cho biết thêm.

Dạy con tự quyết định cuộc đời mình
Lý giải về hiện tượng này, tiến sĩ tâm lý Lê Minh Công, giảng viên Khoa Tâm lý học, Trường ĐH Khoa học xã hội và nhân văn TP.HCM, cho rằng đây là hệ quả của cách giáo dục con từ nhỏ, khi cha mẹ quá nuông chiều con cái, làm thay con tất cả mọi việc.

“Thương con, quan tâm đến con không có nghĩa là như vậy, vì điều đó ảnh hưởng rất nhiều tới tính cách, hành động và cuộc đời của con sau này. Lâu nay ở trong gia đình, rất nhiều trẻ không phải làm gì ngoài việc phải học tập để đạt một thành tích nào đó cho cha mẹ. Do điều kiện kinh tế khá giả nên nhiều phụ huynh luôn muốn tạo mọi điều kiện tốt nhất cho con, những việc như rửa chén, nấu cơm, lao động trong nhà đều không phải đụng tay. Chưa kể mọi nhu cầu đều được thỏa mãn, khiến trẻ không có động cơ để trưởng thành, không có cơ hội tự lập, cho đến khi lớn lên vẫn ỷ lại, phụ thuộc vào cha mẹ, không tự mình quyết định được điều gì của chính bản thân mình”, tiến sĩ Công nêu quan điểm.

Tiến sĩ Công cho rằng việc học một ngành không do chính mình lựa chọn, không yêu thích sẽ khiến thí sinh chán nản, không có động cơ học tập tích cực, dẫn đến nguy cơ bỏ giữa chừng, gây lãng phí thời gian và tiền bạc.

“Dù có cố gắng học để tốt nghiệp thì sau này đi làm cũng khó đạt được thành công trong công việc cũng như cuộc sống cá nhân. Không những thế, trong quá trình học, do chán nản, có bạn còn mất phương hướng, sa vào tệ nạn. Vì vậy, hãy dạy con các kỹ năng để có thể biết cách lựa chọn không chỉ ngành học mà rất nhiều điều khác trong cuộc sống, biết tự quyết định và chịu trách nhiệm về quyết định đó”, tiến sĩ Công cho hay.

Biết trước những tình huống này năm nào cũng diễn ra, ông Nguyễn Thanh Hải, Phó hiệu trưởng Trường THPT Trương Định, Tiền Giang, cho biết tại trường mình, ngay từ lớp 10 đã họp toàn bộ phụ huynh để trao đổi. Trong buổi họp đó, thầy cô nêu ra những hệ lụy của việc ba mẹ chọn ngành thay con và tư vấn, đưa ra lời khuyên để phụ huynh cho con được quyền quyết định.

“Chúng tôi vẫn nói với phụ huynh rằng hãy buông con ra để con có cơ hội tự lập, thoát khỏi tư tưởng trông chờ, ỷ lại. Nhiều phụ huynh biết thế là không tốt nhưng vẫn không làm được, do thương con, muốn bao bọc con. Nếu cứ như vậy, con sẽ khó trưởng thành, sau này ra đời sẽ ngơ ngác, không thể tự làm gì, không quyết định được gì”, ông Nguyễn Thanh Hải nhận định', N'6.png', N'hieu', 1, CAST(N'2022-07-13T00:00:00' AS SmallDateTime), 4)
INSERT [dbo].[ARTICLE] ([ArticleID], [Title], [Description], [Content], [Image], [Author], [Likes], [TimePost], [CateID]) VALUES (9, N'Tận hưởng ẩm thực Đà Nẵng và Không gian bia', N'(Tạp chí Du lịch) - Lễ hội “Tận hưởng ẩm thực Đà Nẵng và Không gian bia” được tổ chức từ ngày 3 - 6/7/2022 tại công viên biển Đông, đường Võ Nguyên Giáp, quận Sơn Trà với nhiều hoạt động mới lạ, hấp dẫn.', N'Đây là sự kiện đặc biệt trong chuỗi các hoạt động của “Lễ hội Tận hưởng mùa hè Đà Nẵng 2022” nhằm thu hút người dân, du khách đến tham gia trải nghiệm, thưởng thức hương vị ẩm thực và tham quan, mua sắm các sản phẩm lưu niệm đặc trưng của Đà Nẵng.

Hoạt động xuyên suốt sự kiện là 16 gian hàng trưng bày, bán các sản phẩm lưu niệm của Đà Nẵng, sản phẩm OCOP, trang phục đi biển và Không gian ẩm thực với 20 gian hàng phục vụ các món ăn đặc trưng như mỳ Quảng, bánh tráng cuốn thịt heo, bún mắm, bánh xèo, bún thịt nướng, bún chả cá, bún bò, chè và các món bánh dân gian các vùng miền của Việt Nam (bánh ú, bánh ít, bánh tằm ngũ sắc, bánh bò…

Lễ hội được tổ chức vào khung giờ từ 16h00 đến 22h30 hàng ngày với các hoạt động thưởng thức ẩm thực vùng miền, không gian bia mát lạnh, tham gia trải nghiệm tự tay chế biến và thưởng thức một số món ăn nổi tiếng của Đà Nẵng như mỳ Quảng, mỳ lá, bánh tráng, bánh bèo, bánh nậm, bánh bột lọc dưới sự hướng dẫn của các nghệ nhân. Đồng thời, để tăng tính hấp dẫn của sự kiện, Ban Tổ chức lễ hội tổ chức Cuộc thi “Enjoy bánh xèo Đà Nẵng” dành cho người dân, du khách đến tham gia và mang về giải thưởng là các voucher trải nghiệm dịch vụ du lịch, vật phẩm lưu niệm Danang FantastiCity… Ông Tán Văn Vương, Phó Giám đốc Sở Du lịch Đà Nẵng, Trưởng Ban Tổ chức lễ hội tận hưởng mùa hè Đà Nẵng 2022 cho biết: “Sau thời gian đóng băng do dịch COVID-19, du khách nội địa và quốc tế đã quay trở lại, du lịch thành phố đã bắt đầu khởi sắc. Sở Du lịch đang tập trung tăng cường công tác truyền thông, xúc tiến, quảng bá điểm đến Đà Nẵng thông qua các sự kiện quốc tế, các chương trình, hoạt động xúc tiến tại chỗ. Lễ hội Tận hưởng ẩm thực Đà Nẵng và Không gian bia được tổ chức nhằm mục đích đa dạng hóa các sản phẩm du lịch hè 2022, tạo nên điểm đến mới lạ để người dân, du khách cùng tham quan, trải nghiệm. Hy vọng du khách sẽ có một mùa hè sôi động, ấn tượng và vui vẻ tại Đà Nẵng”.

Với mong muốn giới thiệu, quảng bá ẩm thực Đà Nẵng đến với du khách trong và ngoài nước, tại Lễ hội “Tận hưởng ẩm thực Đà Nẵng và Không gian bia”, Á quân Master chef Việt Nam 2015 – Tuyết Phạm sẽ biểu diễn và chia sẻ cách chế biến, trình bày món mỳ Quảng vào lúc 19h00 ngày 06/7/2022. Theo Chef Tuyết Phạm: “Mỳ Quảng không chỉ mang sứ mệnh của một món ăn truyền thống, dân dã của vùng đất Đà Nẵng – Quảng Nam, mà quan trọng hơn, đây cũng là nét văn hóa đặc trưng đưa hình ảnh Đà Nẵng, Quảng Nam và miền Trung đến với thế giới. Người dân, du khách đến với Lễ hội Tận hưởng ẩm thực Đà Nẵng và Không gian bia sẽ được tận mắt chứng kiến cách chế biến món mỳ Quảng đã làm nên thành công của Tuyết Phạm và cùng nhau chia sẻ những bí quyết để có được hương vị đặc biệt của món mỳ Quảng trứ danh”.', N'7.png', N'hieu', 5, CAST(N'2022-07-13T00:00:00' AS SmallDateTime), 5)
INSERT [dbo].[ARTICLE] ([ArticleID], [Title], [Description], [Content], [Image], [Author], [Likes], [TimePost], [CateID]) VALUES (10, N'Ngày mới với tin tức sức khỏe: Viagra có tác dụng gì với phụ nữ?', N'''Viagra thường được kê đơn cho nam giới trong trường hợp rối loạn cương dương. Tuy nhiên, Viagra không được Cục Quản lý Thực phẩm và Dược phẩm Mỹ chỉ định hoặc chấp thuận sử dụng cho phụ nữ''.', N'Điều gì xảy ra nếu chị em ''uống nhầm'' Viagra?
Viagra là tên thương mại của hợp chất sildenafil, được kê đơn cho nam giới trong trường hợp rối loạn cương dương.

Tuy nhiên, Viagra không được Cục Quản lý Thực phẩm và Dược phẩm Mỹ (FDA) chỉ định hoặc chấp thuận sử dụng cho phụ nữ. Viagra hoạt động như thế nào?
Viagra được kê đơn để điều trị rối loạn cương dương, tác dụng của nó có thể kéo dài từ 4 - 8 giờ. Cơ chế hoạt động của nó là nhờ hoạt động của chất ức chế PDE5 - giúp giãn cơ trơn, làm tăng lưu lượng máu và làm giảm huyết áp.

Đối với nam giới, nó giúp giãn các cơ trơn ở thể hang, làm tăng lưu lượng máu, giúp duy trì sự cương cứng.

Loại thuốc này được đánh giá là hoạt động tương tự ở nam giới và phụ nữ, nhưng tác dụng ở phụ nữ ít hơn. Vậy Viagra có tác dụng gì với phụ nữ? Câu trả lời sẽ có trên trang sức khỏe ngày 10.7.

5 loại rau tốt nhất dành cho những người trên 50 tuổi
Rau luôn là thứ được các chuyên gia dinh dưỡng khuyên dùng nhiều nhất.

Rau cung cấp vitamin, khoáng chất, chất dinh dưỡng thực vật, các hợp chất chống bệnh tật khác, carbohydrate và protein.

Tăng cường tiêu thụ rau, đặc biệt là rau xanh, được đề cập nhiều lần qua nghiên cứu và các chuyên gia dinh dưỡng xem đó như một trong những cách chính để cải thiện sức khỏe của bạn, kể cả ở độ tuổi 50 trở lên.', N'8.png', N'hieu', 100, CAST(N'2022-07-13T00:00:00' AS SmallDateTime), 6)
SET IDENTITY_INSERT [dbo].[ARTICLE] OFF
GO
SET IDENTITY_INSERT [dbo].[CATEGORY] ON 

INSERT [dbo].[CATEGORY] ([CateID], [CateName]) VALUES (1, N'Thời sự')
INSERT [dbo].[CATEGORY] ([CateID], [CateName]) VALUES (2, N'Công nghệ')
INSERT [dbo].[CATEGORY] ([CateID], [CateName]) VALUES (3, N'Văn hoá')
INSERT [dbo].[CATEGORY] ([CateID], [CateName]) VALUES (4, N'Giáo dục')
INSERT [dbo].[CATEGORY] ([CateID], [CateName]) VALUES (5, N'Du lịch')
INSERT [dbo].[CATEGORY] ([CateID], [CateName]) VALUES (6, N'Sức khoẻ')
INSERT [dbo].[CATEGORY] ([CateID], [CateName]) VALUES (7, N'Xe ')
INSERT [dbo].[CATEGORY] ([CateID], [CateName]) VALUES (8, N'Thế giới')
SET IDENTITY_INSERT [dbo].[CATEGORY] OFF
GO
SET IDENTITY_INSERT [dbo].[COMMENT] ON 

INSERT [dbo].[COMMENT] ([CommentID], [ArticleID], [Username], [TimeComment]) VALUES (1, 3, N'quoc', CAST(N'2020-07-13T09:09:00' AS SmallDateTime))
INSERT [dbo].[COMMENT] ([CommentID], [ArticleID], [Username], [TimeComment]) VALUES (2, 10, N'hieu', CAST(N'2020-07-13T10:09:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[COMMENT] OFF
GO
ALTER TABLE [dbo].[ARTICLE]  WITH CHECK ADD FOREIGN KEY([Author])
REFERENCES [dbo].[ACCOUNT] ([Username])
GO
ALTER TABLE [dbo].[ARTICLE]  WITH CHECK ADD FOREIGN KEY([CateID])
REFERENCES [dbo].[CATEGORY] ([CateID])
GO
ALTER TABLE [dbo].[COMMENT]  WITH CHECK ADD FOREIGN KEY([ArticleID])
REFERENCES [dbo].[ARTICLE] ([ArticleID])
GO
ALTER TABLE [dbo].[COMMENT]  WITH CHECK ADD FOREIGN KEY([Username])
REFERENCES [dbo].[ACCOUNT] ([Username])
GO
