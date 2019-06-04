//放大镜效果  

// 导入页头和页尾
;
(function($) {
    $(".header").load("header_nav.html"); // 引入头部html
    $(".foot1").load("footer1.html"); // 引入尾部第一部分html
    $(".foot2").load("footer2.html"); // 引入尾部第二部分html
})(jQuery);

// 数据渲染
;
(function($) {
    class details {
        constructor() {
            this.$spic = $('#smallPic li'); //小图片的父盒子
            this.$bpic = $('.left_pic img'); //大图片
            this.$piclist = $('#smallPic'); // 小图片组
            this.$title = $('.intro_name h1') //标题描述
            this.$price = $('.intro_sales .price'); //价格
            this.$phpUrl = 'http://10.31.161.20/Tmall/php/';
        }

        init() {
                var _this = this;
                var $sid = location.search.substring(1).split('=')[1];

                $.ajax({
                    url: this.$phpUrl + 'oneData.php',
                    data: {
                        sid: $sid
                    },
                    dataType: 'json',
                    success: function(data) {
                        _this.$spic.find('img').attr('src', data.picurl); //给小图片设置地址
                        _this.$spic.find('img').attr('sid', data.sid); //给小图片设置sid
                        _this.$bpic.attr('src', data.picurl); //给大图片设置地址
                        _this.$title.html(data.title); //标题描述
                        _this.$price.html(data.price); //价格

                        // 小图
                        var liStr = '';
                        var urlArr = data.piclist.split(',');
                        if (urlArr[0] != '') {
                            $.each(urlArr, function(index, value) {
                                liStr += `<li><img src=${value}></li>`;
                            });
                            _this.$picList.html(liStr);
                        }
                        // 计算ul宽度
                        var liWidth = _this.$piclist.find("li").outerWidth(true);
                        _this.$piclist.width(liWidth * urlArr.length);
                    }
                });
            }
            // 发送接收数据
    }
    new details().init();
})(jQuery);



//放大镜效果
;
(function() {

    class scale {
        constructor() {
            this.spic = $('.left_pic');
            this.bpic = $('.big_fang img');
            this.sf = $('.sm_fang');
            this.bf = $('.big_fang');
            this.list = $('#smallPic li');
            this.ul = $('#smallPic');
        }
        init() {
            let _this = this;
            this.spic.hover(function() {
                _this.over();
            }, function() {
                _this.out();
            });

            this.list.on('click', function() {
                _this.liclick(this); //this:当前操作的li元素
            });
        }
        over() {
            let _this = this;
            this.sf.css('display', 'block');
            this.bf.css('display', 'block');
            //计算小放的尺寸和比例
            this.sf.width(this.spic.width() * this.bf.width() / this.bpic.width());
            this.sf.height(this.spic.height() * this.bf.height() / this.bpic.height());
            this.bili = this.bpic.width() / this.spic.width();
            this.spic.on('mousemove', function(e) {
                _this.move(e);
            });
        }
        out() {
            this.sf.css('display', 'none');
            this.bf.css('display', 'none');
        }
        move(e) {
            let l = e.pageX - this.spic.offset().left - this.sf.width() / 2;
            let t = e.pageY - this.spic.offset().top - this.sf.height() / 2;
            if (l <= 0) {
                l = 0
            } else if (l >= this.spic.width() - this.sf.width()) {
                l = this.spic.width() - this.sf.width()
            }

            if (t <= 0) {
                t = 0
            } else if (t >= this.spic.height() - this.sf.height()) {
                t = this.spic.height() - this.sf.height()
            }
            this.sf.css({
                left: l,
                top: t
            });
            this.bpic.css({
                left: -this.bili * l,
                top: -this.bili * t
            })
        }
        liclick(li) {
            let $imgurl = $(li).find('img').attr('src');
            this.spic.find('img').attr('src', $imgurl);
            this.bpic.attr('src', $imgurl);
        }


    }

    new scale().init();


})(jQuery);