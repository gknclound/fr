﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="Web.info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	
<head>
    <title>页面</title>
    
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"
        name="viewport">
    <meta content="yes" name="apple-mobile-web-app-capable">
    <meta content="black" name="apple-mobile-web-app-status-bar-style">
    <meta content="telephone=no" name="format-detection">
    
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/jquery.cookie.js" type="text/javascript"></script>
 
    <script type="text/javascript">

        $(function () {

            if ($("#hidtime").val() != "") {
                $(".info_show").html("您所查询的数码已在" + $("#hidtime").val() + "查询过，该数码已失效，谨防假冒，并请拨打咨询热线999。谢谢您的使用！");
            }


        })
       

    </script>
    <style type="text/css">
        div
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <input type="hidden" id="hidid" runat="server" />
    <input type="hidden" id="hidtime" runat="server" />

    <!-- <div class="title">
       
    </div>
    <div class="info">
    
    
    </div>-->
    <div class="top">
        <img class="top_img" src="img/a03865cd196a4caf93c5f54cae533c0e.png" />
        <div class="top_title"> 
        	
    <a href="zhuisu.html"><font color="white" size="5" >( 新包装 ) <i></i></font></a>
        </div>
        <div class="top_gs" id="iscode" runat="server">
            <img src="img/icon004.png" />
           用品有限公司
        </div>
    </div>
    <div class="info_n95">
        <img src="img/zhuye.jpg" />
    </div>
    <div class="text">
        <ul>
            <li>
                <img src="img/icon001.png" />
                <span>生产批号</span>
                <p>
                    20200605</p>
            </li>
            <li>
                <img src="img/icon002.png" />
                <span>生产时间</span>
                <p>
                    20200605</p>
            </li>
            <li>
                <img src="img/icon006.png" />
                <span>生产班组</span>
                <p>
                    一车间</p>
            </li>
        </ul>
    </div>
    <div class="jieguo">
        <img src="img/防伪结果.png" />
        <span>查验结果</span>
        <div class="info_show">
            感谢您购买正宗产品
        </div>
    </div>
    <div class="qiye">
        <ul>
            <li><a href="qiye.html">企业介绍 <span>></span></a></li>
            <li><a href="huanjing.html">生产环境 <span>></span></a></li>
            <li><a href="zhuisu.html">溯源信息<span>></span></a></li>
            <li><a href="code.html">防伪码介绍 <span>></span></a></li>
        </ul>
    </div>

       <script type="text/javascript">
       	
       	 function stopDrop() {
        var lastY; //最后一次y坐标点 
        $(document.body).on('touchstart', function(event) {
            lastY = event.originalEvent.changedTouches[0].clientY; //点击屏幕时记录最后一次Y度坐标。 
        });
        $(document.body).on('touchmove', function(event) {
            var y = event.originalEvent.changedTouches[0].clientY;
            var st = $(this).scrollTop(); //滚动条高度 
            if (y >= lastY && st <= 10) { //如果滚动条高度小于0，可以理解为到顶了，且是下拉情况下，阻止touchmove事件。 
                lastY = y;
                event.preventDefault();
            }
            lastY = y;
        });
    }
    stopDrop(); // 调用 不过效果不是很彻底
       	

       	
      
   	var doc = $(document);

var _touches_point1=0;var _touches_point2=0;

addEventListener("touchstart",

function(e) {

  _touches_point1 = e.touches[0].pageY;

});

addEventListener("touchmove",

function(e) {

  _touches_point2 = e.touches[0].pageY;

  if(doc.scrollTop()<=0 && _touches_point1<_touches_point2)

  {

   e.preventDefault();

   if( $('#_domain_display').length <=0 )

   {

     $('body').prepend('<div id="_domain_display" style="text-align:center;background-color:#ededed;color:#a6a6a6;height:0px;padding:15px 0;line-height:40px;font-size:18px;overflow:hidden;"><p>网页由 xxx提供</p ></div>');

   }


   $('#_domain_display').height((_touches_point2-_touches_point1));

   

  }

});

 

addEventListener("touchend",

function(e) {

 $('#_domain_display').slideUp('normal' , function(){

  $('#_domain_display').remove();

 });

});
 </script>

 

</body>
</html>
