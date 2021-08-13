using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using onlinept.Models.Entity;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;
using onlinept.Models;

namespace onlinept.Controllers
{
    [Authorize(Roles = "Admin,Yonetici")]
    public class SettingsController : Controller
    {
        // GET: Settings
        onlineptEntities db = new onlineptEntities();
        public ActionResult Index()
        {
            return View();
        }
        //-----------------------------------------------USERS = kullanicilar--------------------------------------------------------//


        public ActionResult kullanicilar()
        {
            return View();
        }

        public ActionResult mykullanici(int viewmylist)
        {
            var degerk = db.users.Where(x => x.viewmylist == viewmylist).ToList();
            return View(degerk);
        }

        public ActionResult viewkey832982058(int roleid)
        {
            var degera = db.users.Where(x => x.roleid == roleid).ToList();
            return View(degera);
        }
        public ActionResult viewkey659782314(int roleid)
        {
            var degeyr = db.users.Where(x => x.roleid == roleid).ToList();
            return View(degeyr);
        }
        public ActionResult viewkey152035424(int roleid)
        {
            var degeru = db.users.Where(x => x.roleid == roleid).ToList();
            return View(degeru);
        }

        public ActionResult kullaniciguncelle(int userid)
        {
            var users = db.users.Find(userid);
            return View("kullaniciguncelle", users);
        }


        [HttpPost]
        public ActionResult kGuncelle(users r2)
        {
            if (!ModelState.IsValid)
            {
                return View();
            }
            var veri = db.users.Find(r2.userid);
            veri.name = Turkce.sesliharfDuzenle(r2.name);
            veri.usrname = Turkce.sesliharfDuzenle(r2.usrname);
            veri.password = hash.hashmd5(hash.hashmd5(r2.password) + "@F=$½tV4c5£Un$}₺->$i#9{TMC5hZ½1@F29]U4JYF*");
            veri.email = r2.email;
            veri.tc = r2.tc;
            veri.tel = Turkce.NoDuzenle(r2.tel);
            veri.role = r2.role;
            veri.profilephoto = Turkce.DosyaAdiDuzenle(r2.profilephoto);
            veri.securitykey = hash.hashmd5(hash.hashmd5(r2.securitykey) + "@F=$½tV4c5£Un$}₺->$i#9{TMC5hZ½1@F29]U4JYF*");
            veri.gender = r2.gender;
            veri.active = r2.active;
            db.SaveChanges();
            TempData["kullaniciGuncelle"] = " ";
            return RedirectToAction("kullanicilar");
        }

        public JsonResult usersistatistik()
        {
            var uistatistik = db.users.ToList();
            return Json(
                new
                {
                    Result = from obj in uistatistik
                             select new
                             {
                                 obj.name,
                                 obj.usrname,
                                 obj.password,
                                 obj.email,
                                 obj.tc,
                                 obj.tel,
                                 obj.role,
                                 obj.gender
                             }
                }, JsonRequestBehavior.AllowGet
            );

        }
        //ADMİN KAYIT!
        [HttpGet]
        public ActionResult kullanicikayit190932014()
        {
            return View();
        }


        [HttpPost]
        public ActionResult kullanicikayit190932014(users r1)
        {
            if (!ModelState.IsValid)
            {
                return View("kullanicikayit832982058", r1);
            }
            var kayitvarmi1 = db.users.FirstOrDefault(x => x.usrname == r1.usrname);
            var kayitvarmi2 = db.users.FirstOrDefault(x => x.tc == r1.tc);
            var kayitvarmi3 = db.users.FirstOrDefault(x => x.email == r1.email);
            var kayitvarmi = db.users.FirstOrDefault(x => x.usrname == r1.usrname && x.email == r1.email && x.tc == r1.tc);

            if (kayitvarmi1 != null)
            {
                TempData["usernamevar"] = " ";
                return RedirectToAction("kullanicikayit190932014");

            }
            else if (kayitvarmi2 != null)
            {
                TempData["tcvar"] = " ";
                return RedirectToAction("kullanicikayit190932014");

            }
            else if (kayitvarmi3 != null)
            {
                TempData["emailvar"] = " ";
                return RedirectToAction("kullanicikayit190932014");

            }
            else if (kayitvarmi == null)
            {
                r1.password = hash.hashmd5(hash.hashmd5(r1.password) + "@F=$½tV4c5£Un$}₺->$i#9{TMC5hZ½1@F29]U4JYF*");
                r1.securitykey = hash.hashmd5(hash.hashmd5(r1.securitykey) + "@F=$½tV4c5£Un$}₺->$i#9{TMC5hZ½1@F29]U4JYF*");
                r1.profilephoto = Turkce.DosyaAdiDuzenle(r1.profilephoto);
                r1.tel = Turkce.NoDuzenle(r1.tel);
                r1.name = Turkce.sesliharfDuzenle(r1.name);
                r1.usrname = Turkce.sesliharfDuzenle(r1.usrname);
                db.users.Add(r1);
                db.SaveChanges();
                TempData["kullaniciGuncelle"] = " ";
                return RedirectToAction("kullanicilar");
            }
            else
            {
                TempData["kullaniciHata1"] = " ";
                return RedirectToAction("kullanicikayit190932014");
            }
        }

