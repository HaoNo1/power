<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>打击目标影响因素分析</title>
    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
</head>
<body>
<div class="main_wrap">
    <div class="location"><p>首页 > 电力系统评价模型 > 打击目标影响因素分析</p></div>

    <div class="choice">
        <div class=" clearfix">
            <div class="choice_list clearfix">
                <div class="col-md-8 col-sm-8 col-xs-12">
                    <label class="col-sm-3 control-label text-right" for="name">电站名</label>
                    <input name="name" id="name"/>
                    <div class="col-sm-9">
                        <select class="form-control">
                            <option>日本九州电力</option>
                            <option>印度信实电力</option>
                        </select>
                    </div>
                </div>

            </div>
            <div class="choice_list clearfix">

                <div class="col-md-8 col-sm-8 col-xs-12">
                    <label class="col-sm-3 control-label text-right"  for="time">时间</label>
                    <input name="time" id="time"/>
                    <div class="col-sm-9">
                        <form class="form-horizontal">
                            <fieldset>
                                <div class="control-group">
                                    <div class="controls">
                                        <div class="input-prepend input-group">
                                            <span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>
                                            <input type="text" name="reservation" id="reservation" class="form-control" value="03/18/2013 - 03/23/2018" >
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                </div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <div class="col-sm-3 text-right">

                    </div>
                    <div class="col-sm-9">
                        <button type="button" class="btn btn-danger btn_analyse">分析</button>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="main_content">

        <div id="myTabContent" class="tab-content myTabContent">


            <div id="myTab_1Content" class="tab-content">

                    <div>
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>【发电环节】影响因素</th>
                                <th>权重值</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td>发电量</td>
                                <td>1.0</td>
                            </tr>
                            <tr>
                                <td>辐射范围</td>
                                <td>3</td>
                            </tr>

                            <tr>
                                <td>用途</td>
                                <td>5</td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                    <div>
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>【输电环节】影响因素</th>
                                <th>权重值</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td>输电量</td>
                                <td>1.0</td>
                            </tr>
                            <tr>
                                <td>辐射范围</td>
                                <td>3</td>
                            </tr>

                            <tr>
                                <td>用途</td>
                                <td>5</td>
                            </tr>

                            </tbody>
                        </table>
                    </div>
                    <div>
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>【配电环节】影响因素</th>
                                <th>权重值</th>
                            </tr>
                            </thead>
                            <tbody>

                            <tr>
                                <td>配电量</td>
                                <td>1.0</td>
                            </tr>
                            <tr>
                                <td>辐射范围</td>
                                <td>3</td>
                            </tr>

                            <tr>
                                <td>用途</td>
                                <td>5</td>
                            </tr>

                            </tbody>
                        </table>
                    </div>


            </div>
        </div>



    </div>
</div>
</div>
<!-- jQuery -->
<script src="../js/jquery.min.js"></script>
<script src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../vendors/moment/min/moment.min.js"></script>
<script src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="../js/main.js"></script>
<script type="text/javascript">

    $(document).ready(function(){
        $('input[name="reservation"]').daterangepicker(null, function(start, end, label) {
        });

    });

</script>
</body>
</html>
