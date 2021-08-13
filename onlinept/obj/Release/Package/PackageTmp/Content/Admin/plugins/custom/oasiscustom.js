

$('#phoneNumber').inputmask("+99(999)999-9999");

function Number(id) {
    var element = document.getElementById(id);
    var regex = /[^0-9]/gi;
    element.value = element.value.replace(regex, "");
}

function TcNumber(id) {
    var element = document.getElementById(id);
    var regex = /[^0-9]/gi;
    element.value = element.value.replace(regex, "");
}

function PhoneNumber(id) {
    var element = document.getElementById(id);
    var regex = /[^+0-9]/gi;
    element.value = element.value.replace(regex, "");
}

function usrname(id) {
    var element = document.getElementById(id);
    var regex = /[^a-zA-Z0-9_-]/gi;
    element.value = element.value.replace(regex, "");
}

function text(id) {
    var element = document.getElementById(id);
    var regex = /[^ÜüİiĞğÖöÇçŞşa-zA-Z ]/gi;
    element.value = element.value.replace(regex, "");
}

function customtext(id) {
    var element = document.getElementById(id);
    var regex = /[^ÜüİiĞğÖöÇçŞşa-zA-Z0-9_- ]/gi;
    element.value = element.value.replace(regex, "");
}

function desc(id) {
    var element = document.getElementById(id);
    var regex = /[^a-zA-Z0-9_-":,. ]/gi;
    element.value = element.value.replace(regex, "");
}




// TAKVİM ÇALIŞMA GÜNLERİ VE MAAŞ BORDRO HESAPLAYICI

var holidays = [];
var weekdays = ["0"];
$(function oasisdatepicker() {

    $("#tarih1").datepicker({
        dateFormat: "yy-mm-dd",
        changeYear: true,
        showButtonPanel: true,
        showWeek: true,
        changeMonth: true,
        minDate: new Date(2020, 0, 1),
        maxDate: new Date(2030, 0, 1),
        closeText: "Kapat", // Display text for close link
        prevText: "Geri", // Display text for previous month link
        nextText: "İleri", // Display text for next month link
        currentText: "Bugün", // Display text for current month link
        monthNames: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran",
            "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"], // Names of months for drop-down and formatting
        monthNamesShort: ["Ock", "Şub", "Mar", "Nis", "May", "Haz", "Tem", "Agu", "Eyl", "Ekm", "Kas", "Ara"], // For formatting
        dayNames: ["Pazar", "Pazartesi", "Salı", "Çarşamba", "Perşembe", "Cuma", "Cumartesi"], // For formatting
        dayNamesShort: ["Paz", "Pzt", "Sal", "Çar", "Per", "Cum", "Cmt"], // For formatting
        dayNamesMin: ["Pz", "Pt", "Sa", "Çr", "Pr", "Cm", "Ct"], // Column headings for days starting at Sunday
        weekHeader: "Hf", // Column header for week of the year
        firstDay: 1,
        showOn: "both",
        buttonText: "<i class='fa fa-calendar'></i>"
    });

    $("#tarih2").datepicker({
        dateFormat: "yy-mm-dd",
        changeYear: true,
        showButtonPanel: true,
        showWeek: true,
        changeMonth: true,
        minDate: new Date(2020, 0, 1),
        maxDate: new Date(2030, 0, 1),
        closeText: "Kapat", // Display text for close link
        prevText: "Geri", // Display text for previous month link
        nextText: "İleri", // Display text for next month link
        currentText: "Bugün", // Display text for current month link
        monthNames: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran",
            "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"], // Names of months for drop-down and formatting
        monthNamesShort: ["Ock", "Şub", "Mar", "Nis", "May", "Haz", "Tem", "Agu", "Eyl", "Ekm", "Kas", "Ara"], // For formatting
        dayNames: ["Pazar", "Pazartesi", "Salı", "Çarşamba", "Perşembe", "Cuma", "Cumartesi"], // For formatting
        dayNamesShort: ["Paz", "Pzt", "Sal", "Çar", "Per", "Cum", "Cmt"], // For formatting
        dayNamesMin: ["Pz", "Pt", "Sa", "Çr", "Pr", "Cm", "Ct"], // Column headings for days starting at Sunday
        weekHeader: "Hf", // Column header for week of the year
        firstDay: 1,
        showOn: "both",
        buttonText: "<i class='fa fa-calendar'></i>",
        onSelect: function (dateText, inst) {
            var date = $(this).val();
            var time = $('#time').val();
            $('#calcbutton2').click()
        }

    });

});

