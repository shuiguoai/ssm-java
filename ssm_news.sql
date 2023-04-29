/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50639
 Source Host           : localhost:3306
 Source Schema         : ssm_xyxwglxt

 Target Server Type    : MySQL
 Target Server Version : 50639
 File Encoding         : 65001

 Date: 29/11/2022 11:13:19
*/

drop database if exists ssm_news;
create database ssm_news charset utf8;
use ssm_news;

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` varchar(32) NOT NULL COMMENT '管理员表主键编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `realname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `contact` varchar(50) DEFAULT NULL COMMENT '联系方式',
  `addtime` varchar(28) DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES ('A20211129232312116', 'admin', 'admin', 'admin', '13888888888', '2022-11-29');
INSERT INTO `admin` VALUES ('A20211202222404986', 'tom', '123', '汤姆', '13555555555', '2022-11-02');
INSERT INTO `admin` VALUES ('A20211202222414539', 'jack', '123', '杰克', '13444444444', '2022-11-02');
INSERT INTO `admin` VALUES ('A20211202222423898', 'mike', '123', '迈克', '13777777777', '2022-11-02');
COMMIT;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `articleid` varchar(32) NOT NULL COMMENT '网站内容表主键编号',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `bannerid` varchar(32) DEFAULT NULL COMMENT '栏目',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `istop` varchar(10) DEFAULT NULL COMMENT '是否置顶',
  `isflv` varchar(10) DEFAULT NULL COMMENT '是否轮播',
  `contents` text COMMENT '内容',
  `addtime` varchar(28) DEFAULT NULL COMMENT '发布日期',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  PRIMARY KEY (`articleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站内容表';

-- ----------------------------
-- Records of article
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES ('A20211202220722473', '第九届全国大学生广告艺术大赛颁奖典礼', 'B20211130224003882', 'upfiles/20211202220717.gif', '是', '是', '<p>11月24日，第九届全国大学生广告艺术大赛(以下简称&ldquo;大广赛&rdquo;)颁奖典礼在全国政协礼堂举办。宜春学院在本届大学生广告艺术大赛中获得一等奖1项、二等奖2项、三等奖6项，优秀奖11项。宜春学院被评为本次比赛&ldquo;优秀院校&rdquo;。宜春学院13名获奖师生应邀出席了本次颁奖会。教育部相关领导、主办单位的领导、支持单位领导、参赛高校的领导、大广赛组委会成员、评委代表、赛区负责人、18家媒体朋友和900多位获奖师生代表出席颁奖会。</p>\r\n\r\n<p>　　主题口号为&ldquo;创意我挑战&rdquo;的第九届大广赛得到了多家社会组织的大力支持和赞助。宜春学院策划案《装够了没》赢得爱华仕企业特别奖，小组成员获6000元奖金。宜春学院另一个策划案《闪充666》获得iH5企业特别奖，该企业奖给了小组成员一年的iH5高级账户。</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑, 宋体; font-size: 16px;\"><img src=\"https://newpic.jxnews.com.cn/003/011/304/00301130428_f8eb6ff9.gif\" style=\"border:none; height:333px; margin:0px; padding:0px; vertical-align:top; width:500px\" /></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>　　本届大广赛共设平面、视频、动画、互动、广播、策划案、营销创客、公益等八种创作形式，覆盖全国29个赛区，31个省、市、自治区，截至2017年6月25日，大广赛共有1301所高校(2819所学院)参赛，参赛学生超过80万，收到作品173870组(约36万件)。宜春学院在今年的大广赛中获得国家级奖19项，其中一等奖1项，二等奖2项，三等奖6项，优秀奖10项。在省级比赛中获得42个奖项，其中一等奖9项，二等奖12项，三等奖21项。获奖学生130余人次，其中14级广告学专业42名同学全部获奖。本届大广赛成绩为宜春学院历届大广赛最好成绩。</p>\r\n\r\n<p>　　大广赛是文传学院多年优质实践教学项目，大广赛强化了实践教学环节，引导学生适应快速发展的社会环境，形成了高校、企业、社会通力合作多方协同育人的良好机制。大广赛&ldquo;打破了寻找确定性的传统教学模式，增强了对不确定性的适应力&rdquo;。大广赛赛出了宜春学院新闻传播类学生的专业实力与水平。14广告参赛选手陈海燕认为大广赛是她大学学习中提升能力最有效的专业训练。14广告刘融荣也表示通过大广赛积累了实战经验，策划案一等奖的证书使她获得了就业最权威的入场券。15播音邓雨轩说，大广赛获得国家级一等奖，在北京全国政协礼堂接受颁奖是他青春最闪亮的记忆。</p>\r\n', '2022-11-02', 2);
INSERT INTO `article` VALUES ('A20211202220826692', '经济管理干部学院开展防艾宣传教育活动', 'B20211130223957297', 'upfiles/20211202220817.gif', '是', '是', '<p>12月1日是第30个&ldquo;世界艾滋病日&rdquo;，为加强全院师生参与防艾工作，有效遏制艾滋病在学院的流行和蔓延，从11月底开始，江西经济管理干部学院开展为期一月的&ldquo;美好青春我做主，红丝带校园行&rdquo;为主题的防艾宣传教育活动。</p>\r\n\r\n<p>　　宣传教育活动期间，江西经济管理干部学院利用宣传栏海报、主题班会、宣讲活动等多种形式进行宣传，让全院师生更正确地了解艾滋病，学习预防知识。共青团江西经济管理干部学院委员会携手该院学生会成员组成宣传教育志愿者在校园小广场开展了防艾宣传教育活动。活动现场，宣传教育志愿者为师生们发放红丝带、彩色宣传页以及对艾滋病认识情况调查问卷，耐心讲解防艾的相关知识。过往师生主动参与其中，活动受到了广大师生的支持和赞扬，大家纷纷表示将以实际行动共遏艾滋、共享健康，为进一步构建健康校园做出努力。</p>\r\n', '2022-11-02', 2);
INSERT INTO `article` VALUES ('A20211202220944192', '学院健美操队在第十三届中国大学生大赛取得好成绩！', 'B20211130223957297', 'upfiles/20211202220940.gif', '是', '是', '<p>　本次大赛是由中国大学生体育协会、中国大学生体育协会健美操艺术体操分会主办，淳安县人民政府、浙江省健美操协会承办。大赛吸引了来自全国各地的高校参加，参赛单位共计172个，比赛设24个组别303个项目，参赛运动员近2000人。宜春学院健美操队获得参赛队伍体育院校B组的混五人操第三名、男子五人操第二名、女子三人操第二名、自选有氧踏板第二名、自选有氧舞蹈第一名。</p>\r\n\r\n<p>　　赛后，笔者采访到荣获有氧舞蹈第一名的参赛运动员曾倩，她激动地说道：&ldquo;第一次拿到如此高赛事的奖项自己非常开心，24日是感恩节，队伍的成绩就是感谢学校、教练和支持自己专业的每个人最好的礼物。学校对健美操学生的关怀倍至，教练员对运动员的不离不弃，为每一次比赛都呕心沥血，所以自己一定会好好积累经验，为下一次比赛做更好的准备。&rdquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div style=\"margin: 0px; padding: 0px; border: 0px; color: rgb(102, 102, 102); font-family: 微软雅黑, 宋体; font-size: 16px;\"><img src=\"https://newpic.jxnews.com.cn/003/011/235/00301123520_2e96f704.gif\" style=\"border:none; height:375px; margin:0px; padding:0px; vertical-align:top; width:500px\" />\r\n<p>运动员和教练员留影纪念</p>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>　　宜春学院健美操队在本次比赛中的大放光彩，离不开学校和院里的大力支持，离不开每一个队员艰苦的训练和相互配合，更离不开教练员潘芑骥老师的细心的动作设计和指导。比赛的结束只是队伍训练工作的告一段落。胜不骄、败不馁，相信宜春学院健美操队会继续发挥这种勇攀高峰的精神，向更高的目标进发！</p>\r\n', '2022-11-02', 3);
INSERT INTO `article` VALUES ('A20211202221102374', '国足将士抵达苏州驻地酒店 核酸检测全部合格', 'B20211130224008173', 'upfiles/20211202221057.png', '否', '否', '<p style=\"text-align:justify\">北京时间11月18日20:30，中国国家男子足球队全体抵达苏州驻地酒店，并开始按照防疫规定进行集中隔离。</p>\r\n\r\n<p style=\"text-align:justify\">　　队伍于北京时间18日01:45从阿联酋迪拜起飞，10:00抵达上海浦东国际机场。经过核酸检测后，全体前往指定隔离酒店等待检测结果。得到入境核酸检测结果全部合格的通知后，队伍经过严格闭环转运，于北京时间18日20:30抵达苏州驻地酒店。</p>\r\n', '2022-11-02', 1);
INSERT INTO `article` VALUES ('A20211202221147752', 'JBONBA火箭队为何憾负洛杉矶湖人', 'B20211130224008173', 'upfiles/20211202221143.png', '是', '是', '<p style=\"text-align:justify\">　　NBA火箭,为何憾负洛杉矶湖人?球迷给出答案,且大局已定。网友热议一针见血地指出:格林本场比赛的心态有问题,前几场起码敢投篮。小波特确实不适合打控卫,基本上在场上就只会跟伍德打挡拆,不会组织,也不会突破分数。火箭应该学习一下雷霆,反正怎么打都是输球,不去培养格林和申京,要是坚持目前的人员和打法,不只没有战绩,年轻人也培养不出来。伍德和波特没有培养价值,不但没有,还影响新秀的培养,伍德不能留,波特如果留得话,扔替补席做第六或者第七八人。交易伍德,沃尔和戈登带申京、格林、小马丁打,波特打个第六人,也许,能把申京和格林练出来。好好的一个榜眼,着实是水了,身体天赋这么好,就因为这个教练,连着几场,自信心都给打没了,不敢攻,不能守,现在完整的看了一场,真的是一触球,就交给波特,一盘散沙,一点战术没有,还有就是别再给伍德球玩了。</p>\r\n\r\n<p style=\"text-align:justify\">　　小格林没有身体对抗,应该多增加身体对抗,多给球权多持球突破,这才是出路,现在不给球权,只能在外面突破,永远也不是球星的路子。火箭培养人确实很有问题,明确战术核心就是格林啊,球必须在他手里,不练一年哪有机会。火箭在重建的路上越走越远,格林真的还没到NBA水准的球员。安东尼这状态这手感,佩服的五体投地,这赛季最佳六人拿着过过瘾,最佳引援。看到湖人几个老头子还这么有活力,说实话挺欣慰的,继续磨合,剑指季后赛。本来以为第三节已经进入垃圾时间了,硬是让火箭又打了回来,真的是湖人领先多少分都不放心。火箭的小波特自己运球过前场自己把球运飞了,就这种控卫能带动全队才怪,全队能不乱吗,他尤其还独,格林能发挥出来吗,场均失误比助攻都多,这是我看球快二十年了,第一次看到这种首发控卫。这种控卫眼睛里没有格林,格林必须多持球,多投篮,在一个把体重弄上来,天赋是没的说。</p>\r\n', '2022-11-02', 2);
INSERT INTO `article` VALUES ('A20211202221233893', '四川六连胜 东莞取首胜', 'B20211130224008173', 'upfiles/20211202221220.png', '否', '否', '<p style=\"text-align:justify\">2021-2022赛季中国女子篮球联赛(WCBA)26日结束第六轮比赛，四川女篮61分狂胜上海女篮，取得开赛六连胜，东莞女篮89：79击败天津女篮，迎来赛季首胜。</p>\r\n\r\n<p style=\"text-align:justify\">　　实力强大的四川女篮26日再度展现了近乎恐怖的统治力，面对此前4胜1负的上海女篮，四川在首节和末节都让对手得分为个位数，而她们自己每节得分都至少有20分。上海女篮首节就落后了20分，比赛很快失去胜负悬念，最终四川102:41横扫对手，取得开赛六连胜，目前她们和内蒙古、山东同为6胜0负。</p>\r\n\r\n<p style=\"text-align:justify\">　　山西和新疆两队在本轮获胜后均取得5胜1负的好成绩，在积分榜上紧随全胜的三强之后。当日山西队赢得颇为轻松，75:53轻取武汉女篮，这也是武汉队的赛季第二场失利。新疆女篮则以80:72力克北京女篮。</p>\r\n\r\n<p style=\"text-align:justify\">　　本轮&ldquo;消灭&rdquo;了一支0胜球队，同为五连败的东莞和天津狭路相逢，结果天津队的彭诗晴空砍31分，无奈对手五人得分上双，天津79:89不敌东莞，惨遭六连败，东莞迎来赛季首胜。</p>\r\n', '2022-11-02', 0);
INSERT INTO `article` VALUES ('A20211202221329211', '秦思源： 横跨中西的声音艺术家', 'B20211130224016840', 'upfiles/20211202221326.jpg', '是', '是', '<p style=\"text-align:justify\">　北京宋庄，一座座美术馆、艺术馆错落分布，&ldquo;分响中心&rdquo;声音艺术博物馆就坐落其间。还未走近，白底黑字、设计感十足的大门便映入了眼帘。在紧锣密鼓装修的博物馆前，我们看到了秦思源的身影。</p>\r\n\r\n<p style=\"text-align:justify\">　　<strong>与中国割不断的联系</strong></p>\r\n\r\n<p style=\"text-align:justify\">　　初识秦思源的人，很容易被他中英混血的外表和名门之后的身世所吸引。1971年出生于英国爱丁堡的他，外祖母是著名作家凌叔华，外祖父是文学评论家陈源，母亲是英国广播公司国际部记者陈小滢，父亲则是英国汉学家秦乃瑞。</p>\r\n\r\n<p style=\"text-align:justify\">　　因为拥有一半中国血统，秦思源的&ldquo;思源&rdquo;二字取自饮水思源。别看他现在一口流利的京腔，老北京味儿十足，但在他8岁之前，并不会说中文。</p>\r\n\r\n<p style=\"text-align:justify\">　　1979年，中国刚改革开放不久，父母把秦思源送到北京学习中文。当时，他抱着上兴趣班的心态，阴差阳错地进了什刹海体校学习。体校的训练强度很大，教练原本想着秦思源坚持不住就会自行离开，谁知这个小孩不仅坚持下来了，还在一年多以后取得了北京市武术比赛全能组第二的成绩，并在此后出演了李连杰主演的电影《少林小子》。</p>\r\n\r\n<p style=\"text-align:justify\">　　4年后，秦思源回到英国上中学。在中国练武术、拍电影的经历，使得他成为媒体追逐的焦点，频繁出现在英国的报纸和电视上，但他并不喜欢那样的&ldquo;明星生活&rdquo;，一度感到迷失：&ldquo;那时，我觉得自己变成了中国孩子，对周围的一切都不适应，人已经完全乱套了。&rdquo;几年后，等到他重新适应了英国的生活环境，又面临人生的抉择：选择一个大学专业。</p>\r\n\r\n<p style=\"text-align:justify\">　　1990年，秦思源考上了当时世界排名第三的爱丁堡大学电脑系，硅谷的多家公司向他抛出了橄榄枝，但他却不太喜欢自己正在做的事情。一学期后，他退学重考，而这一次他决定学习中国语言文学。&ldquo;我发现自己在中国待了那么多年，中文却只会说，不会写不会读，相当于半个&lsquo;文盲&rsquo;，如果要研究中国文化是行不通的。&rdquo;</p>\r\n\r\n<p style=\"text-align:justify\">　　秦思源接着考进了伦敦大学亚非学院，进行了系统的中文学习。大学期间，由于专业需要，秦思源再度回到北京，在北京师范大学学习中文。这期间，他组建了曾经名噪一时的穴位乐队，也正是源于这次机缘，秦思源找到了自己的兴趣所在，那就是艺术。</p>\r\n\r\n<p style=\"text-align:justify\">　　大学毕业后，秦思源做的所有工作几乎都与艺术有关。他先在大英图书馆从事&ldquo;国际敦煌学项目&rdquo;的研究工作，此后又回到北京，在英国驻中国大使馆文化教育处工作，做过英国戏剧舞蹈节项目，也做过上海当代艺术展的策展人。</p>\r\n', '2022-11-02', 8);
INSERT INTO `article` VALUES ('A20211202221509438', '高招提前批高职计划招生6796人！', 'B20211130224003882', 'upfiles/20211202221455.jpg', '否', '否', '<p>记者从省教育考试院获悉，8月2日，我省2021年普通高校招生提前批高职(专科)投档录取工作开始。提前批高职(专科)主要包括普通文理、直招士官和艺术等类型招生，总招生计划为6796名，其中普通文理4528名(含直招士官1682名)，普通高职艺术类2180名，三校生高职艺术类88名。</p>\r\n\r\n<p>　　直招士官平行志愿投档后，只招男生的院校中，文史类投档分数居前的院校为成都航空职业技术学院435分、江苏信息职业技术学院414分、南京信息职业技术学院400分；理工类投档分数居前的院校为成都航空职业技术学院399分、东华理工大学377分、南京信息职业技术学院377分；只招女生的院校中，文史类投档分数居前的院校为泰山职业技术学院473分、武昌职业学院436分；理工类投档分数居前的院校分别为武汉交通职业学院422分、泰山职业技术学院422分。</p>\r\n\r\n<p>　　普通文理提前批高职(专科)统招类院校单志愿投档后，文史类投档分数居前的院校为石家庄邮电职业技术学院421分、厦门海洋职业技术学院377分、广东碧桂园职业学院337分、海南科技职业大学327分；理工类投档分数居前的院校为南昌师范学院407分、石家庄邮电职业技术学院403分、厦门海洋职业技术学院397分、广东碧桂园职业学院337分。艺术类专业的投档录取工作目前正在进行中。</p>\r\n\r\n<p>　　8月3日将对未满额的院校进行网上征集志愿，未被录取的考生可于当天上午9:00至下午3:00登录江西省教育考试院网站进行网上征集志愿的填报。</p>\r\n', '2022-11-02', 3);
INSERT INTO `article` VALUES ('A20211202222903274', '希望提高乡村教师待遇 让他们安心从教', 'B20211130224003882', 'upfiles/20211202222859.png', '否', '否', '<p style=\"text-align:justify\">3月15日上午，十三届全国人大二次会议第三场&ldquo;代表通道&rdquo;开启。全国人大代表、江西省奉新县澡下镇白洋教学点教师支月英走上&ldquo;代表通道&rdquo;，回答了记者关于&ldquo;乡村教育&rdquo;的提问。</p>\r\n\r\n<p style=\"text-align:justify\">　　在&ldquo;代表通道&rdquo;，有记者提问：从&ldquo;支姐姐&rdquo;到&ldquo;支妈妈&rdquo;，您教育大山深处的两代人，可以说是见证了乡村教育的发展。今天我们看到村里的学校变美了，但是村里的老师却没有多起来。作为一名乡村教师，不知道今天的你有一个什么样新的感受和新的期待呢？</p>\r\n\r\n<p style=\"text-align:justify\">　　支月英谈到了自身经历，&ldquo;我是来自大山深处的老师，一生只为一事来。1980年，19岁的我离开了家乡、离开了亲人，去了教师奇缺的奉新县澡下镇一个最偏远的学校。这个学校座落在山坳里，去那里任教，那里海拔近千米，交通不方便。39年中，我走的最多的路是崎岖的山路，想得最多的事是怎样教好深山里的每一个孩子。&rdquo;</p>\r\n\r\n<p style=\"text-align:justify\">　　&ldquo;从&lsquo;支姐姐&rsquo;到&lsquo;支妈妈&rsquo;到&lsquo;支奶奶&rsquo;，教育了大山深处的两代人。&rdquo;支月英说，&ldquo;我的交通工具80年代就是&ldquo;两条腿&rdquo;。为什么叫两条腿？就是因为那个时候只有&lsquo;脚&rsquo;这个交通工具，我们学生的课本都是老师用肩挑手提弄上去的。后来我学会了骑摩托车，我的交通工具就是摩托车，我骑坏了6辆摩托车。我看到我的孩子们一茬茬地走出了大山，有研究生、有学士，也有和我一样当老师的。看到他们在各行各业发光发热，我感觉到我教的不光是台下坐的孩子，而是大山中的几代人希望。&rdquo;</p>\r\n\r\n<p style=\"text-align:justify\">　　支月英说，&ldquo;改革开放40年，特别是党的十八大以来，乡村学校有了翻天覆地的变化，比如说我的白洋教学点，从前漏风漏雨，破窗子的泥巴房再也看不到了，取而代之的是封闭式校园，宽敞明亮的教室，现代化的教学设备，是村里最漂亮的建筑。&rdquo;</p>\r\n\r\n<p style=\"text-align:justify\">　　对此，支月英提出了自己的建议，&ldquo;可是乡村教师的工作、生活环境还是比较艰苦，乡村教师的职业吸引力还是依然不够好，所以我希望全社会加大对乡村教师的关心，更大力度提高他们的待遇，让他们安心从教、舒心从教，让山里的孩子们在山里的学校，好好地学习，放飞自己的梦想，和城里的孩子一样，有人生的价值。&rdquo;</p>\r\n', '2022-11-02', 0);
INSERT INTO `article` VALUES ('A20211202223004137', '英语四六级考生防疫要求，考前14天须连续健康打卡', 'B20211130223957297', 'upfiles/20211202222956.jpg', '是', '否', '<p>12月1日，大江网、大江新闻客户端获悉，为保障广大考生的生命安全和身体健康，提高考生自我防护意识，承担对社会的防疫责任，江西省教育考试院发布江西省2021年下半年全国大学英语四、六级考试考生防疫要求。</p>\r\n\r\n<p>　　江西省教育考试院要求，考生须从考前14天开始，每日自行测量体温和监测健康状况，并在参加考试前连续14天通过&ldquo;赣通码&rdquo;界面进行健康打卡。</p>\r\n\r\n<p>　　考前14天内有中高风险地区旅居史、疑似症状等情况的考生，以及考前14天体温异常的考生，如确需参加考试的，须提供考前48小时内核酸检测阴性报告，经考点综合评估具备参加考试条件后，方可在考点备用隔离考场参加考试。</p>\r\n\r\n<p>　　考生进入考点时要保持安全距离，必须出示赣通码并接受体温测量，赣通码呈绿色且体温低于37.3℃方可进入考点。考生须自备口罩，除核验身份时须按要求摘除口罩外，进出考点、考场应当全程佩戴口罩，不佩戴口罩的考生不得进入考点。进入考场就座后，可以自主决定是否继续佩戴口罩；在备用隔离考场考试的考生要全程佩戴口罩。</p>\r\n\r\n<p>　　考试当天考生如有发热、咳嗽等呼吸道症状的，应立即告知考试工作人员，并配合相关部门进行综合研判和处理。因发热、咳嗽等呼吸道症状综合研判后进入备用隔离考场考试的考生，从普通考场转移至备用隔离考场(未出考点)所耽误的时间，经批准后予以补齐。考试结束后，考生要按监考员的指令有序离场，佩戴口罩，保持安全间距，不得拥挤。</p>\r\n', '2022-11-02', 7);
INSERT INTO `article` VALUES ('A20220318101702278', '国家发改委回应国际油价回落！', 'B20211130224016840', 'upfiles/20220318101657.jpeg', '是', '是', '<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; font-family: arial;\">\r\n<p>国家发展改革委根据近期国际市场油价变化情况，按照现行成品油价格形成机制，决定自2022年3月17日24时起上调成品油价格。按照国家规定，我市89号汽油（标准品）最高零售价格每吨由9985元调整为10735元，上调750元；0号柴油（标准品）每吨由8940元调整为9660元,上调720元。其它品质汽、柴油最高零售价格也相应调整。</p>\r\n</div>\r\n\r\n<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; margin-top: 22px; font-family: arial;\">\r\n<p>我市调整后的成品油最高零售价格每升分别为：89号汽油8.01元，上调0.56元；92号汽油8.64元，上调0.60元；95号汽油9.13元，上调0.64元；0号柴油8.34元，上调0.62元。成品油零售企业可在不超过汽、柴油最高零售价格的前提下，自主制定具体零售价格。</p>\r\n</div>\r\n\r\n<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; margin-top: 22px; font-family: arial;\">\r\n<p>隆众资讯分析显示，本轮是2022年第五次调价，也将迎来2022年内首次&ldquo;五连涨&rdquo;。本次调价过后，2022年成品油调价将呈现&ldquo;五涨零跌零搁浅&rdquo;的格局。</p>\r\n</div>\r\n', '2022-11-18', 4);
INSERT INTO `article` VALUES ('A20220318101823720', '粮价攀升、食品价格上涨，多国打响“粮食保卫战”', 'B20211130224016840', 'upfiles/20220318101801.jpg', '是', '否', '<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; margin-top: 22px; font-family: arial;\">\r\n<p><strong>小麦等农产品价格大涨</strong></p>\r\n</div>\r\n\r\n<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; margin-top: 22px; font-family: arial;\">\r\n<p>&ldquo;俄罗斯是全球最大的小麦出口国，乌克兰是第五大小麦出口国。它们提供了全球19%的大麦、14%的小麦和4%的玉米，占全球谷物出口的三分之一以上。&rdquo;这是联合国粮农组织提供的一组数据。</p>\r\n</div>\r\n\r\n<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; margin-top: 22px; font-family: arial;\">\r\n<p>俄乌手握&ldquo;粮袋子&rdquo;，两国冲突也给国际粮食市场扔下了一颗&ldquo;炸弹&rdquo;。3月7日，芝加哥期货交易所小麦连续合约上涨7%至每蒲式耳12.94美元。此后，小麦期货价格虽有所回落，但仍保持在高位。</p>\r\n</div>\r\n\r\n<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; margin-top: 22px; font-family: arial;\">\r\n<p>截至3月17日发稿时，芝加哥期货交易所小麦连续合约达到每蒲式耳10.57美元。自2月17日算起，小麦期货已累计上涨32.6%。</p>\r\n</div>\r\n\r\n<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; margin-top: 22px; font-family: arial;\">\r\n<p>&ldquo;俄乌冲突和西方对俄罗斯的制裁，扰乱了来自黑海地区的供应，谷物价格势将进一步跃升。&rdquo;近日高盛集团表示，航运中断、购进成本飙升以及对乌克兰新季种植前景的担忧，使得全球谷物市场势将面临1970年代以来的&ldquo;最严重冲击&rdquo;。</p>\r\n</div>\r\n\r\n<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; margin-top: 22px; font-family: arial;\">\r\n<p>此外，高盛还上调了对玉米、大豆和小麦价格的预测。玉米到夏季可能达到每蒲式耳7.75美元，大豆或达到17.5美元，小麦料达到12.5美元。</p>\r\n</div>\r\n\r\n<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; margin-top: 22px; font-family: arial;\">\r\n<p><strong>国际粮食安全&ldquo;雪上加霜&rdquo;</strong></p>\r\n</div>\r\n\r\n<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; margin-top: 22px; font-family: arial;\">\r\n<p>由于需求、农资和运输成本高企以及港口运营中断，自2020年下半年以来一路攀升的国际粮食价格于2022年2月达到了历史最高点。</p>\r\n</div>\r\n\r\n<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; margin-top: 22px; font-family: arial;\">\r\n<p>俄乌冲突爆发前，全球小麦供应已经出现紧张态势。国际谷物理事会(IGC)的数据显示，截至2021/22年度末，在全球主要小麦出口地欧盟、俄罗斯、美国、加拿大、乌克兰、阿根廷、澳大利亚和哈萨克斯坦的小麦期末库存预计为5700万吨，创下九年来的最低点。</p>\r\n</div>\r\n\r\n<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; margin-top: 22px; font-family: arial;\">\r\n<p>目前乌克兰局势造成的&ldquo;冲击波&rdquo;，已在2月粮农组织谷物价格指数上有所体现。</p>\r\n</div>\r\n\r\n<div class=\"index-module_textWrap_3ygOc \" style=\"max-width: 100%; overflow-x: visible; font-size: 16px; line-height: 24px; margin-top: 22px; font-family: arial;\">\r\n<p>该指数月环比增幅为3.0%，在领涨的粗粮中，国际玉米价格上涨5.1%，原因是南美作物状况持续引发担忧，同时乌克兰的玉米出口存在不确定性以及小麦出口价格上行。世界小麦价格上涨2.1%，主要反映出黑海港口全球供应流的不确定性。</p>\r\n</div>\r\n', '2022-11-18', 5);
COMMIT;

-- ----------------------------
-- Table structure for asks
-- ----------------------------
DROP TABLE IF EXISTS `asks`;
CREATE TABLE `asks` (
  `asksid` varchar(32) NOT NULL COMMENT '提示问题表主键编号',
  `question` varchar(50) DEFAULT NULL COMMENT '问题',
  `addtime` varchar(28) DEFAULT NULL COMMENT '创建日期',
  `memo` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`asksid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提示问题表';

-- ----------------------------
-- Records of asks
-- ----------------------------
BEGIN;
INSERT INTO `asks` VALUES ('A20211120002811874', '小学班主任姓什么', '2022-11-20', '陈');
INSERT INTO `asks` VALUES ('A20211120002929546', '母亲的名字', '2022-11-20', '秋香');
INSERT INTO `asks` VALUES ('A20211122153635257', '1+1', '2022-11-22', '11');
INSERT INTO `asks` VALUES ('A20211130223940485', '2+2', '2022-11-30', '4');
COMMIT;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `bannerid` varchar(32) NOT NULL COMMENT '网站栏目表主键编号',
  `bannername` varchar(50) DEFAULT NULL COMMENT '栏目名称',
  `addtime` varchar(28) DEFAULT NULL COMMENT '创建日期',
  `memo` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`bannerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站栏目表';

-- ----------------------------
-- Records of banner
-- ----------------------------
BEGIN;
INSERT INTO `banner` VALUES ('B20211130223957297', '校内新闻', '2022-11-30', '校内新闻');
INSERT INTO `banner` VALUES ('B20211130224003882', '校外新闻', '2022-11-30', '校外新闻');
INSERT INTO `banner` VALUES ('B20211130224008173', '体育新闻', '2022-11-30', '体育新闻');
INSERT INTO `banner` VALUES ('B20211130224016840', '娱乐新闻', '2022-11-30', '娱乐新闻');
COMMIT;

-- ----------------------------
-- Table structure for complains
-- ----------------------------
DROP TABLE IF EXISTS `complains`;
CREATE TABLE `complains` (
  `complainsid` varchar(32) NOT NULL,
  `usersid` varchar(32) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `contents` varchar(50) DEFAULT NULL,
  `addtime` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `reps` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`complainsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of complains
-- ----------------------------
BEGIN;
INSERT INTO `complains` VALUES ('C20211130233828669', 'U20211130225336248', '挺好的，不错！', '挺好的，不错！', '2022-11-30', '已回复', '感谢您的支持。');
INSERT INTO `complains` VALUES ('C20211202222738854', 'U20211130192747897', '感谢平台，学习了！', '感谢平台，学习了！', '2022-11-02', '未回复', NULL);
INSERT INTO `complains` VALUES ('C20211202225851863', 'U20211130225336248', '非常实用的新闻信息，感谢。', '非常实用的新闻信息，感谢。', '2022-11-02', '未回复', NULL);
COMMIT;

-- ----------------------------
-- Table structure for fav
-- ----------------------------
DROP TABLE IF EXISTS `fav`;
CREATE TABLE `fav` (
  `favid` varchar(32) NOT NULL COMMENT '用户收藏表主键编号',
  `usersid` varchar(32) DEFAULT NULL COMMENT '用户',
  `articleid` varchar(32) DEFAULT NULL COMMENT '新闻',
  `addtime` varchar(28) DEFAULT NULL COMMENT '收藏日期',
  PRIMARY KEY (`favid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户收藏表';

-- ----------------------------
-- Records of fav
-- ----------------------------
BEGIN;
INSERT INTO `fav` VALUES ('F20211201015448962', 'U20211130225336248', 'A20211130224042908', '2022-11-01');
INSERT INTO `fav` VALUES ('F20211202222116971', 'U20211130225336248', 'A20211202220826692', '2022-11-02');
INSERT INTO `fav` VALUES ('F20211202222121239', 'U20211130225336248', 'A20211202221329211', '2022-11-02');
INSERT INTO `fav` VALUES ('F20211202222127555', 'U20211130225336248', 'A20211202220722473', '2022-11-02');
INSERT INTO `fav` VALUES ('F20211202222701717', 'U20211130192747897', 'A20211202221329211', '2022-11-02');
INSERT INTO `fav` VALUES ('F20211202222705999', 'U20211130192747897', 'A20211202221509438', '2022-11-02');
INSERT INTO `fav` VALUES ('F20220318110522494', 'U20211130225336248', 'A20211202223004137', '2022-11-18');
COMMIT;

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `topicid` varchar(32) NOT NULL COMMENT '用户评论表主键编号',
  `usersid` varchar(32) DEFAULT NULL COMMENT '用户',
  `articleid` varchar(32) DEFAULT NULL COMMENT '新闻',
  `contents` varchar(50) DEFAULT NULL COMMENT '内容',
  `addtime` varchar(28) DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户评论表';

-- ----------------------------
-- Records of topic
-- ----------------------------
BEGIN;
INSERT INTO `topic` VALUES ('T20211201001731473', 'U20211130225336248', 'A20211130224042908', '加油！！', '2022-11-01');
INSERT INTO `topic` VALUES ('T20211201001821850', 'U20211130225336248', 'A20211130224042908', '哈哈哈哈。', '2022-11-01');
INSERT INTO `topic` VALUES ('T20211202222141868', 'U20211130225336248', 'A20211202220722473', '真厉害，加油！', '2022-11-02');
INSERT INTO `topic` VALUES ('T20211202222152362', 'U20211130225336248', 'A20211202221147752', '湖人给力啊！！', '2022-11-02');
INSERT INTO `topic` VALUES ('T20211202222648852', 'U20211130225336248', 'A20211202221329211', '学习了，榜样！', '2022-11-02');
INSERT INTO `topic` VALUES ('T20211202222720524', 'U20211130192747897', 'A20211202221329211', '给力！', '2022-11-02');
INSERT INTO `topic` VALUES ('T20211202225626921', 'U20211130225336248', 'A20211202220944192', '加油，小伙伴们！', '2022-11-02');
INSERT INTO `topic` VALUES ('T20220318110536387', 'U20211130225336248', 'A20211202223004137', 'OK！', '2022-11-18');
INSERT INTO `topic` VALUES ('T20220318110547909', 'U20211130225336248', 'A20220318101823720', '加油。。。。', '2022-11-18');
INSERT INTO `topic` VALUES ('T20220318110559471', 'U20211130225336248', 'A20220318101702278', '好吧，太难了。。。', '2022-11-18');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `usersid` varchar(32) NOT NULL COMMENT '用户表主键编号',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `realname` varchar(50) DEFAULT NULL COMMENT '姓名',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `birthday` varchar(28) DEFAULT NULL COMMENT '出生日期',
  `contact` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `asksid` varchar(32) DEFAULT NULL COMMENT '提示问题',
  `answer` varchar(50) DEFAULT NULL COMMENT '问题答案',
  `regdate` varchar(28) DEFAULT NULL COMMENT '注册日期',
  PRIMARY KEY (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES ('U20211130192747857', 'qiaoqi', '123', '乔七', '男', '2022-11-30', '13700503219', 'A20211122153635257', '11', '2022-11-30');
INSERT INTO `users` VALUES ('U20211130192747862', 'zhaoliu', '123', '赵六', '女', '2022-11-30', '18700135915', 'A20211122153635257', '11', '2022-11-30');
INSERT INTO `users` VALUES ('U20211130192747896', 'wangwu', '123', '王五', '男', '2022-11-30', '18001357404', 'A20211122153635257', '11', '2022-11-30');
INSERT INTO `users` VALUES ('U20211130192747897', 'lisi', '123', '李四', '女', '2022-11-30', '13666666666', 'A20211122153635257', '11', '2022-11-30');
INSERT INTO `users` VALUES ('U20211130225336248', 'zhangsan', '123', '张三', '男', '2022-11-30', '13999999999', 'A20211130223940485', '22', '2022-11-30');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