        //EĞİTMEN KAYIT

        [HttpGet]
        public ActionResult kullanicikayit479269081()
        {
            return View();
        }


        [HttpPost]
        public ActionResult kullanicikayit479269081(users r1, mylist m1)
        {
            if (!ModelState.IsValid)
            {
                return View("kullanicikayit659782314", r1);
            }
            var kayitvarmi1 = db.users.FirstOrDefault(x => x.usrname == r1.usrname);
            var kayitvarmi2 = db.users.FirstOrDefault(x => x.tc == r1.tc);
            var kayitvarmi3 = db.users.FirstOrDefault(x => x.email == r1.email);
            var kayitvarmi = db.users.FirstOrDefault(x => x.usrname == r1.usrname && x.email == r1.email && x.tc == r1.tc);

            if (kayitvarmi1 != null)
            {
                TempData["usernamevar"] = " ";
                return RedirectToAction("kullanicikayit479269081");

            }
            else if (kayitvarmi2 != null)
            {
                TempData["tcvar"] = " ";
                return RedirectToAction("kullanicikayit479269081");

            }
            else if (kayitvarmi3 != null)
            {
                TempData["emailvar"] = " ";
                return RedirectToAction("kullanicikayit479269081");

            }
            else if (kayitvarmi == null)
            {
                r1.password = hash.hashmd5(hash.hashmd5(r1.password) + "@F=$½tV4c5£Un$}₺->$i#9{TMC5hZ½1@F29]U4JYF*");
                r1.securitykey = hash.hashmd5(hash.hashmd5(r1.securitykey) + "@F=$½tV4c5£Un$}₺->$i#9{TMC5hZ½1@F29]U4JYF*");
                r1.profilephoto = Turkce.DosyaAdiDuzenle(r1.profilephoto);
                r1.tel = Turkce.NoDuzenle(r1.tel);
                r1.name = Turkce.sesliharfDuzenle(r1.name);
                r1.usrname = Turkce.sesliharfDuzenle(r1.usrname);
                m1.mylistid = m1.mylistid;
                m1.usersget = m1.usersget;
                m1.listname = m1.listname;
                db.users.Add(r1);
                db.mylist.Add(m1);
                db.SaveChanges();
                TempData["kullaniciGuncelle"] = " ";
                return RedirectToAction("kullanicilar");
            }
            else
            {
                TempData["kullaniciHata1"] = " ";
                return RedirectToAction("kullanicikayit479269081");
            }
        }

        //OGRENCİ KAYIT
        [HttpGet]
        public ActionResult kullanicikayit438153762()
        {
            return View();
        }


        [HttpPost]
        public ActionResult kullanicikayit438153762(users r1)
        {
            if (!ModelState.IsValid)
            {
                return View("kullanicikayit438153762", r1);
            }
            var kayitvarmi1 = db.users.FirstOrDefault(x => x.usrname == r1.usrname);
            var kayitvarmi2 = db.users.FirstOrDefault(x => x.tc == r1.tc);
            var kayitvarmi3 = db.users.FirstOrDefault(x => x.email == r1.email);
            var kayitvarmi = db.users.FirstOrDefault(x => x.usrname == r1.usrname && x.email == r1.email && x.tc == r1.tc);

            if (kayitvarmi1 != null)
            {
                TempData["usernamevar"] = " ";
                return RedirectToAction("kullanicikayit438153762");

            }
            else if (kayitvarmi2 != null)
            {
                TempData["tcvar"] = " ";
                return RedirectToAction("kullanicikayit438153762");

            }
            else if (kayitvarmi3 != null)
            {
                TempData["emailvar"] = " ";
                return RedirectToAction("kullanicikayit438153762");

            }
            else if (kayitvarmi == null)
            {
                r1.password = hash.hashmd5(hash.hashmd5(r1.password) + "@F=$½tV4c5£Un$}₺->$i#9{TMC5hZ½1@F29]U4JYF*");
                r1.securitykey = hash.hashmd5(hash.hashmd5(r1.securitykey) + "@F=$½tV4c5£Un$}₺->$i#9{TMC5hZ½1@F29]U4JYF*");
                r1.profilephoto = Turkce.DosyaAdiDuzenle(r1.profilephoto);
                r1.tel = Turkce.NoDuzenle(r1.tel);
                r1.name = Turkce.sesliharfDuzenle(r1.name);
                r1.usrname = Turkce.sesliharfDuzenle(r1.usrname);
                db.users.Add(r1);
                db.SaveChanges();
                TempData["kullaniciGuncelle"] = " ";
                return RedirectToAction("kullanicilar");
            }
            else
            {
                TempData["kullaniciHata1"] = " ";
                return RedirectToAction("kullanicikayit438153762");
            }
        }