$(function dropdowncont() {

    $("#roledb").change(function () {
        var displaycourse = $("#roledb option:selected").text();
        $("#roledbs").val(displaycourse);
    })
    $("#genderdb").change(function () {
        var displaycourse = $("#genderdb option:selected").text();
        $("#genderdbs").val(displaycourse);
    })
    $("#IsFullDaydb").change(function () {
        var displaycourse = $("#IsFullDaydb option:selected").text();
        $("#IsFullDaydbs").val(displaycourse);
    })
    $("#colordb").change(function () {
        var displaycourse = $("#colordb option:selected").val();
        $("#colordbs").val(displaycourse);
    })
    $("#colordb").change(function () {
        var displaycourse = $("#colordb option:selected").text();
        $("#colordbs1").val(displaycourse);
    })
    $("#colordbe").change(function () {
        var displaycourse = $("#colordbe option:selected").val();
        $("#colordbse").val(displaycourse);
    })
    $("#cocuksayisidb").change(function () {
        var displaycourse = $("#cocuksayisidb option:selected").text();
        $("#cocuksayisidbs").val(displaycourse);
    })
    $("#medenidurumdb").change(function () {
        var displaycourse = $("#medenidurumdb option:selected").text();
        $("#medenidurumdbs").val(displaycourse);
    })
})

// ETKİNLİK/ETKİNLİKEKLE TRUE FALSE TEXTBOX AÇMA KAPAMA FONKSİYONU 
function EnableDisableTextBox(IsFullDaydb) {
    var selectedValue = IsFullDaydb.options[IsFullDaydb.selectedIndex].value;
    var tarih2 = document.getElementById("tarih2");
    tarih2.disabled = selectedValue == 0 ? false : true;
    if (!tarih2.disabled) {
        tarih2.focus();
    }
}
// RANDOM 21 KARAKTER SECURİTYKEY OLUŞTURMA FONKSİYONU
function generatePassword() {
    var length = 21,
        charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789*/#{[]}\|-,.<>|:.!",
        retVal = "";
    for (var i = 0, n = charset.length; i < length; ++i) {
        retVal += charset.charAt(Math.floor(Math.random() * n));
    }
    return retVal;
}


// ANASAYFADA GÜNCELLEYE BASINCA YENİ SECURİTY KEY OLUŞTURMA FONKSİYONU
function scode() {
    document.getElementById("hsecuritykey").value = generatePassword();
}

// RANDOM İNVOİCE REFERANS NUMARASI OLUŞTURUCU FONKSİYONU
function referancenumber() {
    var length = 8,
        charset = "0123456789",
        retVal = "";
    for (var i = 0, n = charset.length; i < length; ++i) {
        retVal += charset.charAt(Math.floor(Math.random() * n));
    }
    return retVal;
}



// PHONE MASK!

$(document).ready(function () {
    $('.input-phone').intlInputPhone();
    $('.phoneNumber').keypress(validateNumber);

})


$('.input-phone').keyup(function () {
    var ulkekod = parseFloat($('#phone').text());
    var inputdeger = parseFloat($('#phoneNumber').val());
    $('#deger').val("+" + ulkekod + inputdeger.toFixed(0));


});
function validateNumber(event) {
    var key = window.event ? event.keyCode : event.which;
    if (event.keyCode === 8 || event.keyCode === 46) {
        return true;
    } else if (key < 48 || key > 57) {
        return false;
    } else {
        return true;
    }
};




