var usrnamelist = [];
var usridlist = [];
var viewmylist = [];
var viewname = [];
var viewemail = [];
var username = document.getElementById("db1username").innerText;
var logurl1 = '/Login/ForgotPw';
var url1 = '/Home/mylist';
var url2 = '/Home/mystatus';
var ousersgetlist = [];
var mylistidlist = [];
var olistl = [];
var rolelist = [];
var usrgetid = 0;
var umylistl = [];
var uusersgetlist = [];
$.getJSON(logurl1, function (data) {
    for (var item in data.Result) {
        var deger1 = '<tr>' + data.Result[item].userid + ',' + data.Result[item].viewmylist + ',' + data.Result[item].name + ',' + data.Result[item].email + ',' + data.Result[item].role + '</tr>';
        $('table').append(deger1);
        var usrid = data.Result[item].userid;
        var vmylist = data.Result[item].viewmylist;
        var usrname = data.Result[item].usrname;
        var name = data.Result[item].name;
        var email = data.Result[item].email;
        var role = data.Result[item].role;
        rolelist.push(role);
        usrnamelist.push(usrname);
        usridlist.push(usrid);
        viewmylist.push(vmylist);
        viewname.push(name);
        viewemail.push(email);
    };
    kullanıcıbilgileri1();
    $.getJSON(url1, function (data) {
        for (var item in data.Result) {
            var deger = '<tr>' + data.Result[item].mylistid + ',' + data.Result[item].usersget + ',' + data.Result[item].listname + '</tr>';
            $('table').append(deger);
            var usersget = data.Result[item].usersget;
            var listname = data.Result[item].listname;
            var mylistid = data.Result[item].mylistid;
            mylistidlist.push(mylistid);
            olistl.push(listname);
            ousersgetlist.push(usersget);
        }; 
        fUsersget1();
        $.getJSON(url2, function (data) {
            for (var item in data.Result) {
                var deger2 = '<tr>' + data.Result[item].mylistget + ',' + data.Result[item].usersget + '</tr>';
                $('table').append(deger2);
             var umylist = data.Result[item].mylistget,
               uusersget = data.Result[item].usersget;
               umylistl.push(umylist);
               uusersgetlist.push(uusersget);
            };
            fUsersget2();
        });

    });
});
function kullanıcıbilgileri1() {
    for (i = 0; i < usrnamelist.length; i++) {
        if (username == usrnamelist[i]) {
            usrgetid = usridlist[i];
            for (j = 0; j < rolelist.length; j++) {
                if (rolelist[j] != "User") {
                }
                else {
                    $("#mystudentview").attr("href", ("/home/studentekle?viewmylist=" + viewmylist[i]));
                    $("#myquestionsview").attr("href", ("/home/questionsekle?viewmylist=" + viewmylist[i]));
                    $("#mynutritionview").attr("href", ("/home/nutritionekle?viewmylist=" + viewmylist[i]));
                    $("#myexerciseview").attr("href", ("/home/exerciseekle?viewmylist=" + viewmylist[i]));
                    $("#myhomeworkview").attr("href", ("/home/homeworkekle?viewmylist=" + viewmylist[i]));
                    $("#mypaymentview").attr("href", ("/settings/paymentekle?viewmylist=" + viewmylist[i]));
                    $("#myviewlist").attr("href", ("/settings/mykullanici?viewmylist=" + viewmylist[i]));
                    $("#viewmylist1").attr("value", (viewmylist[i]));
                    $("#viewname1").attr("value", (viewname[i]));
                    $("#vieemail1").attr("value", (viewemail[i]));
                    $("#userid1").attr("value", (usridlist[i]));
                }
            }

        }
        else {
            continue;
        }
    }
}
function fUsersget1() {
    for (j = 0; j < mylistidlist.length; j++) {
        for (i = 0; i < ousersgetlist.length; i++) {
            for (j = 0; j < rolelist.length; j++) {
                if (rolelist[j] != "User") {
                }
                else {
                    if (usrgetid == ousersgetlist[i]) {
                        $("#mylist1 , #mylist2 , #hdmylist1").attr("value", (mylistidlist[i]));
                        $("#mymessagebox1").attr("href", ("/home/mymessagebox?mylistget=" + mylistidlist[i]));
                        $("#myconnect1").attr("href", ("/home/myconnect?usersget=" + ousersgetlist[i]));
                        $("#mysenduseranalys1").attr("href", ("/home/sendusersanalysis?mylistget=" + mylistidlist[i]));
                        $("#myhomelist1").attr("href", ("/home/home?mylistget=" + mylistidlist[i]));
                        $("#mylist1").attr("href", ("/home/mystudent?mylistget=" + mylistidlist[i]));
                        $("#mypay1").attr("href", ("/settings/mypayment?mylistget=" + mylistidlist[i]));
                        $("#myquestions1").attr("href", ("/home/myquestions?mylistget=" + mylistidlist[i]));
                        $("#usersgetlist1").attr("value", (ousersgetlist[i]));
                    }
                }
            }
        }
    }
}
function fUsersget2() {
    for (j = 0; j < uusersgetlist.length; j++) {
        for (i = 0; i < umylistl.length; i++) {
            for (j = 0; j < rolelist.length; j++) {
                if (rolelist[j] != "User") {
                    if (usrgetid == uusersgetlist[i]) {
                        $("#mylist1 , #mylist2").attr("value", (umylistl[i]));
                        $("#mymessagelist1").attr("href", ("/home/mymessagelist?usersget=" + uusersgetlist[i]));
                        $("#myconnect1").attr("href", ("/home/myconnect?usersget=" + uusersgetlist[i]));
                        $("#mysenduseranalys1").attr("href", ("/home/sendusersanalysis?mylistget=" + umylistl[i]));
                        $("#myhomelist1").attr("href", ("/home/home?mylistget=" + umylistl[i]));
                        $("#mylist1").attr("href", ("/home/mystudent?mylistget=" + umylistl[i]));
                        $("#mypay1").attr("href", ("/settings/mypayment?mylistget=" + umylistl[i]));
                        $("#myquestions1").attr("href", ("/home/myquestions?mylistget=" + umylistl[i]));
                        $("#usersgetlist1").attr("value", (uusersgetlist[i]));
                    }
                }
            }
        }
    }
}
