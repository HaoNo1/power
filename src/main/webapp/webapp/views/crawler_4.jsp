<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>参数值设置</title>
</head>

<!-- Bootstrap -->
<link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="../vendors/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link href="../vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">
<!-- Font Awesome -->
<link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">

<body>
<div class="container">
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1">
                            ALPHA:
                        </div>
                        <div class="col-md-4">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                    0.6
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1 col-md-offset-2">MU:</div>
                        <div class="col-md-4">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
                                    0.4
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1">
                            BETA:
                        </div>
                        <div class="col-md-4">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
                                    0.75
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1 col-md-offset-2">GAMMA:</div>
                        <div class="col-md-4">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
                                    0.8
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1">
                            Threshold:
                        </div>
                        <div class="col-md-4">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 50%;">
                                    0.5
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1 col-md-offset-2">SUM:</div>
                        <div class="col-md-4">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%;">
                                    3200
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1">
                            RHO:
                        </div>
                        <div class="col-md-4">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
                                    0.5
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1 col-md-offset-2">SIGMA:</div>
                        <div class="col-md-4">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 30%;">
                                    0.5
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1">VAL:</div>
                        <div class="col-md-4">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 50%;">
                                    1.0
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="row">
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-1">T:</div>
                        <div class="col-md-4">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
                                    3
                                </div>
                            </div>
                        </div>
                        <div class="col-md-1 col-md-offset-2">K:</div>
                        <div class="col-md-4">
                            <div class="progress">
                                <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 50%;">
                                    200
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <div class="col-md-2">InitialTime:</div>
                        <!--<label for="dtp_input1" class="col-md-2 control-label">IntialTime:</label>-->
                        <div class="input-group date form_datetime col-md-4" data-date="1979-09-16T05:25:07Z" data-date-format="yyyy/mm/dd - HH:ii p" data-link-field="dtp_input1">
                            <input class="form-control" size="16" type="text" value="" readonly>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
                            <span class="input-group-addon"><span class="glyphicon glyphicon-th"></span></span>
                        </div>
                        <!--<input type="hidden" id="dtp_input1" value="" /><br/>-->
                        <!--<div class="col-sm-9">-->
                                <!--<form class="form-horizontal">-->
                                  <!--<fieldset>-->
                                    <!--<div class="control-group">-->
                                      <!--<div class="controls">-->
                                        <!--<div class="input-prepend input-group">-->
                                          <!--<span class="add-on input-group-addon"><i class="glyphicon glyphicon-calendar fa fa-calendar"></i></span>-->
                                          <!--<input type="text" name="reservation" id="reservation" class="form-control" value="03/18/2013 - 03/23/2017" >-->
                                        <!--</div>-->
                                      <!--</div>-->
                                    <!--</div>-->
                                  <!--</fieldset>-->
                                <!--</form>-->
                        <!--</div>-->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-offset-10 col-md-2">
                        <button id="text" class="btn btn-danger" style="margin-left: 10px">设置参数</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="../js/jquery.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="../vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../vendors/moment/min/moment.min.js"></script>
<script type="text/javascript" src="../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<script type="text/javascript" src="../vendors/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" src="../vendors/bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.fr.js"></script>
<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });

    // $(document).ready(function(){
	//     $('input[name="reservation"]').daterangepicker(null, function(start, end, label) {
    //     });
    // });

    $('input[name="reservation"]').daterangepicker({
	format: 'YYYY/MM/DD',
	startDate: '03/13/2017',
        applyClass : 'btn-sm btn-success',
        cancelClass : 'btn-sm btn-default',
        locale: {
            applyLabel: '确认',
            cancelLabel: '取消',
            fromLabel : '起始时间',
            toLabel : '结束时间',
            customRangeLabel : '自定义',
            firstDay : 1,
			direction: $('#rtl').is(':checked') ? 'rtl' : 'ltr',
              format: 'MM/DD/YYYY',
              separator: ' - ',
              fromLabel: '从',
              toLabel: '至',
              daysOfWeek: ['日', '一', '二', '三', '四', '五','六'],
              monthNames: ['一月', '二月', '三月', '四月', '五月', '六月', '七月', '八月', '九月', '十月', '十一月', '十二月'],
              
        },
        ranges : {
            '最近一周': [moment().subtract('days', 6), moment()],
            '最近一月': [moment().subtract('days', 29), moment()],
			'最近半年': [moment().subtract('days', 182), moment()],
			'最近一年': [moment().subtract('days', 364), moment()],
            //'本月': [moment().startOf("month"),moment().endOf("month")],
            //'上个月': [moment().subtract(1,"month").startOf("month"),moment().subtract(1,"month").endOf("month")]
        },
        opens : 'right'
 
    })
    .next().on('click', function(){
        $(this).prev().focus();
    });
</script>


</body>
</html>