        public ActionResult kullanicisil(int userid)
        {
            var sil = db.users.Find(userid);
            if (sil == null)
            {
                return RedirectToAction("kullanicilar");
            }
            db.users.Remove(sil);
            db.SaveChanges();
            TempData["kullaniciGuncelle"] = " ";
            return RedirectToAction("kullanicilar");
        }

        ////-------------------------------------------ÖDEMELER-----------------------------------------////


        public ActionResult payment()
        {
            var degerler = db.payment.ToList();
            return View(degerler);
        }

        public ActionResult mypayment(int mylistget)
        {
            var degerlerpayment = db.payment.Where(x => x.mylistget == mylistget).ToList();
            return View(degerlerpayment);
        }

        [HttpGet]
        public ActionResult paymentekle(int viewmylist)
        {
            ViewBag.MyList = db.mylist.ToList();
            ViewBag.UserList = db.users.Where(x => x.viewmylist == viewmylist).ToList();
            return View();
        }

        public ActionResult paymentekle(payment p1)
        {
            if (!ModelState.IsValid)
            {
                TempData["paymentHata"] = " ";
                return RedirectToAction("paymentekle");
            }
                db.payment.Add(p1);
                db.SaveChanges();
                TempData["paymentGuncelle"] = " ";
                return RedirectToAction("payment");
        }
        [HttpGet]
        public ActionResult paymentekleadmin()
        {
            ViewBag.CoachList = db.users.Where(x => x.roleid == 659782314).ToList();
            ViewBag.UserList = db.users.Where(x => x.roleid == 152035424).ToList();
            return View();
        }

        public ActionResult paymentekleadmin(payment p1)
        {
            if (!ModelState.IsValid)
            {
                TempData["paymentHata"] = " ";
                return RedirectToAction("paymentekle");
            }
            db.payment.Add(p1);
            db.SaveChanges();
            TempData["paymentGuncelle"] = " ";
            return RedirectToAction("payment");
        }

        public ActionResult paymentguncelle(int paymentid)
        {
            var payment = db.payment.Find(paymentid);
            return View("paymentguncelle", payment);
        }


        [HttpPost]
        public ActionResult payguncelle(payment pay)
        {
            if (!ModelState.IsValid)
            {
                return View("payguncelle");
            }
            var veri = db.payment.Find(pay.paymentid);
            veri.date = pay.date;
            veri.pay1 = pay.pay1;
            veri.pay2 = pay.pay2;
            veri.pay3 = pay.pay3;
            veri.pay4 = pay.pay4;
            veri.pay5 = pay.pay5;
            veri.pay6 = pay.pay6;
            veri.pay7 = pay.pay7;
            veri.pay8 = pay.pay8;
            veri.pay9 = pay.pay9;
            veri.pay10 = pay.pay10;
            veri.pay11 = pay.pay11;
            veri.pay12 = pay.pay12;
            veri.total = pay.total;
            db.SaveChanges();
            TempData["paymentGuncelle"] = " ";
            return RedirectToAction("payment");
        }


        public ActionResult paymentsil(int paymentid)
        {
            var sil = db.payment.Find(paymentid);
            if (sil == null)
            {
                return RedirectToAction("payment");
            }
            db.payment.Remove(sil);
            db.SaveChanges();
            TempData["paymentGuncelle"] = " ";
            return RedirectToAction("payment");
        }


        //--------------------------------------------------HESAPLAYICILAR-------------------------//

        public ActionResult ffmicalculator()
        {
            return View();
        }

