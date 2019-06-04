/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : tmall

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2019-06-04 16:33:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `detail`
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `price` float(5,1) NOT NULL,
  `urllist` varchar(500) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of detail
-- ----------------------------
INSERT INTO `detail` VALUES ('1', '?????6????Huawei/??P30 Pro????????????????980??????p30pro', 'https://img.alicdn.com/imgextra/i4/2838892713/O1CN01lLPbHF1Vub3i7mLDM_!!0-item_pic.jpg_430x430q90.jp', '5488.0', 'https://img.alicdn.com/imgextra/i4/2838892713/O1CN01lLPbHF1Vub3i7mLDM_!!0-item_pic.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i4/2838892713/O1CN01lLPbHF1Vub3i7mLDM_!!0-item_pic.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i1/2838892713/O1CN015mszGy1Vub2GbscuV_!!2838892713.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i2/2838892713/O1CN01m752gx1Vub2JqDjZ3_!!2838892713.jpg_430x430q90.jpg,https://img.alicdn.com/imgextra/i1/2838892713/TB28caTktknBKNjSZKPXXX6OFXa_!!2838892713.jpg_4');

-- ----------------------------
-- Table structure for `guess`
-- ----------------------------
DROP TABLE IF EXISTS `guess`;
CREATE TABLE `guess` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(200) CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `price` float(4,0) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of guess
-- ----------------------------
INSERT INTO `guess` VALUES ('1', 'https://img.alicdn.com/bao/uploaded/i1/2838892713/O1CN01PyF7mL1Vub3dzKkrt_!!2838892713.jpg_400x400q60.jpg', 'Huawei/华为P30 Pro曲面屏超感光徕卡四摄变焦双景录像980芯片智能手机p30pro', '5488');
INSERT INTO `guess` VALUES ('2', 'https://img.alicdn.com/bao/uploaded/i2/3079263591/O1CN01twzaGc1cOinIs18T0_!!3079263591.jpg_400x400q60.jpg', 'Gree/格力KFR-35GW/NhBaD3大1.5匹空调挂机定频冷暖定速家用风采', '2849');
INSERT INTO `guess` VALUES ('3', 'https://img.alicdn.com/bao/uploaded/i2/420722466/O1CN01OJxjop1U5TE6rT1o4_!!2-item_pic.png_400x400q60.jpg', '科沃斯扫地机器人DJ35智能家用全自动吸小米粒洗擦地拖地扫一体机', '1899');
INSERT INTO `guess` VALUES ('4', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1oYbJgmzqK1RjSZFpwu1kSXXa.png_400x400q60.jpg', 'OLAY淡斑小白瓶Prox亮洁晳颜祛斑面部精华液美白', '335');
INSERT INTO `guess` VALUES ('5', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1v0VmKNnaK1RjSZFBXXcW7VXa.png_400x400q60.jpg', '资生堂红腰子精华傲娇新红妍精华露30ml*2 维稳修护', '1180');
INSERT INTO `guess` VALUES ('6', 'https://img.alicdn.com/bao/uploaded/i1/1714128138/O1CN01bmhB5029zFiA0DR3D_!!0-item_pic.jpg_400x400q60.jpg', 'Xiaomi/小米 小米电视4A 65英寸4k超清智能网络平板电视机6070', '2849');
INSERT INTO `guess` VALUES ('7', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1e_jnvRjTBKNjSZFwwu3G4XXa.png_400x400q60.jpg', '雅诗兰黛小棕瓶抗蓝光眼霜 特润修护精华眼霜细黑眼圈', '510');
INSERT INTO `guess` VALUES ('8', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB12r4UoDmWBKNjSZFBwu0xUFXa.png_400x400q60.jpg', '亿健精灵ELF跑步机家用款电动走步超静音折叠小型室内健身房专用', '1699');
INSERT INTO `guess` VALUES ('9', 'https://img.alicdn.com/bao/uploaded/i3/TB1ZBpnNpXXXXXzaXXXXXXXXXXX_!!0-item_pic.jpg_400x400q60.jpg', 'Haier/海尔 EG10014B39GU1 10公斤kg蓝晶变频滚筒全自动洗衣机', '2699');
INSERT INTO `guess` VALUES ('10', 'https://img.alicdn.com/bao/uploaded/i3/2360209412/O1CN01tSseGn2JOkH7ZOIMO_!!2-item_pic.png_400x400q60.jpg', '兰蔻粉水清滢柔肤水400ml爽肤水 补水保湿舒缓滋润', '420');
INSERT INTO `guess` VALUES ('11', 'https://img.alicdn.com/bao/uploaded/i1/196993935/O1CN01QshgZw1ewH2Bd4JEp_!!2-item_pic.png_400x400q60.jpg', '女装 高腰宽腿直筒牛仔裤(水洗产品) 422014', '299');
INSERT INTO `guess` VALUES ('12', 'https://img.alicdn.com/bao/uploaded/i1/2424298091/O1CN01vbrZk029dj5BF7ZZM_!!2-item_pic.png_400x400q60.jpg', 'LA MER海蓝之谜鎏光焕变气垫粉底液防晒保湿补水', '1000');
INSERT INTO `guess` VALUES ('13', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1LFGsXYus3KVjSZKbXXXqkFXa.png_400x400q60.jpg', '女装 AIRism防紫外线网眼连帽运动开衫(长袖) 413363 优衣库', '199');
INSERT INTO `guess` VALUES ('14', 'https://img.alicdn.com/bao/uploaded/i4/2064892827/TB2kBm8quSSBuNjy0FlXXbBpVXa_!!2064892827.png_400x400q60.jpg', '雅诗兰黛唇膏口红 520告白唇膏 持久滋润保湿', '810');
INSERT INTO `guess` VALUES ('15', 'https://img.alicdn.com/bao/uploaded/i2/470168984/O1CN01x3y0ly2GEijtomH9y_!!470168984.jpg_400x400q60.jpg', 'Haier/海尔 BCD-470WDPG 十字对开变频静音节能干湿分储家用冰箱', '4799');
INSERT INTO `guess` VALUES ('16', 'https://img.alicdn.com/bao/uploaded/i2/2360209412/O1CN01zNtTgh2JOkHB5q1oH_!!2-item_pic.png_400x400q60.jpg', '兰蔻全新3D大眼精华20ml 眼部精华眼霜滋养睫毛淡眼纹', '680');
INSERT INTO `guess` VALUES ('17', 'https://img.alicdn.com/bao/uploaded/i4/1669409267/O1CN016nQfZ92IKKqdU363U_!!1669409267.jpg_400x400q60.jpg', 'Apple/苹果 7.9 英寸iPad mini平板电脑2019新款mini第5代掌上电脑 支持Apple Pencil', '3399');
INSERT INTO `guess` VALUES ('18', 'https://img.alicdn.com/bao/uploaded/i1/2424298091/O1CN01NVQhdD29dj65m5BMk_!!2-item_pic.png_400x400q60.jpg', 'LA MER海蓝之谜修护精华面霜补水保湿滋润舒缓', '1450');
INSERT INTO `guess` VALUES ('19', 'https://img.alicdn.com/bao/uploaded/i3/430490406/O1CN01B1zLYL1ErzJLAmxu7_!!0-item_pic.jpg_400x400q60.jpg', '全棉时代 婴儿棉柔巾纯棉新生儿干湿两用巾 棉柔巾非湿巾小包18包', '243');
INSERT INTO `guess` VALUES ('20', 'https://img.alicdn.com/bao/uploaded/i1/667454208/O1CN01SVAiZp1gxJB00iHcZ_!!667454208.jpg_400x400q60.jpg', '方太JQD2T+HT8BE家用抽油烟机套餐燃气灶煤气灶烟灶烟机灶具套装', '4899');
INSERT INTO `guess` VALUES ('21', 'https://img.alicdn.com/bao/uploaded/i3/2248304671/O1CN01rBveSu1kNMXv7euJf_!!2-item_pic.png_400x400q60.jpg', '欧舒丹樱花马鞭草沐浴露身体乳夏清洁套装朱一龙同款', '360');
INSERT INTO `guess` VALUES ('22', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1EBhPzxGYBuNjy0Fnwu05lpXa.png_400x400q60.jpg', '阿芙荷荷巴油/霍霍巴油去黑头jojoba精油基础油护肤脸部面部按摩', '98');
INSERT INTO `guess` VALUES ('23', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1qdPht2ImBKNjSZFlwu343FXa.png_400x400q60.jpg', '阿芙马鞭草酮迷迭香马迷纯露闭口粉刺毛孔收缩堵塞疏通爽肤喷雾去', '99');
INSERT INTO `guess` VALUES ('24', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1f8DDtkUmBKNjSZFOwu1b2XXa.png_400x400q60.jpg', 'DJI 大疆 御Mavic 2 新一代便携可折叠4K无人机 航拍旗舰', '7888');
INSERT INTO `guess` VALUES ('25', 'https://img.alicdn.com/bao/uploaded/i2/725677994/O1CN01dVPHEN28vIcs3mk18_!!725677994.png_400x400q60.jpg', '维达抽纸超韧3层M码120抽24包整箱装 中规格卫生纸巾新旧交替', '89');
INSERT INTO `guess` VALUES ('26', 'https://img.alicdn.com/bao/uploaded/i3/415670368/O1CN01yM3Uej1EaaHeQK8bC_!!0-item_pic.jpg_400x400q60.jpg', '新品九阳不用手洗破壁机静音料理全自动家用多功能养生豆浆机Y88', '3599');
INSERT INTO `guess` VALUES ('27', 'https://img.alicdn.com/bao/uploaded/i1/196993935/O1CN012UL99w1ewH142uXNC_!!2-item_pic.png_400x400q60.jpg', '女装 圆领T恤(短袖) 414443 优衣库UNIQLO', '79');
INSERT INTO `guess` VALUES ('28', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1UYdCkmrqK1RjSZK9XXXyypXa.png_400x400q60.jpg', '维达卷纸蓝色经典4层140克27卷整箱装有芯卷纸卫生纸巾 新旧交替', '53');
INSERT INTO `guess` VALUES ('29', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB14EOTDbSYBuNjSspiwu0NzpXa.png_400x400q60.jpg', '美的电风扇客厅遥控大风落地扇家用宿舍静音定时立式台式转页电扇', '239');
INSERT INTO `guess` VALUES ('30', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB10gI5h7voK1RjSZFDwu0Y3pXa.png_400x400q60.jpg', '全新Kindle Paperwhite4 亚马逊电子书阅读器 KPW4 纯平电子墨水屏 电纸书 开学季文具 泡面盖子', '998');
INSERT INTO `guess` VALUES ('31', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB13txUkbrpK1RjSZTEXXcWAVXa.png_400x400q60.jpg', '纪梵希明星四宫格散粉 定妆粉 细腻粉质 控油持妆', '535');
INSERT INTO `guess` VALUES ('32', 'https://img.alicdn.com/bao/uploaded/i3/725677994/O1CN01nW1Xpu28vIeWtYZk1_!!725677994.jpg_400x400q60.jpg', '花王日本进口纸尿裤XL44片 超薄透气男女通用婴儿尿不湿', '170');
INSERT INTO `guess` VALUES ('33', 'https://img.alicdn.com/bao/uploaded/i1/196993935/O1CN01y96Dmy1ewH3CSj4ep_!!2-item_pic.png_400x400q60.jpg', '女装 便携式防紫外线连帽外套 414188 优衣库UNIQLO', '249');
INSERT INTO `guess` VALUES ('34', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1eA8OHVGWBuNjy0Fbwu24sXXa.png_400x400q60.jpg', '施华洛世奇SPARKLING DC跃动晶彩项链锁骨链女首饰 送女友礼物', '1290');
INSERT INTO `guess` VALUES ('35', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1oMYTyFzqK1RjSZFoXXbfcXXa.png_400x400q60.jpg', '欧莱雅安瓶面膜女玻尿酸原液精华液补水保湿提亮淡细纹', '349');
INSERT INTO `guess` VALUES ('36', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB17mGzVSzqK1RjSZFHXXb3CpXa.png_400x400q60.jpg', 'Apple/苹果 13.3英寸 MacBook Air 128G笔记本电脑轻薄便携学生电脑手提商务办公笔记本', '5688');
INSERT INTO `guess` VALUES ('37', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1dD3lvborBKNjSZFjwu3_SpXa.png_400x400q60.jpg', '网红坚果组合休闲小吃食品超大一箱批发', '49');
INSERT INTO `guess` VALUES ('38', 'https://img.alicdn.com/bao/uploaded/i1/2129855716/O1CN01fcVtG41s5yRARnf92_!!2-item_pic.png_400x400q60.jpg', 'Skechers斯凯奇女鞋杨紫同款熊猫鞋运动凉鞋魔术贴沙滩鞋88888181', '399');
INSERT INTO `guess` VALUES ('39', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1pYKAVMHqK1RjSZFkXXX.WFXa.png_400x400q60.jpg', '奥克斯手持挂烫机家用小型便携式电熨斗迷你烫斗蒸汽刷旅行熨烫机', '89');
INSERT INTO `guess` VALUES ('40', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB195XYv4TpK1RjSZFGXXcHqFXa.png_400x400q60.jpg', '飞科剃须刀电动男士刮胡刀全身水洗智能充电式胡须刀正品刮胡子刀', '99');
INSERT INTO `guess` VALUES ('41', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1tbpTkwZC2uNjSZFnwu1xZpXa.png_400x400q60.jpg', '美的挂烫机家用蒸汽小型手持熨斗挂立式烫衣机衣服熨烫机熨衣服机', '179');
INSERT INTO `guess` VALUES ('42', 'https://img.alicdn.com/bao/uploaded/i1/2224996251/O1CN01FyGZfh1w30KughC8Q_!!2-item_pic.png_400x400q60.jpg', '资生堂蓝胖子防晒乳50ml  防紫外线 新艳阳夏防晒霜', '380');
INSERT INTO `guess` VALUES ('43', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB18zGqSY2pK1RjSZFsXXaNlXXa.png_400x400q60.jpg', 'Nike 耐克官方 KYRIE 5 EP男子篮球鞋  AO2919', '999');
INSERT INTO `guess` VALUES ('44', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1N8YqVhnaK1RjSZFBXXcW7VXa.png_400x400q60.jpg', '?绝世澳洲家庭原肉整切牛排套餐黑椒10片儿童新鲜菲力西冷眼肉', '198');
INSERT INTO `guess` VALUES ('45', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1rjJMVCzqK1RjSZPcXXbTepXa.png_400x400q60.jpg', '迪卡侬防晒服男外套薄衫防紫外线皮肤衣女防晒透气户外防晒衣QUFH', '149');
INSERT INTO `guess` VALUES ('46', 'https://img.alicdn.com/bao/uploaded/i4/890482188/O1CN01mM31Hs1S297KMc9z9_!!2-item_pic.png_400x400q60.jpg', 'Nike 耐克官方NIKE AIR FORCE 1 \'07男子运动鞋 315122', '749');
INSERT INTO `guess` VALUES ('47', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1E4vBoWAoBKNjSZSywu1HAVXa.png_400x400q60.jpg', '美的净水器家用直饮自来水过滤器反渗透RO净水机花生官方旗舰店', '1998');
INSERT INTO `guess` VALUES ('48', 'https://img.alicdn.com/bao/uploaded/i2/2973966816/O1CN01crUs9020Dm4fBdowl_!!2973966816.jpg_400x400q60.jpg', '美的电热水壶家用304不锈钢正品电热烧水壶自动断电大容量开水壶', '79');
INSERT INTO `guess` VALUES ('49', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1p0x2mxjaK1RjSZKzXXXVwXXa.png_400x400q60.jpg', '网红早餐营养食品小零食蛋糕点心', '29');
INSERT INTO `guess` VALUES ('50', 'https://img.alicdn.com/bao/uploaded/i2/2616100841/O1CN01rUBPGQ1I5DcYEP0x3_!!2-item_pic.png_400x400q60.jpg', '美的空气净化器家用去除甲醛二手烟pm2.5雾霾尘卧室客厅净化机E33', '1998');
INSERT INTO `guess` VALUES ('51', 'https://img.alicdn.com/bao/uploaded/i2/2088151283/TB2XEewiYYI8KJjy0FaXXbAiVXa_!!2088151283.png_400x400q60.jpg', '苏泊尔电饭煲家用3L迷你电饭锅小型智能5官方旗舰店6宿舍1-2人3-4', '189');
INSERT INTO `guess` VALUES ('52', 'https://img.alicdn.com/bao/uploaded/i2/196993935/O1CN01s5It251ewH0z9xLdw_!!2-item_pic.png_400x400q60.jpg', '女装 麻棉打褶连衣裙(短袖) 418160 优衣库', '399');
INSERT INTO `guess` VALUES ('53', 'https://img.alicdn.com/bao/uploaded/i1/1911588863/O1CN01bCfDlz2FLIrPEHkEU_!!1911588863.jpg_400x400q60.jpg', 'Braun/博朗 MQ5025多功能小型料理机婴儿辅食手持家用搅拌料理棒', '569');
INSERT INTO `guess` VALUES ('54', 'https://img.alicdn.com/bao/uploaded/i3/3570503317/O1CN01Ulwk2W1aNEGXh7xuj_!!2-item_pic.png_400x400q60.jpg', '纪梵希心无禁忌香水 “偷欢”香水黑白香调 创意突破', '615');
INSERT INTO `guess` VALUES ('55', 'https://img.alicdn.com/bao/uploaded/i3/2527740099/O1CN01NftGqE1CbNhv1dqA6_!!2527740099.jpg_400x400q60.jpg', '苏泊尔榨汁机家用全自动水果小型多功能迷你便携式学生电动榨汁杯', '99');
INSERT INTO `guess` VALUES ('56', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1lv3_h4YaK1RjSZFnwu180pXa.png_400x400q60.jpg', '广西百香果热带水果新鲜西番莲鸡蛋果现摘5斤精装大红果酸爽香甜', '49');
INSERT INTO `guess` VALUES ('57', 'https://img.alicdn.com/bao/uploaded/i4/201749140/O1CN01J1sYnu2HOAXXj2mMC_!!2-item_pic.png_400x400q60.jpg', '美的空调扇制冷器小空调冷风机家用迷你水空调冷风电风扇制冷机', '659');
INSERT INTO `guess` VALUES ('58', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1C0fcDHSYBuNjSspiwu0NzpXa.png_400x400q60.jpg', '小白熊恒温调奶器暖奶器旗舰店婴儿泡奶粉机热水壶冲奶器温奶器', '299');
INSERT INTO `guess` VALUES ('59', 'https://img.alicdn.com/bao/uploaded/i4/1819984936/TB2IqS0mOqAXuNjy1XdXXaYcVXa_!!1819984936.jpg_400x400q60.jpg', '佳能CP1300小型手机照片打印机便携式热升华迷你家用无线彩色相片冲印拍立得1200手账洗照片机神器相机打印机', '798');
INSERT INTO `guess` VALUES ('60', 'https://img.alicdn.com/bao/uploaded/i3/415670368/O1CN01udRYKy1EaaFkE1kH9_!!415670368.jpg_400x400q60.jpg', '九阳破壁豆浆机小型免过滤家用全自动多功能智能官方旗舰店正品Q8', '899');
INSERT INTO `guess` VALUES ('61', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1l4lFaaWs3KVjSZFxXXaWUXXa.png_400x400q60.jpg', 'YSL圣罗兰黑管唇釉 豆沙色407唇蜜口红唇彩番茄红416', '320');
INSERT INTO `guess` VALUES ('62', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1ohn9UmzqK1RjSZFLXXcn2XXa.png_400x400q60.jpg', '飞科电吹风机家用理发店专用风力大功率负离子不伤发廊静音吹风筒', '69');
INSERT INTO `guess` VALUES ('63', 'https://img.alicdn.com/bao/uploaded/i3/196993935/O1CN01fqerFy1ewH1AKiSNo_!!2-item_pic.png_400x400q60.jpg', '男装 圆领T恤(短袖) 414351 优衣库UNIQLO', '99');
INSERT INTO `guess` VALUES ('64', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1KsgzV7voK1RjSZFDXXXY3pXa.png_400x400q60.jpg', '美宝莲眼唇卸妆液脸部眼部唇部卸妆油三合一卸妆水女温和清洁正品', '118');
INSERT INTO `guess` VALUES ('65', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1omJ9UFzqK1RjSZFvXXcB7VXa.png_400x400q60.jpg', '好太太电动晾衣架遥控升降智能自动晒衣架家用四杆金属外壳晾衣机', '1459');
INSERT INTO `guess` VALUES ('66', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1RYlCcfc3T1VjSZPfXXcWHXXa.png_400x400q60.jpg', '爱丽思收纳箱抽屉式衣柜内收纳盒家用塑料整理箱衣服爱丽丝储物箱', '29');
INSERT INTO `guess` VALUES ('67', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1MFAWi9rqK1RjSZK9XXXyypXa.png_400x400q60.jpg', '格力除湿机家用静音抽湿机DH40EF 大功率地下室吸湿器干燥机防潮', '3380');
INSERT INTO `guess` VALUES ('68', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1YryVCx1YBuNjy1zcwu2NcXXa.png_400x400q60.jpg', 'Danielwellington 丹尼尔惠灵顿DW手表女28mm简约时尚女表', '1290');
INSERT INTO `guess` VALUES ('69', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1Iv7OAeOSBuNjy0Fdwu2DnVXa.png_400x400q60.jpg', '周大福字母转运珠足金黄金吊坠计价工费48元F多款', '489');
INSERT INTO `guess` VALUES ('70', 'https://img.alicdn.com/bao/uploaded/i3/201749140/O1CN01At1f0Q2HOAYv7SLiA_!!0-item_pic.jpg_400x400q60.jpg', '美的燃气热水器家用天然气13升16l变频恒温即热强排式H1S 可选12l', '1099');
INSERT INTO `guess` VALUES ('71', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1h7PGiMHqK1RjSZFEwu3GMXXa.png_400x400q60.jpg', 'Canon/佳能 PowerShot G7 X Mark II', '3999');
INSERT INTO `guess` VALUES ('72', 'https://img.alicdn.com/bao/uploaded/i4/3570503317/O1CN010cFqUg1aNEFQ6jrBj_!!2-item_pic.png_400x400q60.jpg', '纪梵希精品限量彩妆套装全新上市 明星散粉小羊皮304', '970');
INSERT INTO `guess` VALUES ('73', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1_wp9CY5YBuNjSspowu2eNFXa.png_400x400q60.jpg', 'KUB可优比椰棕婴儿床棕垫宝宝床垫儿童乳胶床垫冬夏两用可定做', '149');
INSERT INTO `guess` VALUES ('74', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1vI1aC21TBuNjy0Fjwu1jyXXa.png_400x400q60.jpg', 'KUB可优比婴儿凉席冰丝新生儿宝宝透气婴儿床凉席儿童幼儿园夏季', '68');
INSERT INTO `guess` VALUES ('75', 'https://img.alicdn.com/bao/uploaded/i4/2527740099/O1CN01XMGqsT1CbNinqM1FS_!!0-item_pic.jpg_400x400q60.jpg', '苏泊尔电磁炉火锅家用智能正品学生电池炉灶特价炒菜官方旗舰店', '199');
INSERT INTO `guess` VALUES ('76', 'https://img.alicdn.com/bao/uploaded/i2/3704074333/O1CN01z08A7s1hsYfKmbPsa_!!2-item_pic.png_400x400q60.jpg', '美的无线吸尘器家用小型大吸力超静音强力除螨无绳吸尘器手持式P5', '1599');
INSERT INTO `guess` VALUES ('77', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1q6WkX8iE3KVjSZFMXXbQhVXa.png_400x400q60.jpg', '男装 快干POLO衫(短袖) 413440 优衣库UNIQLO', '129');
INSERT INTO `guess` VALUES ('78', 'https://img.alicdn.com/bao/uploaded/i4/883072941/TB2SGIldh6I8KJjSszfXXaZVXXa_!!883072941.jpg_400x400q60.jpg', 'Haier/海尔 EC6002-MC3热水器电家用60升速热卫生间储水小型洗澡', '1199');
INSERT INTO `guess` VALUES ('79', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1VzqxoQUmBKNjSZFOwu1b2XXa.png_400x400q60.jpg', 'babycare多功能婴儿背带 宝宝前抱式腰凳新生儿四季通用抱娃神器', '248');
INSERT INTO `guess` VALUES ('80', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1DiV3BhuTBuNkHFNRwu39qpXa.png_400x400q60.jpg', 'casio旗舰店G-SHOCK运动男表GA-110GB黑金卡西欧官方正品', '1490');
INSERT INTO `guess` VALUES ('81', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1MmzKVkvoK1RjSZFNXXcxMVXa.png_400x400q60.jpg', '山东烟台大樱桃新鲜水果包邮当季应车厘子2斤5车里子10', '99');
INSERT INTO `guess` VALUES ('82', 'https://img.alicdn.com/bao/uploaded/i3/2641868119/O1CN01iPuzL129qYBizWHHE_!!2641868119.jpg_400x400q60.jpg', '苏泊尔电饼铛电饼档家用双面加热烙饼锅煎饼机称新款加深加大正品', '169');
INSERT INTO `guess` VALUES ('83', 'https://img.alicdn.com/bao/uploaded/i4/2088151283/O1CN01Q3hW691LLed069ZUu_!!2-item_pic.png_400x400q60.jpg', '苏泊尔电烤箱家用烘焙小型烤箱多功能全自动蛋糕35L升大容量正品', '339');
INSERT INTO `guess` VALUES ('84', 'https://img.alicdn.com/bao/uploaded/i4/890482188/O1CN01jWuctN1S297R0nZiV_!!2-item_pic.png_400x400q60.jpg', 'Nike 耐克官方 NIKE FREE RN 5.0男子运动鞋 AQ1289', '899');
INSERT INTO `guess` VALUES ('85', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1F_g3VSzqK1RjSZFLXXcn2XXa.png_400x400q60.jpg', '女装 薄型V领针织开衫(长袖) 413634 优衣库UNIQLO', '199');
INSERT INTO `guess` VALUES ('86', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1fxI_VCzqK1RjSZFpXXakSXXa.png_400x400q60.jpg', '可优比婴儿睡袋夏季儿童防踢被四季通用宝宝分腿纱布睡袋春秋薄款', '128');
INSERT INTO `guess` VALUES ('87', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB16YO3pkUmBKNjSZFOwu1b2XXa.png_400x400q60.jpg', '美的除螨仪家用床上除螨吸尘器除螨虫神器官方旗舰店紫外线除螨仪', '399');
INSERT INTO `guess` VALUES ('88', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1UEEBpAomBKNjSZFqwu0tqVXa.png_400x400q60.jpg', '飞科理发器电推剪充电式电推子成人婴儿童剃发电动头发剃头刀家用', '69');
INSERT INTO `guess` VALUES ('89', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1oFP1X3mH3KVjSZKzXXb2OXXa.png_400x400q60.jpg', '男装 EZY九分裤 413171 优衣库UNIQLO', '199');
INSERT INTO `guess` VALUES ('90', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1uhMkahiH3KVjSZPfXXXBiVXa.png_400x400q60.jpg', '新品朱一龙同款膳魔师保温杯花系列运动水杯玻璃杯花茶杯冷水壶', '365');
INSERT INTO `guess` VALUES ('91', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1Jf_QVNjaK1RjSZKzXXXVwXXa.png_400x400q60.jpg', 'YSL圣罗兰明彩轻垫粉底液 羽毛气垫墨水气垫遮瑕星钻', '510');
INSERT INTO `guess` VALUES ('92', 'https://img.alicdn.com/bao/uploaded/i1/820521956/O1CN01VmrGYn1QJtDoh3ksY_!!2-item_pic.png_400x400q60.jpg', 'KUB可优比实木婴儿床儿新生拼接大床摇篮床多功能宝宝床bb床', '598');
INSERT INTO `guess` VALUES ('93', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1WZ4OxiAnBKNjSZFvwu1TKXXa.png_400x400q60.jpg', '越南芒果新鲜水果包邮青芒当季玉芒甜心芒大整带箱10斤', '39');
INSERT INTO `guess` VALUES ('94', 'https://img.alicdn.com/bao/uploaded/i2/859230932/O1CN011IktbLf2a40xo1E_!!0-item_pic.jpg_400x400q60.jpg', 'SIEMENS/西门子 SC454B01AC 进口嵌入式洗碗机全自动家用洗碗机', '6599');
INSERT INTO `guess` VALUES ('95', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1QJcnS3TqK1RjSZPhXXXfOFXa.png_400x400q60.jpg', 'FILA 斐乐官方 女子短袖T恤 2019夏季新款时尚运动针织短袖衫女装', '389');
INSERT INTO `guess` VALUES ('96', 'https://img.alicdn.com/bao/uploaded/i3/2088151283/TB2tm5qoScqBKNjSZFgXXX_kXXa_!!2088151283.jpg_400x400q60.jpg', '苏泊尔养生壶家用玻璃电全自动加厚煮茶壶煮茶器多功能养身烧水壶', '249');
INSERT INTO `guess` VALUES ('97', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1RWV3XUGF3KVjSZFmXXbqPXXa.png_400x400q60.jpg', '欧莱雅男士护肤品套装水能保湿补水面霜水乳爽肤水男士洗面奶正品', '199');
INSERT INTO `guess` VALUES ('98', 'https://img.alicdn.com/bao/uploaded/i3/2088151283/TB23fxvi4TI8KJjSspiXXbM4FXa_!!2088151283.png_400x400q60.jpg', '苏泊尔电压力锅家用智能5L高压饭煲1官方2特价3旗舰店4正品5人6-8', '399');
INSERT INTO `guess` VALUES ('99', 'https://img.alicdn.com/bao/uploaded/i1/746866993/O1CN01mVGLsc21WqBCAfnnb_!!2-item_pic.png_400x400q60.jpg', 'Vans范斯官方正品 黑色侧边条纹低帮女士运动帆布鞋', '465');
INSERT INTO `guess` VALUES ('100', 'https://img.alicdn.com/bao/uploaded/i3/725677994/TB2_nMIr3aTBuNjSszfXXXgfpXa_!!725677994.png_400x400q60.jpg', '威露士衣物家居消毒液1Lx3 送3支60ml便携装合3.18L配洗衣液使用', '99');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `sid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `pass` varchar(16) NOT NULL,
  `tel` int(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', 'yan', '7c4a8d09ca3762af', '2147483647', '3048879987@qq.com');
