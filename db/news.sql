-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2017-04-13 13:46:40
-- 服务器版本： 5.7.16-0ubuntu0.16.04.1
-- PHP Version: 5.6.30-7+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hmt_news`
--

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE `news` (
  `id` int(100) NOT NULL,
  `title` char(200) NOT NULL,
  `href` char(200) NOT NULL,
  `md5` char(200) NOT NULL,
  `origin` int(2) NOT NULL,
  `pic_urls` varchar(500) DEFAULT NULL,
  `last_modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `news_time` timestamp NOT NULL DEFAULT '2000-11-22 14:22:22',
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `title`, `href`, `md5`, `origin`, `pic_urls`, `last_modify_time`, `news_time`, `content`) VALUES
(233, '教务处召开教务管理系统应用研讨会', 'http://jwc.scau.edu.cn/jwc/index.php?m=content&c=index&a=show&catid=15&id=388', '5b908564a040c6f79d7e4e5a6d8aa72b', 1, NULL, '2017-03-16 13:20:07', '2017-03-13 07:32:45', '<div class="detail_main mc" id="content">\n<p style="margin-top: 8px;text-indent: 37px;line-height: 150%;vertical-align: bottom"><span style="font-size:19px;line-height: 150%;font-family:仿宋">2017</span><span style="font-size:19px;line-height:150%;font-family:仿宋">年3月10日，教务处在行政楼三楼东会议室召开了教务管理系统应用研讨会。会议邀请了广东外语外贸大学、广东财经大学、广东金融学院教务处相关负责人为学校教务管理系统应用出谋划策。张永亮处长、黄亚月副处长及相关科室人员出席会议。</span></p><p style="margin-top:8px;text-align:center;line-height:150%;vertical-align:bottom"><span style="font-size:19px;line-height:150%;font-family:仿宋"><img alt="20170313809116.jpg" border="0" height="300" src="http://jwc.scau.edu.cn/jwc/uploadfile/2017/0313/20170313033957950.jpg" style="white-space: normal; width: 444px; height: 300px;" title="20170313809116.jpg" vspace="0" width="444"/> </span></p><p style="text-indent:37px;line-height:37px"><span style="font-size:19px;font-family:仿宋">张永亮处长首先对各位专家表示欢迎，并简要介绍了我校教务管理系统的基本情况。教务科高稳猛详细汇报了学校教务管理系统建设需求。</span></p><p style="text-align:center"><img alt="20170313367098.jpg" border="0" height="300" src="http://jwc.scau.edu.cn/jwc/uploadfile/2017/0313/20170313033957303.jpg" style="width: 459px; height: 300px;" title="20170313367098.jpg" vspace="0" width="459"/></p><p style="text-indent:37px;line-height:37px"><span style="font-size:19px;font-family:仿宋">专家组充分肯定学校提出的需求方案，并结合各校教务系统的招标与投入使用的具体情况对其进行充分的讨论，从招标拟定、系统部署、数据迁移、经费投入等方面提出了相关意见和看法。</span></p><p style="text-align:center"><img alt="20170313878519.jpg" border="0" height="347" src="/uploadfile/2017/0313/20170313878519.jpg" style="width: 460px; height: 347px;" title="20170313878519.jpg" vspace="0" width="460"/></p><p style="text-indent:37px;line-height:37px"><span style="font-family: 仿宋; font-size: 19px;">高水平大学建设的大力推进和学分制改革的不断深入，为学校的教务管理工作提出了更高的要求，教务管理系统的改革与创新的推进势在必行。本次研讨会的召开，为进一步推进学校教务管理系统的建设指路引航。</span><br/></p><p style="text-indent:37px;line-height:37px"><span style="font-size:19px;font-family:仿宋"> </span></p><p><span style="font-size:19px;font-family:仿宋_GB2312;letter-spacing: -0">（文</span><span style="font-size: 19px;letter-spacing: -0">/</span><span style="font-size:19px;font-family:仿宋_GB2312;letter-spacing:-0">图</span><span style="font-size:19px;letter-spacing:-0">  </span><span style="font-size:19px;font-family:仿宋_GB2312;letter-spacing:-0">考务科</span> <span style="font-size: 19px;font-family:仿宋_GB2312;letter-spacing:-0">倪妙珊）</span></p><p style="margin-top: 8px;line-height: 150%;vertical-align: bottom"><strong><span style="font-size:19px;line-height:150%;letter-spacing:-0"> </span></strong></p><p style="margin-top: 8px; text-indent: 37px; line-height: 150%; vertical-align: bottom;"><br/></p> </div>'),
(234, '中南民族大学来我处调研教育信息化和教学管理工作', 'http://jwc.scau.edu.cn/jwc/index.php?m=content&c=index&a=show&catid=15&id=379', '726f9c93ee74a408abaf24487af056d8', 1, NULL, '2017-03-16 13:20:07', '2017-03-09 03:46:50', '<div class="detail_main mc" id="content">\n<p style="LINE-HEIGHT: 37px; TEXT-INDENT: 37px"><span style="FONT-SIZE: 18px; FONT-FAMILY: 宋体,SimSun; COLOR: black"></span><span style="FONT-SIZE: 18px; FONT-FAMILY: 宋体,SimSun; COLOR: black">3月7日下午，中南民族大学现代教育中心主任闻亮和、教务处于艳华副处长一行6人到我处调研本科教育教学信息化和教学管理工作。</span></p><p style="LINE-HEIGHT: 37px; TEXT-INDENT: 37px"><span style="FONT-SIZE: 21px; FONT-FAMILY: 华文仿宋; COLOR: black"><img alt="1111.jpg" height="466" src="/uploadfile/2017/0309/20170309303424.jpg" style="HEIGHT: 381px; WIDTH: 544px" title="20170309303424.jpg" width="670"/></span></p><p style="LINE-HEIGHT: 37px; TEXT-INDENT: 37px"><span style="FONT-SIZE: 18px; FONT-FAMILY: 宋体,SimSun; COLOR: black">教务处副处长黄亚月接待来访人员并主持召开座谈会。黄亚月首先对来访人员表示欢迎，并简要介绍了我校本科教学工作的基本情况。教务处和现教中心相关科室、部门负责人就学校教育教学信息化整体建设情况、互联网教室建设、网络教学综合平台的引进与建设、各级各类在线课程的建设与推广、教学模式改革和教师教育技术能力培训等议题进行了详细的交流和讨论。</span></p><p style="LINE-HEIGHT: 37px; TEXT-INDENT: 37px"><span style="FONT-SIZE: 21px; FONT-FAMILY: 华文仿宋; COLOR: black"><img alt="22222.jpg" height="441" src="/uploadfile/2017/0309/20170309438370.jpg" style="HEIGHT: 380px; WIDTH: 541px" title="20170309438370.jpg" width="641"/></span></p><p style="LINE-HEIGHT: 37px; TEXT-INDENT: 37px"><span style="FONT-SIZE: 18px; FONT-FAMILY: 宋体,SimSun; COLOR: black">会后，双方座谈人员到第六教学楼实地参观了录播室、智慧教室的使用和运行情况。</span></p><p style="LINE-HEIGHT: 37px; TEXT-INDENT: 37px"><span style="FONT-SIZE: 18px; FONT-FAMILY: 宋体,SimSun; COLOR: black">（文/教务科 黄文勇  图/综合科  刘改莲）</span></p><p> </p> </div>'),
(235, '教务处新学期工作会强调：增强服务意识    狠抓工作落实', 'http://jwc.scau.edu.cn/jwc/index.php?m=content&c=index&a=show&catid=15&id=360', '39b79ff1fac8d00276eeb4fe6b70820e', 1, NULL, '2017-03-16 13:20:07', '2017-02-21 09:36:07', '<div class="detail_main mc" id="content">\n<p style="BACKGROUND: white; LINE-HEIGHT: 24px; TEXT-INDENT: 37px"><span style="FONT-SIZE: 19px; FONT-FAMILY: 宋体; COLOR: #666666">2</span><span style="FONT-SIZE: 19px; FONT-FAMILY: 宋体; COLOR: #666666">月21日上午，教务处全体成员在行政楼西会议室召开了新学期工作会议暨双周学习会。</span></p><p style="BACKGROUND: white; TEXT-ALIGN: center; LINE-HEIGHT: 32px; TEXT-INDENT: 38px"><span style="FONT-SIZE: 19px; COLOR: #666666"><span style="FONT-FAMILY: 宋体"><img alt="DSC_0396.JPG" height="319" src="/uploadfile/2017/0221/20170221387105.jpg" style="HEIGHT: 312px; WIDTH: 428px" title="20170221387105.jpg" width="585"/></span></span></p><p style="BACKGROUND: white; LINE-HEIGHT: 32px; TEXT-INDENT: 38px"><span style="FONT-SIZE: 19px; COLOR: #666666"><span style="FONT-FAMILY: 宋体">黄亚月副处长对新修订的《普通高等学校学生管理规定》进行了详细解读，强调新规定是指导和规范高校实施学生管理的重要规章，2017年9月1日将实施，新规定对失信行为要建立约束和惩戒机制，突出了立德树人；将实施弹性学制、转专业优先考虑、创新成果可折算学分、设置创新创业学分等为学生创新创业提供了制度支持；以及规定中的校园秩序与课外活动、奖励与处分、学生申诉等诸多方面将影响在校的每一位大学生。指出教务处将深入学习新规定，认真对照我校教学管理相关规章，及时进行修订。</span></span></p><p style="BACKGROUND: white; TEXT-ALIGN: center; LINE-HEIGHT: 32px; TEXT-INDENT: 38px"><span style="FONT-SIZE: 19px; COLOR: #666666"><span style="FONT-FAMILY: 宋体"><img alt="DSC_0400.JPG" height="548" src="/uploadfile/2017/0221/20170221159888.jpg" style="HEIGHT: 314px; WIDTH: 441px" title="20170221159888.jpg" width="574"/></span></span></p><p style="BACKGROUND: white; LINE-HEIGHT: 32px; TEXT-INDENT: 38px"><span style="FONT-SIZE: 19px; COLOR: #666666"><span style="FONT-FAMILY: 宋体">会上，张永亮处长着重围绕2017年本科教学重点推进的审核评估工作；教务处开展的八项提高服务质量新举措；启动“十佳教师”评选，筹备“青年教师教学优秀奖”评选；校级教学成果评审和国家重点教学成果培育；实践经费管理、毕业论文查重；信息化建设；教师教学发展中心建设软硬件建设；健全教师教学监督与督导、加强基层教学组织建设；推进学分制改革、专业认证；落实人才培养方案的修订、考教分离、过程考核等进行了部署和安排。</span></span></p><p style="BACKGROUND: white; LINE-HEIGHT: 32px; TEXT-INDENT: 38px"><span style="FONT-SIZE: 19px; COLOR: #666666"><span style="FONT-FAMILY: 宋体">张永亮处长就如何进一步做好教学管理工作提出三点要求：一、重服务 要求牢固树立服务意识，注意服务态度，工作中应注意方式方法，做到坚持原则，热情待人。二、重落实要求各科室应按照工作计划，稳步推进各项工作，按时保质保量，确保任务落地。三、重作风 要求每个人都应该严格要求自己、加强自我管理，不迟到、不早退，树立优良的工作作风。</span></span></p><p style="BACKGROUND: white; LINE-HEIGHT: 32px; TEXT-INDENT: 38px"><span style="FONT-SIZE: 19px; COLOR: #666666"><span style="FONT-FAMILY: 宋体">（文/图  综合科  刘改莲）</span></span></p><p> </p> </div>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `md5_2` (`md5`),
  ADD KEY `md5` (`md5`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `news`
--
ALTER TABLE `news`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=636;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;