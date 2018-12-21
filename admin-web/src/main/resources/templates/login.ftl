<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="${base}/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${base}/libs/font-awesome-4.7.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="${base}/libs/ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${base}/dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="${base}/plugins/iCheck/square/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="../libs/html5shiv/js/html5shiv.min.js"></script>
    <script src="../libs/respond/js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="../index2.html"><b>Admin</b>LTE</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your session</p>

        <form action="../../index2.html" method="post">
            <div class="form-group has-feedback">
                <input type="email" id="email" class="form-control" placeholder="用户名"  required="required">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" id="password" class="form-control" placeholder="密码"  required="required">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox"> 记住我
                        </label>
                    </div>
                </div>
                <!-- /.col -->
                <div class="col-xs-4">
                    <button type="button" class="btn btn-primary btn-block btn-flat" id="btn_login">登录</button>
                </div>
                <!-- /.col -->
            </div>
        </form>

        <div class="social-auth-links text-center">
            <p>- OR -</p>
            <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i> Sign in using
                Facebook</a>
            <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i> Sign in using
                Google+</a>
        </div>
        <!-- /.social-auth-links -->

        <a href="#">I forgot my password</a><br>
        <a href="register.html" class="text-center">Register a new membership</a>

    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

<!-- jQuery 2.2.3 -->
<script src="${base}/plugins/jQuery/jquery-2.2.3.min.js"></script>

<script src="${base}/plugins/jquery-validation-1.19.0/jquery.validate.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="${base}/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="${base}/plugins/iCheck/icheck.min.js"></script>
<script src="${base}/libs/layer3/layer.js"></script>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
        // 手机号码验证
        jQuery.validator.addMethod("isPhone", function(value, element) {
            var length = value.length;
            return this.optional(element) || (length == 11 && /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(value));
        }, "请正确填写您的手机号码。");

        // 电话号码验证
        jQuery.validator.addMethod("isTel", function(value, element) {
            var tel = /^(\d{3,4}-)?\d{7,8}$/g; // 区号－3、4位 号码－7、8位
            return this.optional(element) || (tel.test(value));
        }, "请正确填写您的电话号码。");
        // 匹配密码，以字母开头，长度在6-12之间，必须包含数字和特殊字符。
        jQuery.validator.addMethod("isPwd", function(value, element) {
            var str = value;
            if (str.length < 6 || str.length > 18)
                return false;
            if (!/^[a-zA-Z]/.test(str))
                return false;
            if (!/[0-9]/.test(str))
                return fasle;
            return this.optional(element) || /[^A-Za-z0-9]/.test(str);
        }, "以字母开头，长度在6-12之间，必须包含数字和特殊字符。");

        $("#register-form").validate({
            errorElement : 'span',
            errorClass : 'help-block',

            rules : {
                firstname : "required",
                email : {
                    required : true,
                    email : true
                },
                password : {
                    required : true,
                    isPwd : true
                },
                confirm_password : {
                    required : true,
                    isPwd : true,
                    equalTo : "#password"
                },
                phone : {
                    required : true,
                    isPhone : true
                },
                tel : {
                    isTel : true
                },
                address : {
                    minlength : 10
                }
            },
            messages : {
                firstname : "请输入姓名",
                email : {
                    required : "请输入Email地址",
                    email : "请输入正确的email地址"
                },
                password : {
                    required : "请输入密码",
                    minlength : jQuery.format("密码不能小于{0}个字 符")
                },
                confirm_password : {
                    required : "请输入确认密码",
                    minlength : "确认密码不能小于5个字符",
                    equalTo : "两次输入密码不一致不一致"
                },
                phone : {
                    required : "请输入手机号码"
                },
                tel : {
                    required : "请输入座机号码"
                },
                address : {
                    required : "请输入家庭地址",
                    minlength : jQuery.format("家庭地址不能少于{0}个字符")
                }
            },
            //自定义错误消息放到哪里
            errorPlacement : function(error, element) {
                element.next().remove();//删除显示图标
                element.after('<span class="glyphicon glyphicon-remove form-control-feedback" aria-hidden="true"></span>');
                element.closest('.form-group').append(error);//显示错误消息提示
            },
            //给未通过验证的元素进行处理
            highlight : function(element) {
                $(element).closest('.form-group').addClass('has-error has-feedback');
            },
            //验证通过的处理
            success : function(label) {
                var el=label.closest('.form-group').find("input");
                el.next().remove();//与errorPlacement相似
                el.after('<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>');
                label.closest('.form-group').removeClass('has-error').addClass("has-feedback has-success");
                label.remove();
            },

        });
    });
</script>
</body>
</html>
