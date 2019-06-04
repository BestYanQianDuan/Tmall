// 导入页头和页尾
;
(function($) {
    $(".header_nav").load("header_nav.html"); // 引入头部html
    $(".foot1").load("footer1.html"); // 引入尾部第一部分html
    $(".foot2").load("footer2.html"); // 引入尾部第二部分html
})(jQuery);


//顶部悬浮
;
(function($) {
    $(window).on('scroll', function() {
        var $top = $(window).scrollTop();
        console.log($top);
        if ($top >= 700) {
            $('.top_bar').stop(true).animate({
                top: 0
            });
        } else {
            $('.top_bar').stop(true).animate({
                top: -50
            });
        }
    });
})(jQuery);

/*楼层监听  开始*/
;
(function($) {

    var $loutinav = $('.left_bar');
    var $loutiLi = $('.left_bar li');
    var $louceng = $('.louceng');
    var $totop = $('.nav_back')

    //添加滚轮事件，显示隐藏楼梯导航
    $(window).on('scroll', function() {
        var $top = $(window).scrollTop(); //滚动条的距离
        if ($top >= 800) {
            $loutinav.show();
        } else {
            $loutinav.hide();
        }

        //拖动滚动条，对应的楼梯添加类名，楼梯到了那块区域。
        $louceng.each(function(index, element) {
            var $loucentTop = $(element).offset().top; //每个楼层的top值。
            if ($loucentTop > $top - 300) {
                $loutiLi.removeClass('active'); //每次触发滚轮事件，移除所有楼梯的类。
                $loutiLi.eq(index).addClass('active');
                return false; //遍历一次，终止循环。
            }
        });

    });

    //点击楼梯导航,楼层跳到对应的位置。

    $loutiLi.on('click', function() {
        //$(this).index():当前点击的楼梯的索引。
        $(this).addClass('active').siblings().removeClass('active'); //当前的元素添加类，其他的兄弟元素移除类。
        var $top = $louceng.eq($(this).index()).offset().top;
        //document.documentElement.scrollTop
        //document.body.scrollTop
        $('html,body').animate({ //赋值注意内部的属性。
            scrollTop: $top
        });
    });

    //回到顶部
    $totop.on('click', function() {
        $('html,body').animate({ //赋值注意内部的属性。
            scrollTop: 0
        });
    });


})(jQuery);

/*楼层监听  结束*/


/*轮播图  开始 */
;
(function($) {
    class Silder {
        constructor() {
                this.$silderBox = $(".main_banner"); //轮播图盒子
                this.$olBtns = $(".slider_list li"); //小点
                this.$pics = $(".banner_pic img"); //图片
                this.$left = $("#btn_left"); //左箭头按钮
                this.$right = $("#btn_right"); //右箭头按钮
                this.timer = null; //定时器
                this.num = 0; //存放索引
            }
            // 初始化方法
        init() {
                var _this = this;
                // 自动轮播
                this.autoplay();
                // 鼠标移入关闭自动轮播显示按钮、鼠标移出开启自动轮播隐藏按钮
                this.$silderBox.on("mouseover", function() {
                    clearInterval(_this.timer);
                    _this.btnshow();
                });
                this.$silderBox.on("mouseout", function() {
                    _this.autoplay();
                    _this.btnhide();
                });
                // 小圆点控制
                this.$olBtns.on('mouseover', function() {
                    _this.num = $(this).index();
                    _this.imgChange();
                });
                //箭头添加事件
                this.$left.on('click', function() {
                    _this.leftclick();
                });
                this.$right.on('click', function() {
                    _this.rightclick();
                });
            }
            //按钮显示和隐藏
        btnshow() {
            this.$left.show();
            this.$right.show();

        };

        btnhide() {
            this.$left.hide();
            this.$right.hide();

        };

        //箭头事件
        rightclick() {
            this.num++;
            this.imgChange();
        }


        leftclick() {
                this.num--;
                this.imgChange();
            }
            // 图片切换
        imgChange() {
                // 控制索引范围
                if (this.num < 0) {
                    this.num = this.$olBtns.length - 1;
                } else if (this.num > this.$olBtns.length - 1) {
                    this.num = 0;
                }
                // 控制样式
                this.$olBtns.eq(this.num).addClass('selected').siblings().removeClass('selected');
                this.$pics.eq(this.num).show().siblings().hide();
            }
            //自动轮播
        autoplay() {
            var _this = this;
            this.timer = setInterval(function() {
                _this.num++;
                _this.imgChange();
            }, 3000);
        }
    }
    new Silder().init();
})(jQuery);



/*轮播图  结束*/


/*猜你喜欢板块数据渲染 开始*/
;
(function($) {
    $.ajax({
        url: 'http://10.31.161.20/work/Tmall/php/likedata.php',
        success: function(data) {
            var arrdata = JSON.parse(data);
            var $html = '';
            $.each(arrdata, function(index, value) {
                $html += `
                <li class="content_item ">
                <a class="card_item" href="http://10.31.161.20/work/Tmall/src/details.html">
                    <div class="item_pic">
                        <img src="${value.url}" width="100%">
                    </div>

                    <div class="item_info">
                        <span class="item_desc">
                            <em class="item_name" title="${value.title}">${value.title}</em>
                        </span>
                        <div class="item_detail">
                            <div class="item_price">
                                <i class="price_rmb">¥</i>
                                <b class="price_integer">${value.price}</b>
                                <span class="price_decimal">.0</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
                `;
            });
            $('.like_content').html($html);
        }
    });

})(jQuery);

/*猜你喜欢板块数据渲染 结束*/