        public ActionResult bodyindexcalculator()
        {
            return View();
        }

        //ADMİN ÖZELL "TÜM İÇERİK ERİŞİMİ" EKLEME VE GÖRÜNTÜLEME İŞLEMLERİ

            //ALL-STUDENT//
        [Authorize(Roles = "Admin")]
        public ActionResult student()
        {
            var degerler = db.student.ToList();
            return View(degerler);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpGet]
        public ActionResult studentekleadmin()
        {
            ViewBag.CoachList = db.users.Where(x => x.roleid == 659782314).ToList();
            ViewBag.UserList = db.users.Where(x => x.roleid == 152035424).ToList();
            return View();
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult studentekleadmin(student s1)
        {
            if (ModelState.IsValid)
            {
                return View("home");
            }
            s1.content1 = Turkce.DosyaAdiDuzenle(s1.content1);
            s1.content2 = Turkce.DosyaAdiDuzenle(s1.content2);
            s1.content3 = Turkce.DosyaAdiDuzenle(s1.content3);
            db.student.Add(s1);
            db.SaveChanges();
            TempData["studentGuncelle"] = " ";
            return RedirectToAction("student");
        }
        //ALL-NUTRİTİON//
        [Authorize(Roles = "Admin")]
        public ActionResult nutrition()
        {
            var degerler = db.nutrition.ToList();
            return View(degerler);
        }
        [HttpGet]
        public ActionResult nutritionekleadmin()
        {
            ViewBag.CoachList = db.users.Where(x => x.roleid == 659782314).ToList();
            ViewBag.UserList = db.users.Where(x => x.roleid == 152035424).ToList();
            return View();
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult nutritionekleadmin(nutrition nt1)
        {
            if (!ModelState.IsValid)
            {
                return View("nutrition");
            }
            nt1.meal = Turkce.sesliharfDuzenle(nt1.meal);
            nt1.descriptions = Turkce.sesliharfDuzenle(nt1.descriptions);
            nt1.nutrition1 = Turkce.sesliharfDuzenle(nt1.nutrition1);
            db.nutrition.Add(nt1);
            db.SaveChanges();
            TempData["nutritionGuncelle"] = " ";
            return RedirectToAction("nutrition");
        }
        //ALL-EXERCİSE//
        [Authorize(Roles = "Admin")]
        public ActionResult exercise()
        {
            var degerler = db.exercise.ToList();
            return View(degerler);
        }
        [Authorize(Roles = "Admin")]
        [HttpGet]
        public ActionResult exerciseekleadmin()
        {
            ViewBag.CoachList = db.users.Where(x => x.roleid == 659782314).ToList();
            ViewBag.UserList = db.users.Where(x => x.roleid == 152035424).ToList();
            return View();
        }
        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult exerciseekleadmin(exercise ex1)
        {
            if (!ModelState.IsValid)
            {
                return View("exercise");
            }
            ex1.subject = Turkce.sesliharfDuzenle(ex1.subject);
            ex1.descriptions = Turkce.sesliharfDuzenle(ex1.descriptions);
            db.exercise.Add(ex1);
            db.SaveChanges();
            TempData["exerciseGuncelle"] = " ";
            return RedirectToAction("exercise");
        }


        //ALL-HOMEWORK//
        [Authorize(Roles = "Admin")]
        public ActionResult homework()
        {
            var degerler = db.homework.ToList();
            return View(degerler);
        }
        [HttpGet]
        public ActionResult homeworkekleadmin()
        {
            ViewBag.CoachList = db.users.Where(x => x.roleid == 659782314).ToList();
            ViewBag.UserList = db.users.Where(x=>x.roleid == 152035424).ToList();
            return View();
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult homeworkekleadmin(homework hw1)
        {
            if (!ModelState.IsValid)
            {
                return View("homework");
            }
            hw1.subject = Turkce.sesliharfDuzenle(hw1.subject);
            hw1.descriptions = Turkce.sesliharfDuzenle(hw1.descriptions);
            hw1.exercise = Turkce.sesliharfDuzenle(hw1.exercise);
            hw1.nutrition = Turkce.sesliharfDuzenle(hw1.nutrition);
            hw1.content1 = Turkce.DosyaAdiDuzenle(hw1.content1);
            hw1.content2 = Turkce.DosyaAdiDuzenle(hw1.content2);
            db.homework.Add(hw1);
            db.SaveChanges();
            TempData["homeworkGuncelle"] = " ";
            return RedirectToAction("homework");
        }
    }
}
