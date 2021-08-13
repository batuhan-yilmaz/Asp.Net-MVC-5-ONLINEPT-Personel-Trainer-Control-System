// BU FORMLARIN DOLU BOŞ OLDUĞUNU KONTROL EDİYO BOŞSA KIRMIZI YAPIYOR VE UYGUNSUZSA
function vucut_yag_orani_form_validation() {
    var isValid = true;
    if (parseInt($('#vucut_yag_orani_form #kilo').val()) < 201 && parseInt($('#kilo').val()) > 30) {
        $("#vucut_yag_orani_form #kilo").removeClass('red_border');
    } else {
        isValid = false;
        $("#vucut_yag_orani_form #kilo").addClass('red_border');
    }
    if (parseInt($('#vucut_yag_orani_form #yas').val()) < 120) {
        $("#vucut_yag_orani_form #yas").removeClass('red_border');
    } else {
        isValid = false;
        $("#vucut_yag_orani_form #kilo").addClass('red_border');
    }
    if ($("#vucut_yag_orani_form #boy").val() < 221 && $("#vucut_yag_orani_form #boy").val() > 139) {
        $("#vucut_yag_orani_form #boy").removeClass('red_border');
    } else {
        isValid = false;
        $("#vucut_yag_orani_form #boy").addClass('red_border');
    }
    if ($("#vucut_yag_orani_form #bel").val() < 200 && $("#vucut_yag_orani_form #bel").val() > 40) {
        $("#vucut_yag_orani_form #bel").removeClass('red_border');
    } else {
        isValid = false;
        $("#vucut_yag_orani_form #bel").addClass('red_border');
    }
    if ($("#vucut_yag_orani_form #kalca").val() < 150 && $("#vucut_yag_orani_form #kalca").val() > 40) {
        $("#vucut_yag_orani_form #kalca").removeClass('red_border');
    } else {
        isValid = false;
        $("#vucut_yag_orani_form #kalca").addClass('red_border');
    }
    if ($("#vucut_yag_orani_form #boyun").val() < 100 && $("#vucut_yag_orani_form #boyun").val() > 10) {
        $("#vucut_yag_orani_form #boyun").removeClass('red_border');
    } else {
        isValid = false;
        $("#vucut_yag_orani_form #boyun").addClass('red_border');
    }
    return isValid;
};
function bmi(weight, height) {
    bmindx = weight / eval(height * height);
    return bmindx;
};
// BURA YAĞ ORANI HESAPLIYOR
$(function () {
    $('#vucut_yag_orani_btn').click(function (event) {
        if (vucut_yag_orani_form_validation()) {
            var kilo = parseFloat($('#vucut_yag_orani_form #kilo').val());
            var boy = parseFloat($('#vucut_yag_orani_form #boy').val());
            var boyun = parseFloat($('#vucut_yag_orani_form #boyun').val());
            var bel = parseFloat($('#vucut_yag_orani_form #bel').val());
            var age = parseFloat($('#vucut_yag_orani_form #yas').val());
            var kalca = parseFloat($('#vucut_yag_orani_form #kalca').val());
            if (isNaN(kilo + boy + boyun + bel + kalca)) {

            } else {
                BMI = (bmi(kilo, boy / 100));
                if ($('#vucut_yag_orani_form #gender_mg').val() == 'm') {
                    //Erkek 
                    bf = Math.round((495 / (1.0324 - 0.19077 * (Math.log10(bel - boyun)) + 0.15456 * (Math.log10(boy))) - 450)).toFixed(1);
                    bmif = ((1.20 * BMI) + (0.23 * age) - (10.8 * 1) - 5.4).toFixed(1);
                    if (bf <= 4.5) {
                    } else if (bf >= 4.5 && bf < 13.5) {
                        result_text = 'Yağ oranınız düşük.<br/>İdeal değerler 14 - 25 arasındadır.';
                        result_text = 'İdeal değerler 14 - 25 arasındadır.';
                    } else if (bf >= 13.5 && bf < 25.5) {
                        result_text = 'Yağ oranınız çok normal.<br/>İdeal değerler 14 - 25 arasındadır.';
                        result_text = 'İdeal değerler 14 - 25 arasındadır.';
                    } else if (bf >= 25.5 && bf < 37.5) {
                        result_text = 'Yağ oranınız yüksek.<br/>İdeal değerler 14 - 25 arasındadır.';
                        result_text = 'İdeal değerler 14 - 25 arasındadır.';
                    } else {
                        result_text = 'Yağ oranınız çok yüksek.<br/>İdeal değerler 14 - 25 arasındadır.';
                        result_text = 'İdeal değerler 14 - 25 arasındadır.';
                    }
                } else if ($('#vucut_yag_orani_form #gender_mg').val() == 'f') {
                    //Kadın
                    bf = Math.round(495 / (1.29579 - 0.35004 * (Math.log10(bel + kalca - boyun)) + 0.22100 * (Math.log10(boy))) - 450);
                    bmif = (1.20 * BMI) + (0.23 * age) - (10.8 * 0) - 5.4;
                    if (bf <= 12.5) {
                        result_text = 'Yağ oranınız çok düşük.<br/>İdeal değerler 21 - 31 arasındadır.';
                        result_text = 'İdeal değerler 21 - 31 arasındadır.';
                        $('#resultsg').css('background', "#ff6f69");
                    } else if (bf >= 12.5 && bf < 20.5) {
                        result_text = 'Yağ oranınız düşük.<br/>İdeal değerler 21 - 31 arasındadır.';
                        result_text = 'İdeal değerler 21 - 31 arasındadır.';
                        $('#resultsg').css('background', "#ff6f69");
                    } else if (bf >= 20.5 && bf < 31.5) {
                        result_text = 'Yağ oranınız normal.<br/>İdeal değerler 21 - 31 arasındadır.';
                        result_text = 'İdeal değerler 21 - 31 arasındadır.';
                        $('#resultsg').css('background', "#41cd8c");
                    } else if (bf >= 31.5 && bf < 41.5) {
                        result_text = 'Yağ oranınız yüksek.<br/>İdeal değerler 21 - 31 arasındadır.';
                        result_text = 'İdeal değerler 21 - 31 arasındadır.';
                        $('#resultsg').css('background', "#ff6f69");
                    } else {
                        result_text = 'Yağ oranınız çok yüksek.<br/>İdeal değerler 21 - 31 arasındadır.';
                        result_text = 'İdeal değerler 21 - 31 arasındadır.';
                        $('#resultsg').css('background', "#ff6f69");
                    }
                }
                rhtml = '<table style="width:100%;border:none;color:#fff;">';
                rhtml += '	<tr>';
                rhtml += '		<td colspan="2"><span class="result_panel_weight_unit">SONUÇ</span></td>';
                rhtml += '	</tr>';
                rhtml += '	<tr>';
                rhtml += '		<td>Yağ Oranı(ABD Metodu):</td>';
                rhtml += '		<td><span id="bmv_" class="result_panel_number">%' + bf + '</span></td>';
                rhtml += '	</tr>';
                rhtml += '	<tr>';
                rhtml += '		<td>Yağ Oranı (BMI Metodu):</td>';
                rhtml += '		<td><span id="bmv_" class="result_panel_number">%' + bmif + '</span></td>';
                rhtml += '	</tr>';
                rhtml += '</table><span class="result_panel_unit">' + result_text + '</span>';
                $("#resultsg").html(rhtml);
                $('#resultsg').attr('class', 'show');
            }
        }
    });
});
// BU GÜNLÜK KALORİ GEREKSİNİMİ
function dailycalori() {
    var weight = parseFloat(document.getElementById("weight_m").value);
    var height = parseFloat(document.getElementById("height_m").value);
    var age = document.getElementById("age_m").value;
    var gender = document.getElementById("gender_m").value;
    var lifestyle = document.getElementById("lifestyle_m").value;
    var result_div = document.getElementById("results");
    result_div.className = "";
    result_div.innerHTML = "";
    if (height && age && weight) {
        var bmi = CalculateBMR(weight, height, age, gender, lifestyle);
        bazal_metabolizma = Math.round(bmi);
        if (!isNaN(bmi)) {
            result_div.innerHTML = "<div>Kilo Koruma: <span>" + Math.round(bmi) + "</span></div>";
            if (bmi < 1000 || (bmi * 0.8) < 1000 || (bmi * 0.6) < 1000) {

                if (bmi < 1000) {
                    bmi = 1000;
                } else {
                    bmi = Math.round(bmi);
                }
                if ((bmi * 0.8) < 1000) {
                    var loseweight = 1000;
                } else {
                    loseweight = Math.round(bmi * 0.8);
                }
                if ((bmi * 0.6) < 1000) {
                    var loseweightfast = 1000;
                } else {
                    loseweightfast = Math.round(bmi * 0.6);
                }
                kilo_almak = Math.round(bmi + (bmi / 100) * 20);
                result_div.innerHTML = result_div.innerHTML + "<div>Kilo Almak: <span>" + kilo_almak + "</span></div>";
                result_div.innerHTML = result_div.innerHTML + "<div>Kilo Verme: <span>" + loseweight + "</span></div>";
                result_div.innerHTML = result_div.innerHTML + "<div>Hızlı Kilo Verme: <span>" + loseweightfast + "</span></div>";
                result_div.innerHTML = result_div.innerHTML + "<div style=\'font-size:14px;\'> Bu hesaplama aracı günde 1000 kaloriden daha az kalori alımını hesaplamaz. Eğer 1000 kaloriden az kalori almanız gerektiğini düşünyorsanız bir sağlık uzmanına danışın.</div>";
            } else {
                result_div.innerHTML = "<div>Kilo Koruma: <span>" + Math.round(bmi) + "</span></div>";
                loseweight = Math.round(bmi * 0.8);
                loseweightfast = Math.round(bmi * 0.6);
                kilo_almak = Math.round(bmi + (bmi / 100) * 20);
                result_div.innerHTML = result_div.innerHTML + "<div>Kilo Almak: <span>" + kilo_almak + "</span></div>";
                result_div.innerHTML = result_div.innerHTML + "<div>Kilo Verme: <span>" + loseweight + "</span></div>";
                result_div.innerHTML = result_div.innerHTML + "<div>Hizli Kilo Verme: <span>" + loseweightfast + "</span></div>";
            }
        } else {
            result_div.innerHTML = "<div style=\'font-size:20px;\'>Hata: Yanlış Bilgi</div>";
        }
    } else {
        result_div.innerHTML = "<div style=\'font-size:20px;\'>Hata: Bos alan birakilamaz.</div>";
    }
    return false;
};
// BU BAŞKA BİRŞEY İÇİN HESAPLIYO
function CalculateBMR(weight, height, age, gender, lifestyle) {
    if (gender == 'm') {
        var s = 5;
    } else if (gender == 'f') {
        var s = -161;
    } else {
        var s = '';
    }
    var bmr = (10 * weight) + (6.25 * height) - (5 * age) + s;
    if (lifestyle == 'sedentary') {
        bmr = bmr * 1.2;
    } else if (lifestyle == 'slightly_active') {
        bmr = bmr * 1.375;
    } else if (lifestyle == 'moderately_active') {
        bmr = bmr * 1.55;
    } else if (lifestyle == 'active') {
        bmr = bmr * 1.725;
    } else if (lifestyle == 'very_active') {
        bmr = bmr * 1.9;
    }
    return bmr;
}