// RANDOM 13 KARAKTER QR İZİN TAKİP KODU OLUŞTURMA FONKSİYONU
$(".generatetext").click(function generatetext(e) {

    var x = randomNumber(13);
    $('#output').html('').qrcode(x);
});

function randomNumber(len) {
    var randomNumber;
    var n = '';

    for (var count = 0; count < len; count++) {
        randomNumber = Math.floor(Math.random() * 10);
        n += randomNumber.toString();
    }
    return n;
}

$(function izintakvimi() {

    $("#itarih1").datepicker({
        dateFormat: "yy-mm-dd",
        changeYear: true,
        showButtonPanel: true,
        showWeek: true,
        changeMonth: true,
        minDate: new Date(2020, 0, 1),
        maxDate: new Date(2030, 0, 1),
        closeText: "Kapat", // Display text for close link
        prevText: "Geri", // Display text for previous month link
        nextText: "İleri", // Display text for next month link
        currentText: "Bugün", // Display text for current month link
        monthNames: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran",
            "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"], // Names of months for drop-down and formatting
        monthNamesShort: ["Ock", "Şub", "Mar", "Nis", "May", "Haz", "Tem", "Agu", "Eyl", "Ekm", "Kas", "Ara"], // For formatting
        dayNames: ["Pazar", "Pazartesi", "Salı", "Çarşamba", "Perşembe", "Cuma", "Cumartesi"], // For formatting
        dayNamesShort: ["Paz", "Pzt", "Sal", "Çar", "Per", "Cum", "Cmt"], // For formatting
        dayNamesMin: ["Pz", "Pt", "Sa", "Çr", "Pr", "Cm", "Ct"], // Column headings for days starting at Sunday
        weekHeader: "Hf", // Column header for week of the year
        firstDay: 1
    });

    $("#itarih2").datepicker({
        dateFormat: "yy-mm-dd",
        changeYear: true,
        showButtonPanel: true,
        showWeek: true,
        changeMonth: true,
        minDate: new Date(2020, 0, 1),
        maxDate: new Date(2030, 0, 1),
        closeText: "Kapat", // Display text for close link
        prevText: "Geri", // Display text for previous month link
        nextText: "İleri", // Display text for next month link
        currentText: "Bugün", // Display text for current month link
        monthNames: ["Ocak", "Şubat", "Mart", "Nisan", "Mayıs", "Haziran",
            "Temmuz", "Ağustos", "Eylül", "Ekim", "Kasım", "Aralık"], // Names of months for drop-down and formatting
        monthNamesShort: ["Ock", "Şub", "Mar", "Nis", "May", "Haz", "Tem", "Agu", "Eyl", "Ekm", "Kas", "Ara"], // For formatting
        dayNames: ["Pazar", "Pazartesi", "Salı", "Çarşamba", "Perşembe", "Cuma", "Cumartesi"], // For formatting
        dayNamesShort: ["Paz", "Pzt", "Sal", "Çar", "Per", "Cum", "Cmt"], // For formatting
        dayNamesMin: ["Pz", "Pt", "Sa", "Çr", "Pr", "Cm", "Ct"], // Column headings for days starting at Sunday
        weekHeader: "Hf", // Column header for week of the year
        firstDay: 1

    });

});

function viewkey() {
    var length = 9,
        charset = "0123456789",
        retVal = "";
    for (var i = 0, n = charset.length; i < length; ++i) {
        retVal += charset.charAt(Math.floor(Math.random() * n));
    }
    return retVal;
}

function viewkeyaz() {
    var length = 8,
        charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789",
        retVal = "";
    for (var i = 0, n = charset.length; i < length; ++i) {
        retVal += charset.charAt(Math.floor(Math.random() * n));
    }
    return retVal;
}
