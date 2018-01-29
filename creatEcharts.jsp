<!-- 
1.引入Echarts包 
2.为Echarts准备一个具备长和高的Dom容器
3.在js里面对echarts初始化和配置
4.基于准备好的dom，初始化echarts实例
5.指定图表的配置项和数据
6.使用上面指定的配置项和数据显示图表
 -->

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script type="text/javascript" src="jquery-1.9.1.min.js" ></script>
<!-- 1.引入Echarts包 -->
<script type="text/javascript" src="echarts.js" ></script>
<title>Insert title here</title>
</head>
<body>
<!-- 2.为Echarts准备一个具备长和高的Dom容器 -->
<div id="main" style="width: 600px;height:400px;"></div>

<!-- 3.在js里面对echarts初始化和配置 -->
<script>
//4.基于准备好的dom，初始化echarts实例
var dom = document.getElementById("main");
var myChart = echarts.init(dom);
//5.指定图表的配置项和数据
var option={
	title: {								//图表的标题
		text: "Echarts示例"
	},
	tooltip: {								//提示框，鼠标悬浮交互时的提示信息
		
	},
	legend: {								//图例，每个图表最多只有一个图例，混搭图表共享一个
		data:['销量']
	},
	xAxis: {								//直角坐标系 grid 中的 x 轴
		data: ["衬衫","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
	},
	yAxis: {},								//直角坐标系 grid 中的 y 轴
	series: [{								//系列列表。每个系列通过 type 决定自己的图表类型
		name:"销量1",
		type:"bar",
		data:[5,20,36,10,10,20]
	},
	{									//系列列表。每个系列通过 type 决定自己的图表类型
		name:"销量2",
		type:"bar",
		data:[5,25,3,15,11,2]
	}]
};
//6.使用上面指定的配置项和数据显示图表
myChart.setOption(option);
</script>
</body>
</html>
