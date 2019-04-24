
<div class="row">
    <div class="col-xs-12">
        <div class="box">
        </div>
        <div class="box">
            <div class="box-header">
                <div class="row">
                    <div class="col-md-10">
                        <form class="form-inline">
                            <div class="form-group">
                                <label class="sr-only" for="exampleInputEmail3">Email address</label>
                                <input type="email" class="form-control" id="exampleInputEmail3" placeholder="Email">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="exampleInputPassword3">Password</label>
                                <input type="password" class="form-control" id="exampleInputPassword3" placeholder="Password">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="gender">gender</label>
                              <select class="form-control" id="gender" >
                                  <option>请选择性别</option>
                                  <option>Man</option>
                                  <option>Woman</option>
                              </select>
                            </div>
                            <button type="submit" class="btn btn-default">Search</button>
                        </form>
                    </div>
                    <div class="col-md-2">
                        <button v-on:click="openiframe()" type="button" class="btn btn-block btn-primary">
                            ADD-系统消息
                        </button>
                    </div>
                </div>
            </div>

            <div class="box-body">
            <#--<table id="main_table" class="table table-hover table-bordered" cellspacing="0"   >-->
            <#--</table>-->
                <table class="table table-hover table-bordered">
                    <thead>
                    <tr>
                        <th></th>
                        <th>标示</th>
                        <th>标题</th>
                        <th>主题</th>
                        <th>标记</th>
                        <th>时间</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                        <td class="mailbox-name"><a href="read-mail.html">Alexander Pierce</a></td>
                        <td class="mailbox-subject"><b>AdminLTE 2.0 Issue</b> - Trying to find a solution to this
                            problem...
                        </td>
                        <td class="mailbox-attachment"></td>
                        <td class="mailbox-date">5 mins ago</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-xs">查看</button>
                            <button type="button" class="btn btn-danger btn-xs">删除</button>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                        <td class="mailbox-name"><a href="read-mail.html">Alexander Pierce</a></td>
                        <td class="mailbox-subject"><b>AdminLTE 2.0 Issue</b> - Trying to find a solution to this
                            problem...
                        </td>
                        <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                        <td class="mailbox-date">28 mins ago</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-xs">查看</button>
                            <button type="button" class="btn btn-danger btn-xs">删除</button>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                        <td class="mailbox-name"><a href="read-mail.html">Alexander Pierce</a></td>
                        <td class="mailbox-subject"><b>AdminLTE 2.0 Issue</b> - Trying to find a solution to this
                            problem...
                        </td>
                        <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                        <td class="mailbox-date">11 hours ago</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-xs">查看</button>
                            <button type="button" class="btn btn-danger btn-xs">删除</button>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                        <td class="mailbox-name"><a href="read-mail.html">Alexander Pierce</a></td>
                        <td class="mailbox-subject"><b>AdminLTE 2.0 Issue</b> - Trying to find a solution to this
                            problem...
                        </td>
                        <td class="mailbox-attachment"></td>
                        <td class="mailbox-date">15 hours ago</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-xs">查看</button>
                            <button type="button" class="btn btn-danger btn-xs">删除</button>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                        <td class="mailbox-name"><a href="read-mail.html">Alexander Pierce</a></td>
                        <td class="mailbox-subject"><b>AdminLTE 2.0 Issue</b> - Trying to find a solution to this
                            problem...
                        </td>
                        <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                        <td class="mailbox-date">Yesterday</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-xs">查看</button>
                            <button type="button" class="btn btn-danger btn-xs">删除</button>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                        <td class="mailbox-name"><a href="read-mail.html">Alexander Pierce</a></td>
                        <td class="mailbox-subject"><b>AdminLTE 2.0 Issue</b> - Trying to find a solution to this
                            problem...
                        </td>
                        <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                        <td class="mailbox-date">2 days ago</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-xs">查看</button>
                            <button type="button" class="btn btn-danger btn-xs">删除</button>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                        <td class="mailbox-name"><a href="read-mail.html">Alexander Pierce</a></td>
                        <td class="mailbox-subject"><b>AdminLTE 2.0 Issue</b> - Trying to find a solution to this
                            problem...
                        </td>
                        <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                        <td class="mailbox-date">2 days ago</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-xs">查看</button>
                            <button type="button" class="btn btn-danger btn-xs">删除</button>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                        <td class="mailbox-name"><a href="read-mail.html">Alexander Pierce</a></td>
                        <td class="mailbox-subject"><b>AdminLTE 2.0 Issue</b> - Trying to find a solution to this
                            problem...
                        </td>
                        <td class="mailbox-attachment"></td>
                        <td class="mailbox-date">2 days ago</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-xs">查看</button>
                            <button type="button" class="btn btn-danger btn-xs">删除</button>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="checkbox"></td>
                        <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                        <td class="mailbox-name"><a href="read-mail.html">Alexander Pierce</a></td>
                        <td class="mailbox-subject"><b>AdminLTE 2.0 Issue</b> - Trying to find a solution to this
                            problem...
                        </td>
                        <td class="mailbox-attachment"></td>
                        <td class="mailbox-date">2 days ago</td>
                        <td>
                            <button type="button" class="btn btn-primary btn-xs">查看</button>
                            <button type="button" class="btn btn-danger btn-xs">删除</button>
                        </td>
                    </tr>
                    </tbody>
                </table>
                <!-- /.table -->
            </div>
        </div>
    </div>
    <!-- /.col -->
</div>

<script src="${base}/assets/admin/sysmsg/list.js"></script>