// BAZALT METABOLİZMA HIZI HESAPLIYOR
function metabolizmaHiziHesapla() {
    var cinsiyet = $("#metabolizma_cinsiyet").val();
    var resultbmr = document.getElementById("resultsbmr");
    var yas = $("#metabolizma_yas").val();
    var agirlik = $("#metabolizma_agirlik").val();
    var boy = $("#metabolizma_boy").val();
    if (!yas || !agirlik || !boy) {
        $("#calculatorbmz #metabolizma_yas").removeClass('red_border');
        resultbmr.innerHTML = "<div style=\'font-size:20px;\'>Hata: Bos alan birakilamaz.</div>";
        $("#resultsbmr").attr("class", "");
        return false;
    }
    if (yas < 18) {
        resultbmr.innerHTML = "<div style=\'font-size:20px;\'>Hata: Bos alan birakilamaz</div>";
        $("#resultsbmr").attr("class", "");
        return false;
    }
    var enerji;
    if (cinsiyet = "erkek") {
        enerji = (10 * agirlik) + (6.25 * boy) - (5 * yas) + 5;
    } else {
        enerji = (10 * agirlik) + (6.25 * boy) - (5 * yas) - 161;
    }
    enerji = Math.round(enerji);
    $("#resultsbmr").html("<div><b>Bazalt metabolizma enerjiniz <span><i>" + enerji + "</i> kcal'dır.</b></div>");
    $("#resultsbmr").attr("class", "");
}
