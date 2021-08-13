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
    public class HomeController : Controller
    {
        // GET: Home
        onlineptEntities db = new onlineptEntities();
        //--------------------------------------------- ANASAYFA USER-PROFİL -EMG- AKIŞ!------------------------------------//
        [Authorize(Roles = "Admin,Yonetici,User")]
        public ActionResult Index()
        {
            return View();
        }
        [Authorize(Roles = "Admin,Yonetici,User")]
        public ActionResult emgmuscleactivation()
        {
            return View();
        }
        [Authorize(Roles = "Admin,Yonetici,User")]
        public ActionResult home(int mylistget)
        {
            var degerler = db.home.Where(x => x.mylistget == mylistget).ToList();
            return View(degerler);
        }
        [Authorize(Roles = "Admin,Yonetici,User")]
        public PartialViewResult homeget()
        {
            var degerler = db.home.ToList();
            return PartialView(degerler);
        }

        [Authorize(Roles = "Admin,Yonetici,User")]
        [HttpGet]
        public ActionResult homeekle()
        {
            return View();
        }


        [Authorize(Roles = "Yonetici")]
        [HttpGet]
        public ActionResult homeekleyonetim()
        {
            return View();
        }


        [Authorize(Roles = "Admin,Yonetici")]
        [HttpGet]
        public ActionResult homeekleadmin()
        {
            return View();
        }

        [Authorize(Roles = "Admin,Yonetici,User")]
        public ActionResult homeekle(home h1)
        {
            if (!ModelState.IsValid)
            {
                return View("home");
            }
            h1.subject = Turkce.sesliharfDuzenle(h1.subject);
            h1.descriptions = Turkce.sesliharfDuzenle(h1.descriptions);
            h1.content1 = Turkce.DosyaAdiDuzenle(h1.content1);
            h1.content2 = Turkce.DosyaAdiDuzenle(h1.content2);
            h1.content3 = Turkce.DosyaAdiDuzenle(h1.content3);
            h1.content4 = Turkce.DosyaAdiDuzenle(h1.content4);
            h1.content5 = Turkce.DosyaAdiDuzenle(h1.content5);
            h1.content6 = Turkce.DosyaAdiDuzenle(h1.content6);
            db.home.Add(h1);
            db.SaveChanges();
            TempData["homeGuncelle"] = " ";
            return RedirectToAction("index");
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpGet]
        public ActionResult homeguncelle(int homeid)
        {
            var home = db.home.Find(homeid);
            return View("homeguncelle", home);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult hguncelle(home h)
        {
            if (!ModelState.IsValid)
            {
                return View("hguncelle");
            }
            var veri = db.home.Find(h.homeid);
            veri.subject = Turkce.sesliharfDuzenle(h.subject);
            veri.descriptions = Turkce.sesliharfDuzenle(h.descriptions);
            veri.date = h.date;
            veri.protein = h.protein;
            veri.fat = h.fat;
            veri.carb = h.carb;
            veri.calori = h.calori;
            veri.content1 = Turkce.DosyaAdiDuzenle(h.content1);
            veri.content2 = Turkce.DosyaAdiDuzenle(h.content2);
            veri.content3 = Turkce.DosyaAdiDuzenle(h.content3);
            veri.content4 = Turkce.DosyaAdiDuzenle(h.content4);
            veri.content5 = Turkce.DosyaAdiDuzenle(h.content5);
            veri.content6 = Turkce.DosyaAdiDuzenle(h.content6);
            db.SaveChanges();
            TempData["homeGuncelle"] = " ";
            return RedirectToAction("index");
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult homesil(int homeid)
        {
            var sil = db.home.Find(homeid);
            if (sil == null)
            {
                return RedirectToAction("index");
            }
            db.home.Remove(sil);
            db.SaveChanges();
            TempData["homeGuncelle"] = " ";
            return RedirectToAction("index");
        }

        [HttpPost]
        public ActionResult profilguncelle(users up2)
        {
            var veri = db.users.Find(up2.userid);
            if (veri != null)
            {
                veri.name = Turkce.sesliharfDuzenle(up2.name);
                veri.password = hash.hashmd5(hash.hashmd5(up2.password) + "@F=$½tV4c5£Un$}₺->$i#9{TMC5hZ½1@F29]U4JYF*");
                veri.email = up2.email;
                veri.tc = up2.tc;
                veri.tel = Turkce.NoDuzenle(up2.tel);
                veri.profilephoto = Turkce.DosyaAdiDuzenle(up2.profilephoto);
                veri.securitykey = hash.hashmd5(hash.hashmd5(up2.securitykey) + "@F=$½tV4c5£Un$}₺->$i#9{TMC5hZ½1@F29]U4JYF*");
                db.SaveChanges();
                TempData["kullaniciGuncelle"] = " ";
                return RedirectToAction("index");
            }
            else
            {
                TempData["kullaniciGuncelleHata"] = " ";
                return RedirectToAction("index");
            }
        }

        //-----------------------------------------------------MESSAGE BOX------------------------------------------//
        public JsonResult mbox()
        {
            var mboxsay = db.messagebox.ToList();
            return Json(
                new
                {
                    Result = from obj in mboxsay
                             select new
                             {
                                 obj.messageid,
                                 obj.color
                             }
                }, JsonRequestBehavior.AllowGet
            );

        }
        public JsonResult mymbox()
        {
            var mboxsay = db.mymessage.ToList();
            return Json(
                new
                {
                    Result = from obj in mboxsay
                             select new
                             {
                                 obj.mymessageid,
                                 obj.color
                             }
                }, JsonRequestBehavior.AllowGet
            );

        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpGet]
        public ActionResult MessageBox()
        {
            var degerlera = db.messagebox.ToList();
            return View(degerlera);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult MessageBoxguncelle(int messageid)

        {
            var messagebox = db.messagebox.Find(messageid);
            return View("messageboxguncelle", messagebox);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult MessageCevapla(int messageid)

        {
            var messageboxcvp = db.messagebox.Find(messageid);
            return View("messagecevapla", messageboxcvp);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult MessageCvp(MessageCevapla model, List<HttpPostedFileBase> attachments)

        {
            if (!ModelState.IsValid)
            {
                return View("messagecevapla");
            }
            var veri = db.messagebox.Find(model.messageid);
            if (veri != null && veri.youremail == model.youremail)
            {
                veri.youremail = model.youremail;
                veri.subject = Turkce.sesliharfDuzenle(model.subject);

                using (MailMessage mm = new MailMessage(model.Email, model.youremail))
                {
                    mm.Subject = model.subject;
                    mm.Body = Turkce.sesliharfDuzenle(model.Body);
                    foreach (HttpPostedFileBase attachment in attachments)
                    {
                        if (attachment != null)
                        {
                            string fileName = Path.GetFileName(attachment.FileName);
                            mm.Attachments.Add(new Attachment(attachment.InputStream, fileName));
                        }
                    }
                    mm.IsBodyHtml = false;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential(model.Email, model.Password);
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 587;
                    smtp.Send(mm);
                }
                db.SaveChanges();
                TempData["MessageSend"] = " ";
                return RedirectToAction("messagebox");
            }
            else
            {
                ModelState.Clear();
                ViewBag.Error2 = "E-Posta Adresi Bulunamadı";
                return View();
            }
        }


        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult mbguncelle(messagebox m2)
        {
            if (!ModelState.IsValid)
            {
                return View("messageboxguncelle");
            }
            var veri = db.messagebox.Find(m2.messageid);
            veri.namesurname = Turkce.sesliharfDuzenle(m2.namesurname);
            veri.youremail = m2.youremail;
            veri.subject = Turkce.sesliharfDuzenle(m2.subject);
            veri.message = Turkce.sesliharfDuzenle(m2.message);
            veri.date = m2.date;
            veri.color = m2.color;
            db.SaveChanges();
            TempData["MessageGuncelle"] = " ";
            return RedirectToAction("messagebox");
        }


        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult MessageBoxsil(int messageid)
        {
            var sil = db.messagebox.Find(messageid);
            if (sil == null)
            {
                return RedirectToAction("messagebox");
            }
            db.messagebox.Remove(sil);
            db.SaveChanges();
            TempData["MessageSil"] = " ";
            return RedirectToAction("messagebox");
        }

        //--------------------------------SEND E-MAİL---------------------------------//
        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult MessageSend()
        {
            return View();
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult MessageSend(MessageModel model, List<HttpPostedFileBase> attachments)
        {
            using (MailMessage mm = new MailMessage(model.Email, model.To))
            {
                mm.Subject = Turkce.sesliharfDuzenle(model.Subject);
                mm.Body = Turkce.sesliharfDuzenle(model.Body);
                foreach (HttpPostedFileBase attachment in attachments)
                {
                    if (attachment != null)
                    {
                        string fileName = Path.GetFileName(attachment.FileName);
                        mm.Attachments.Add(new Attachment(attachment.InputStream, fileName));
                    }
                }
                mm.IsBodyHtml = false;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential(model.Email, model.Password);
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
                TempData["MessageSend"] = " ";
            }

            return RedirectToAction("messagebox");
        }

        //-------------------------------USER - STUDENT - HOME - EXERCİSE - HOMEWORK - BELGE UPLOAD----------------------------------------//
        public JsonResult uImageUpload(users model)
        {

            var file = model.profilephotoFile;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.profilephotoFile.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.profilephotoFile.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.profilephotoFile.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/user/uimg/" + Turkce.DosyaAdiDuzenle(model.profilephotoFile.FileName)));

            }

            return Json(Turkce.DosyaAdiDuzenle(model.profilephotoFile.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult homeworkImageUpload(homework model)
        {

            var file = model.content1file;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.content1file.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.content1file.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.content1file.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/homework/hwimg/" + Turkce.DosyaAdiDuzenle(model.content1file.FileName)));


            }

            return Json(Turkce.DosyaAdiDuzenle(model.content1file.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult homework2ImageUpload(homework model)
        {

            var file = model.content2file;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.content2file.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.content2file.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.content2file.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/homework/hwimg/" + Turkce.DosyaAdiDuzenle(model.content2file.FileName)));


            }

            return Json(Turkce.DosyaAdiDuzenle(model.content2file.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult sendusersanalysisImageUpload(sendusersanalysis model)
        {

            var file = model.content1file;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.content1file.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.content1file.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.content1file.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/sendusersanalysis/suimg/" + Turkce.DosyaAdiDuzenle(model.content1file.FileName)));


            }

            return Json(Turkce.DosyaAdiDuzenle(model.content1file.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult sendusersanalysis2ImageUpload(sendusersanalysis model)
        {

            var file = model.content2file;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.content2file.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.content2file.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.content2file.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/sendusersanalysis/suimg/" + Turkce.DosyaAdiDuzenle(model.content2file.FileName)));


            }

            return Json(Turkce.DosyaAdiDuzenle(model.content2file.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult sendusersanalysis3ImageUpload(sendusersanalysis model)
        {

            var file = model.content3file;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.content3file.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.content3file.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.content3file.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/sendusersanalysis/suimg/" + Turkce.DosyaAdiDuzenle(model.content3file.FileName)));

            }

            return Json(Turkce.DosyaAdiDuzenle(model.content3file.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult belgeUpload(yuklenenbelgeler model)
        {

            var file = model.belgeFile;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.belgeFile.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.belgeFile.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.belgeFile.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/belge/" + Turkce.DosyaAdiDuzenle(model.belgeFile.FileName)));

            }

            return Json(Turkce.DosyaAdiDuzenle(model.belgeFile.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult sImageUpload(student model)
        {

            var file = model.content1file;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.content1file.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.content1file.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.content1file.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/student/simg/" + Turkce.DosyaAdiDuzenle(model.content1file.FileName)));

            }

            return Json(Turkce.DosyaAdiDuzenle(model.content1file.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult s2ImageUpload(student model)
        {

            var file = model.content2file;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.content2file.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.content2file.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.content2file.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/student/simg/" + Turkce.DosyaAdiDuzenle(model.content2file.FileName)));

            }

            return Json(Turkce.DosyaAdiDuzenle(model.content2file.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult s3ImageUpload(student model)
        {

            var file = model.content3file;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.content3file.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.content3file.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.content3file.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/student/simg/" + Turkce.DosyaAdiDuzenle(model.content3file.FileName)));

            }

            return Json(Turkce.DosyaAdiDuzenle(model.content3file.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult hImageUpload(home model)
        {

            var file = model.content1file;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.content1file.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.content1file.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.content1file.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/home/himg/" + Turkce.DosyaAdiDuzenle(model.content1file.FileName)));

            }


            return Json(Turkce.DosyaAdiDuzenle(model.content1file.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult h2ImageUpload(home model)
        {

            var file = model.content2file;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.content2file.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.content2file.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.content2file.FileName));


                file.SaveAs(Server.MapPath("~/Content/Admin/data/home/himg/" + Turkce.DosyaAdiDuzenle(model.content2file.FileName)));


            }
            return Json(Turkce.DosyaAdiDuzenle(model.content2file.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult h3ImageUpload(home model)
        {

            var file = model.content3file;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.content3file.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.content3file.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.content3file.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/home/himg/" + Turkce.DosyaAdiDuzenle(model.content3file.FileName)));

            }


            return Json(Turkce.DosyaAdiDuzenle(model.content3file.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult h4ImageUpload(home model)
        {

            var file = model.content4file;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.content4file.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.content4file.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.content4file.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/home/himg/" + Turkce.DosyaAdiDuzenle(model.content4file.FileName)));

            }


            return Json(Turkce.DosyaAdiDuzenle(model.content4file.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult h5ImageUpload(home model)
        {

            var file = model.content5file;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.content5file.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.content5file.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.content5file.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/home/himg/" + Turkce.DosyaAdiDuzenle(model.content5file.FileName)));

            }


            return Json(Turkce.DosyaAdiDuzenle(model.content5file.FileName), JsonRequestBehavior.AllowGet);

        }
        public JsonResult h6ImageUpload(home model)
        {

            var file = model.content6file;

            if (file != null)
            {

                var fileName = Path.GetFileName(Turkce.DosyaAdiDuzenle(model.content6file.FileName));
                var extention = Path.GetExtension(Turkce.DosyaAdiDuzenle(model.content6file.FileName));
                var filenamewithoutextension = Path.GetFileNameWithoutExtension(Turkce.DosyaAdiDuzenle(model.content6file.FileName));

                file.SaveAs(Server.MapPath("~/Content/Admin/data/home/himg/" + Turkce.DosyaAdiDuzenle(model.content6file.FileName)));

            }


            return Json(Turkce.DosyaAdiDuzenle(model.content6file.FileName), JsonRequestBehavior.AllowGet);

        }

        //-----------------------------------------------YUKLENEN BELGELERRRR----------------------------//

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult durumraporu()
        {
            return View();
        }
        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult paketteklifi()
        {
            return View();
        }

        public ActionResult yuklenenbelgeler()
        {
            var degerlerb = db.yuklenenbelgeler.ToList();
            return View(degerlerb);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpGet]
        public ActionResult belgeekle()
        {
            return View();
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult belgeekle(yuklenenbelgeler b3)
        {
            if (!ModelState.IsValid)
            {
                return View("belgeekle");
            }
            b3.belge = Turkce.DosyaAdiDuzenle(b3.belge);
            b3.Description = Turkce.sesliharfDuzenle(b3.Description);
            db.yuklenenbelgeler.Add(b3);
            db.SaveChanges();
            TempData["belgeGuncelle"] = " ";
            return RedirectToAction("yuklenenbelgeler");
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpGet]
        public ActionResult belgeguncelle(int belgeid)
        {
            var belge = db.yuklenenbelgeler.Find(belgeid);
            return View("belgeguncelle", belge);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult belguncelle(yuklenenbelgeler b2)
        {
            if (!ModelState.IsValid)
            {
                return View("belguncelle");
            }
            var veri = db.yuklenenbelgeler.Find(b2.belgeid);
            veri.date = b2.date;
            veri.belge = Turkce.DosyaAdiDuzenle(b2.belge);
            veri.Description = Turkce.sesliharfDuzenle(b2.Description);
            db.SaveChanges();
            TempData["belgeGuncelle"] = " ";
            return RedirectToAction("yuklenenbelgeler");
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult belgesil(int belgeid)
        {
            var sil = db.yuklenenbelgeler.Find(belgeid);
            if (sil == null)
            {
                return RedirectToAction("yuklenenbelgeler");
            }
            db.yuklenenbelgeler.Remove(sil);
            db.SaveChanges();
            TempData["belgeGuncelle"] = " ";
            return RedirectToAction("yuklenenbelgeler");
        }

        //-----------------------------------------------STUDENT ----------------------------//

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult mystudent(int mylistget)
        {
            var degerler2 = db.student.Where(x => x.mylistget == mylistget).ToList();
            return View(degerler2);
        }

        public ActionResult studentget(int studentid)
        {
            var detay = db.student.Find(studentid);
            return View("studentget", detay);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpGet]
        public ActionResult studentekle(int viewmylist)
        {
            ViewBag.MyList = db.mylist.ToList();
            ViewBag.UserList = db.users.Where(x=>x.viewmylist == viewmylist).ToList();
            return View();
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult studentekle(student s1)
        {
            if (!ModelState.IsValid)
            {
                return View("index");
            }
            s1.content1 = Turkce.DosyaAdiDuzenle(s1.content1);
            s1.content2 = Turkce.DosyaAdiDuzenle(s1.content2);
            s1.content3 = Turkce.DosyaAdiDuzenle(s1.content3);
            db.student.Add(s1);
            db.SaveChanges();
            TempData["studentGuncelle"] = " ";
            return RedirectToAction("index");
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpGet]
        public ActionResult studentguncelle(int studentid)
        {
            var student = db.student.Find(studentid);
            return View("studentguncelle", student);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult sguncelle(student s)
        {
            if (!ModelState.IsValid)
            {
                return View("sguncelle");
            }
            var veri = db.student.Find(s.studentid);
            veri.date = s.date;
            veri.gender = s.gender;
            veri.weight = s.weight;
            veri.height = s.height;
            veri.age = s.age;
            veri.bodyfat = s.bodyfat;
            veri.bodymuscle = s.bodymuscle;
            veri.neck = s.neck;
            veri.shoulder = s.shoulder;
            veri.chest = s.chest;
            veri.larm = s.larm;
            veri.lfarm = s.lfarm;
            veri.rarm = s.rarm;
            veri.rfarm = s.rfarm;
            veri.waist = s.waist;
            veri.hip = s.hip;
            veri.lleg = s.lleg;
            veri.lcalves = s.lcalves;
            veri.rleg = s.rleg;
            veri.rcalves = s.rcalves;
            veri.calori = s.calori;
            veri.protein = s.protein;
            veri.inseam = s.inseam;
            veri.fatneck = s.fatneck;
            veri.fatlarm = s.fatlarm;
            veri.fatrarm = s.fatrarm;
            veri.fatbody = s.fatbody;
            veri.fatlleg = s.fatlleg;
            veri.fatrleg = s.fatrleg;
            veri.carb = s.carb;
            veri.fat = s.fat;
            veri.caloriedeficit = s.caloriedeficit;
            veri.content1 = Turkce.DosyaAdiDuzenle(s.content1);
            veri.content2 = Turkce.DosyaAdiDuzenle(s.content2);
            veri.content3 = Turkce.DosyaAdiDuzenle(s.content3);
            db.SaveChanges();
            TempData["studentGuncelle"] = " ";
            return RedirectToAction("index");
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult studentsil(int studentid)
        {
            var sil = db.student.Find(studentid);
            if (sil == null)
            {
                return RedirectToAction("student");
            }
            db.student.Remove(sil);
            db.SaveChanges();
            TempData["studentGuncelle"] = " ";
            return RedirectToAction("index");
        }

        //-----------------------------------------------EXERCİSE ----------------------------//

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult userexerciseget(int usersget)
        {
            var degerler2 = db.exercise.Where(x => x.usersget == usersget).ToList();
            return View(degerler2);
        }


        [HttpGet]
        public ActionResult exerciseekle(int viewmylist)
        {
            ViewBag.MyList = db.mylist.ToList();
            ViewBag.UserList = db.users.Where(x => x.viewmylist == viewmylist).ToList();
            ViewBag.AllExerciseList1 = db.allexerciselist.Where(x => x.areaid == 1).ToList();
            ViewBag.AllExerciseList = db.allexerciselist.Where(x => x.areaid == 2).ToList();
            ViewBag.AllExerciseList2 = db.allexerciselist.Where(x => x.areaid == 3).ToList();
            ViewBag.AllExerciseList3 = db.allexerciselist.Where(x => x.areaid == 4).ToList();
            ViewBag.AllExerciseList4 = db.allexerciselist.Where(x => x.areaid == 5).ToList();
            ViewBag.AllExerciseList5 = db.allexerciselist.Where(x => x.areaid == 6).ToList();
            ViewBag.AllExerciseList6 = db.allexerciselist.Where(x => x.areaid == 7).ToList();
            ViewBag.AllExerciseList7 = db.allexerciselist.Where(x => x.areaid == 8).ToList();
            ViewBag.AllExerciseList8 = db.allexerciselist.Where(x => x.areaid == 9).ToList();
            return View();
        }
        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult exerciseekle(exercise ex1)
        {
            if (!ModelState.IsValid)
            {
                return View("exercise");
            }
            ex1.subject = Turkce.descDuzenle(ex1.subject);
            ex1.descriptions = Turkce.descDuzenle(ex1.descriptions);
            ex1.descriptions1 = Turkce.descDuzenle(ex1.descriptions1);
            ex1.descriptions2 = Turkce.descDuzenle(ex1.descriptions2);
            ex1.descriptions3 = Turkce.descDuzenle(ex1.descriptions3);
            ex1.descriptions4 = Turkce.descDuzenle(ex1.descriptions4);
            ex1.descriptions5 = Turkce.descDuzenle(ex1.descriptions5);
            ex1.descriptions6 = Turkce.descDuzenle(ex1.descriptions6);
            ex1.descriptions7 = Turkce.descDuzenle(ex1.descriptions7);
            ex1.descriptions8 = Turkce.descDuzenle(ex1.descriptions8);
            ex1.descriptions9 = Turkce.descDuzenle(ex1.descriptions9);
            ex1.descriptions10 = Turkce.descDuzenle(ex1.descriptions10);
            ex1.descriptions11 = Turkce.descDuzenle(ex1.descriptions11);
            ex1.descriptions12 = Turkce.descDuzenle(ex1.descriptions12);
            ex1.descriptions13 = Turkce.descDuzenle(ex1.descriptions13);
            ex1.descriptions14 = Turkce.descDuzenle(ex1.descriptions14);
            ex1.descriptions15 = Turkce.descDuzenle(ex1.descriptions15);
            ex1.descriptions16 = Turkce.descDuzenle(ex1.descriptions16);
            ex1.descriptions17 = Turkce.descDuzenle(ex1.descriptions17);
            ex1.descriptions18 = Turkce.descDuzenle(ex1.descriptions18);
            ex1.descriptions19 = Turkce.descDuzenle(ex1.descriptions19);
            ex1.descriptions20 = Turkce.descDuzenle(ex1.descriptions20);
            ex1.descriptions21 = Turkce.descDuzenle(ex1.descriptions21);
            ex1.descriptions22 = Turkce.descDuzenle(ex1.descriptions22);
            ex1.descriptions23 = Turkce.descDuzenle(ex1.descriptions23);
            ex1.descriptions24 = Turkce.descDuzenle(ex1.descriptions24);
            ex1.descriptions25 = Turkce.descDuzenle(ex1.descriptions25);
            ex1.descriptions26 = Turkce.descDuzenle(ex1.descriptions26);
            ex1.descriptions27 = Turkce.descDuzenle(ex1.descriptions27);
            ex1.descriptions28 = Turkce.descDuzenle(ex1.descriptions28);
            ex1.descriptions29 = Turkce.descDuzenle(ex1.descriptions29);
            ex1.descriptions30 = Turkce.descDuzenle(ex1.descriptions30);
            ex1.descriptions31 = Turkce.descDuzenle(ex1.descriptions31);
            ex1.descriptions32 = Turkce.descDuzenle(ex1.descriptions32);
            ex1.descriptions33 = Turkce.descDuzenle(ex1.descriptions33);
            ex1.descriptions34 = Turkce.descDuzenle(ex1.descriptions34);
            ex1.descriptions35 = Turkce.descDuzenle(ex1.descriptions35);
            ex1.descriptions36 = Turkce.descDuzenle(ex1.descriptions36);
            ex1.descriptions37 = Turkce.descDuzenle(ex1.descriptions37);
            ex1.descriptions38 = Turkce.descDuzenle(ex1.descriptions38);
            ex1.descriptions39 = Turkce.descDuzenle(ex1.descriptions39);
            ex1.descriptions40 = Turkce.descDuzenle(ex1.descriptions40);
            ex1.descriptions41 = Turkce.descDuzenle(ex1.descriptions41);
            ex1.descriptions42 = Turkce.descDuzenle(ex1.descriptions42);
            ex1.descriptions43 = Turkce.descDuzenle(ex1.descriptions43);
            ex1.descriptions44 = Turkce.descDuzenle(ex1.descriptions44);
            ex1.descriptions45 = Turkce.descDuzenle(ex1.descriptions45);
            ex1.descriptions46 = Turkce.descDuzenle(ex1.descriptions46);
            ex1.descriptions47 = Turkce.descDuzenle(ex1.descriptions47);
            ex1.descriptions48 = Turkce.descDuzenle(ex1.descriptions48);
            ex1.descriptions49 = Turkce.descDuzenle(ex1.descriptions49);
            ex1.descriptions50 = Turkce.descDuzenle(ex1.descriptions50);
            ex1.descriptions51 = Turkce.descDuzenle(ex1.descriptions51);
            ex1.descriptions52 = Turkce.descDuzenle(ex1.descriptions52);
            ex1.descriptions53 = Turkce.descDuzenle(ex1.descriptions53);
            ex1.descriptions54 = Turkce.descDuzenle(ex1.descriptions54);
            ex1.descriptions55 = Turkce.descDuzenle(ex1.descriptions55);
            ex1.descriptions56 = Turkce.descDuzenle(ex1.descriptions56);
            ex1.descriptions57 = Turkce.descDuzenle(ex1.descriptions57);
            ex1.descriptions58 = Turkce.descDuzenle(ex1.descriptions58);
            ex1.descriptions59 = Turkce.descDuzenle(ex1.descriptions59);
            ex1.descriptions60 = Turkce.descDuzenle(ex1.descriptions60);
            ex1.descriptions61 = Turkce.descDuzenle(ex1.descriptions61);
            ex1.descriptions62 = Turkce.descDuzenle(ex1.descriptions62);
            ex1.descriptions63 = Turkce.descDuzenle(ex1.descriptions63);
            ex1.descriptions64 = Turkce.descDuzenle(ex1.descriptions64);
            ex1.descriptions65 = Turkce.descDuzenle(ex1.descriptions65);
            ex1.descriptions66 = Turkce.descDuzenle(ex1.descriptions66);
            ex1.descriptions67 = Turkce.descDuzenle(ex1.descriptions67);
            ex1.descriptions68 = Turkce.descDuzenle(ex1.descriptions68);
            ex1.descriptions69 = Turkce.descDuzenle(ex1.descriptions69);
            ex1.descriptions70 = Turkce.descDuzenle(ex1.descriptions70);
            ex1.descriptions71 = Turkce.descDuzenle(ex1.descriptions71);
            ex1.descriptions72 = Turkce.descDuzenle(ex1.descriptions72);
            ex1.descriptions73 = Turkce.descDuzenle(ex1.descriptions73);
            ex1.descriptions74 = Turkce.descDuzenle(ex1.descriptions74);
            ex1.descriptions75 = Turkce.descDuzenle(ex1.descriptions75);
            ex1.descriptions76 = Turkce.descDuzenle(ex1.descriptions76);
            ex1.descriptions77 = Turkce.descDuzenle(ex1.descriptions77);
            ex1.descriptions78 = Turkce.descDuzenle(ex1.descriptions78);
            ex1.descriptions79 = Turkce.descDuzenle(ex1.descriptions79);
            ex1.descriptions80 = Turkce.descDuzenle(ex1.descriptions80);
            ex1.descriptions81 = Turkce.descDuzenle(ex1.descriptions81);
            ex1.descriptions82 = Turkce.descDuzenle(ex1.descriptions82);
            ex1.descriptions83 = Turkce.descDuzenle(ex1.descriptions83);
            ex1.descriptions84 = Turkce.descDuzenle(ex1.descriptions84);
            ex1.descriptions85 = Turkce.descDuzenle(ex1.descriptions85);
            ex1.descriptions86 = Turkce.descDuzenle(ex1.descriptions86);
            ex1.descriptions87 = Turkce.descDuzenle(ex1.descriptions87);
            ex1.descriptions88 = Turkce.descDuzenle(ex1.descriptions88);
            ex1.descriptions89 = Turkce.descDuzenle(ex1.descriptions89);
            ex1.descriptions90 = Turkce.descDuzenle(ex1.descriptions90);
            ex1.descriptions91 = Turkce.descDuzenle(ex1.descriptions91);
            ex1.descriptions92 = Turkce.descDuzenle(ex1.descriptions92);
            ex1.descriptions93 = Turkce.descDuzenle(ex1.descriptions93);
            ex1.descriptions94 = Turkce.descDuzenle(ex1.descriptions94);
            ex1.descriptions95 = Turkce.descDuzenle(ex1.descriptions95);
            ex1.descriptions96 = Turkce.descDuzenle(ex1.descriptions96);
            ex1.descriptions97 = Turkce.descDuzenle(ex1.descriptions97);
            ex1.descriptions98 = Turkce.descDuzenle(ex1.descriptions98);
            ex1.descriptions99 = Turkce.descDuzenle(ex1.descriptions99);
            ex1.descriptions100 = Turkce.descDuzenle(ex1.descriptions100);
            db.exercise.Add(ex1);
            db.SaveChanges();
            TempData["exerciseGuncelle"] = " ";
            return RedirectToAction("index");
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpGet]
        public ActionResult exerciseguncelle(int exerciseid)
        {
            var exercise = db.exercise.Find(exerciseid);
            return View("exerciseguncelle", exercise);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult exguncelle(exercise ex)
        {
            if (!ModelState.IsValid)
            {
                return View("exguncelle");
            }
            var veri = db.exercise.Find(ex.exerciseid);
            veri.subject = Turkce.sesliharfDuzenle(ex.subject);
            veri.descriptions = Turkce.sesliharfDuzenle(ex.descriptions);
            veri.date = ex.date;
            veri.content1 = ex.content1;
            veri.content2 = ex.content2;
            veri.content3 = ex.content3;
            veri.content4 = ex.content4;
            veri.content5 = ex.content5;
            veri.content6 = ex.content6;
            veri.content7 = ex.content7;
            veri.content8 = ex.content8;
            veri.content9 = ex.content9;
            veri.content10 = ex.content10;
            db.SaveChanges();
            TempData["exerciseGuncelle"] = " ";
            return RedirectToAction("index");
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult exercisesil(int exerciseid)
        {
            var sil = db.exercise.Find(exerciseid);
            if (sil == null)
            {
                return RedirectToAction("exercise");
            }
            db.exercise.Remove(sil);
            db.SaveChanges();
            TempData["exerciseGuncelle"] = " ";
            return RedirectToAction("index");
        }
        //-----------------------------------------------HOMEWORK ----------------------------//

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult userhomeworkget(int usersget)
        {
            var degerler2 = db.homework.Where(x => x.usersget == usersget).ToList();
            return View(degerler2);
        }

        [HttpGet]
        public ActionResult homeworkekle(int viewmylist)
        {
            ViewBag.MyList = db.mylist.ToList();
            ViewBag.UserList = db.users.Where(x => x.viewmylist == viewmylist).ToList();
            return View();
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult homeworkekle(homework hw1)
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
            return RedirectToAction("index");
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpGet]
        public ActionResult homeworkguncelle(int homeworkid)
        {
            var homework = db.homework.Find(homeworkid);
            return View("homeworkguncelle", homework);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult hwguncelle(homework hw)
        {
            if (!ModelState.IsValid)
            {
                return View("hwguncelle");
            }
            var veri = db.homework.Find(hw.homeworkid);
            veri.subject = Turkce.sesliharfDuzenle(hw.subject);
            veri.descriptions = Turkce.sesliharfDuzenle(hw.descriptions);
            veri.date = hw.date;
            veri.hworktime = hw.hworktime;
            veri.exercise = hw.exercise;
            veri.nutrition = hw.nutrition;
            veri.content1 = Turkce.DosyaAdiDuzenle(hw.content1);
            veri.content2 = Turkce.DosyaAdiDuzenle(hw.content2);
            db.SaveChanges();
            TempData["homeworkGuncelle"] = " ";
            return RedirectToAction("index");
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult homeworksil(int homeworkid)
        {
            var sil = db.homework.Find(homeworkid);
            if (sil == null)
            {
                return RedirectToAction("homework");
            }
            db.homework.Remove(sil);
            db.SaveChanges();
            TempData["homeworkGuncelle"] = " ";
            return RedirectToAction("index");
        }

        //-----------------------------------------------NUTRİTİON ----------------------------//

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult usernutritionget(int usersget)
        {
            var degerler2 = db.nutrition.Where(x => x.usersget == usersget).ToList();
            return View(degerler2);
        }

        [HttpGet]
        public ActionResult nutritionekle(int viewmylist)
        {
            ViewBag.MyList = db.mylist.ToList();
            ViewBag.UserList = db.users.Where(x=>x.viewmylist == viewmylist).ToList();
            return View();
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult nutritionekle(nutrition nt1)
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
            return RedirectToAction("index");
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpGet]
        public ActionResult nutritionguncelle(int nutritionid)
        {
            var nutrition = db.nutrition.Find(nutritionid);
            return View("nutritionguncelle", nutrition);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult ntguncelle(nutrition nt)
        {
            if (!ModelState.IsValid)
            {
                return View("hwguncelle");
            }
            var veri = db.nutrition.Find(nt.nutritionid);
            veri.meal = Turkce.sesliharfDuzenle(nt.meal);
            veri.nutrition1 = Turkce.sesliharfDuzenle(nt.nutrition1);
            veri.descriptions = Turkce.sesliharfDuzenle(nt.descriptions);
            veri.date = nt.date;
            veri.protein = nt.protein;
            veri.calori = nt.calori;
            veri.carb = nt.carb;
            veri.fat = nt.fat;
            veri.quantity = nt.quantity;
            db.SaveChanges();
            TempData["nutritionGuncelle"] = " ";
            return RedirectToAction("index");
        }



        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult nutritionsil(int nutritionid)
        {
            var sil = db.nutrition.Find(nutritionid);
            if (sil == null)
            {
                return RedirectToAction("nutrition");
            }
            db.nutrition.Remove(sil);
            db.SaveChanges();
            TempData["nutritionGuncelle"] = " ";
            return RedirectToAction("index");
        }


        //-----------------------------------------------Beslenmem- Ödevlerim - Egzersizlerim - Durumum ----------------------------//

        public JsonResult mynutrition()
        {
            var mynutrition = db.nutrition.ToList();
            return Json(
                new
                {
                    Result = from obj in mynutrition
                             select new
                             {
                                 obj.usersget,
                                 obj.meal,
                                 obj.nutrition1,
                                 obj.descriptions,
                                 obj.date,
                                 obj.protein,
                                 obj.carb,
                                 obj.fat,
                                 obj.calori,
                                 obj.quantity,
                                 obj.cholesterol,
                                 obj.potassium,
                                 obj.sodium
                             }
                }, JsonRequestBehavior.AllowGet
            );

        }

        public JsonResult myhomework()
        {
            var myhomework = db.homework.ToList();
            return Json(
                new
                {
                    Result = from obj in myhomework
                             select new
                             {
                                 obj.usersget,
                                 obj.subject,
                                 obj.descriptions,
                                 obj.date,
                                 obj.exercise,
                                 obj.nutrition,
                                 obj.hworktime,
                                 obj.content1,
                                 obj.content2
                             }
                }, JsonRequestBehavior.AllowGet
            );

        }

        public JsonResult myexercise()
        {
            var myexercise = db.exercise.ToList();
            return Json(
                new
                {
                    Result = from obj in myexercise
                             select new
                             {
                                 obj.usersget,
                                 obj.subject,
                                 obj.descriptions,
                                 obj.date,
                                 obj.content1,
                                 obj.content2,
                                 obj.content3
                             }
                }, JsonRequestBehavior.AllowGet
            );

        }

        public JsonResult mystatus()
        {
            var mystatus = db.student.ToList();
            return Json(
                new
                {
                    Result = from obj in mystatus
                             select new
                             {
                                 obj.studentid,
                                 obj.usersget,
                                 obj.mylistget,
                                 obj.age,
                                 obj.date,
                                 obj.gender,
                                 obj.weight,
                                 obj.height,
                                 obj.bodyfat,
                                 obj.bodymuscle,
                                 obj.neck,
                                 obj.shoulder,
                                 obj.chest,
                                 obj.larm,
                                 obj.lfarm,
                                 obj.rarm,
                                 obj.rfarm,
                                 obj.waist,
                                 obj.hip,
                                 obj.lleg,
                                 obj.lcalves,
                                 obj.rleg,
                                 obj.rcalves,
                                 obj.calori,
                                 obj.protein,
                                 obj.carb,
                                 obj.fat,
                                 obj.inseam,
                                 obj.fatneck,
                                 obj.fatlarm,
                                 obj.fatrarm,
                                 obj.fatbody,
                                 obj.fatlleg,
                                 obj.fatrleg,
                                 obj.caloriedeficit,
                                 obj.content1,
                                 obj.content2,
                                 obj.content3,
                             }
                }, JsonRequestBehavior.AllowGet
            );

        }

        public JsonResult mylist()
        {
            var mylist = db.mylist.ToList();
            return Json(
                new
                {
                    Result = from obj in mylist
                             select new
                             {
                                 obj.mylistid,
                                 obj.usersget,
                                 obj.listname
                             }
                }, JsonRequestBehavior.AllowGet
            );

        }

        //---------------MYQUESTIONS----------------//

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult myquestions(int mylistget)
        {
            var degerler2 = db.myquestions.Where(x => x.mylistget == mylistget).ToList();
            return View(degerler2);
        }

        [HttpGet]
        public ActionResult questionsekle(int viewmylist)
        {
            ViewBag.MyList = db.mylist.ToList();
            ViewBag.UserList = db.users.Where(x => x.viewmylist == viewmylist).ToList();
            return View();
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult questionsekle(myquestions qs1)
        {
            if (!ModelState.IsValid)
            {
                return View("questionsekle");
            }
            qs1.namesurname = Turkce.sesliharfDuzenle(qs1.namesurname);
            qs1.subject = Turkce.sesliharfDuzenle(qs1.subject);
            qs1.message = Turkce.sesliharfDuzenle(qs1.message);
            db.myquestions.Add(qs1);
            db.SaveChanges();
            TempData["questionsGuncelle"] = " ";
            return RedirectToAction("index");
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpGet]
        public ActionResult questionsguncelle(int myquestionsid)
        {
            var questions = db.myquestions.Find(myquestionsid);
            return View("questionsguncelle", questions);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult qsguncelle(myquestions qs)
        {
            if (!ModelState.IsValid)
            {
                return View("qsguncelle");
            }
            var veri = db.myquestions.Find(qs.myquestionsid);
            veri.youremail = qs.youremail;
            veri.subject = Turkce.sesliharfDuzenle(qs.subject);
            veri.message = Turkce.sesliharfDuzenle(qs.message);
            veri.date = qs.date;
            veri.color = qs.color;
            db.SaveChanges();
            TempData["questionsGuncelle"] = " ";
            return RedirectToAction("index");
        }



        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult questionssil(int myquestionsid)
        {
            var sil = db.myquestions.Find(myquestionsid);
            if (sil == null)
            {
                return RedirectToAction("index");
            }
            db.myquestions.Remove(sil);
            db.SaveChanges();
            TempData["questionsGuncelle"] = " ";
            return RedirectToAction("index");
        }
        //-----------------------MY USERS MESSAGE - MY CONNECTİONS MESSAGE - MYUSERS POST------------//

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult mymessagebox(int mylistget)
        {
            var degerler2 = db.mymessage.Where(x => x.mylistget == mylistget).ToList();
            return View(degerler2);
        }

        [Authorize(Roles = "Admin,Yonetici,User")]
        public ActionResult mymessagelist(int usersget)
        {
            var degerler2 = db.mymessage.Where(x => x.usersget == usersget).ToList();
            return View(degerler2);
        }
        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult myMessageCevapla(int mymessageid)

        {
            var mymessageboxcvp = db.mymessage.Find(mymessageid);
            return View("myMessageCevapla", mymessageboxcvp);
        }

        [Authorize(Roles = "Admin,Yonetici,User")]
        [HttpGet]
        public ActionResult mycoachMessageSend()
        {
            return View();
        }

        [Authorize(Roles = "Admin,Yonetici,User")]
        [HttpPost]
        public ActionResult mycoachMessageSend(mymessage ms1)
        {
            if (!ModelState.IsValid)
            {
                return View("index");
            }
            ms1.subject = Turkce.sesliharfDuzenle(ms1.subject);
            ms1.message = Turkce.sesliharfDuzenle(ms1.message);
            db.mymessage.Add(ms1);
            db.SaveChanges();
            TempData["mycoachMessageSendGuncelle"] = " ";
            return RedirectToAction("index");
        }


        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult myMessageCvp(MessageCevapla model, List<HttpPostedFileBase> attachments)

        {
            if (!ModelState.IsValid)
            {
                return View("messagecevapla");
            }
            var veri = db.mymessage.Find(model.mymessageid);
            if (veri != null && veri.youremail == model.youremail)
            {
                veri.youremail = model.youremail;
                veri.subject = Turkce.sesliharfDuzenle(model.subject);

                using (MailMessage mm = new MailMessage(model.Email, model.youremail))
                {
                    mm.Subject = model.subject;
                    mm.Body = Turkce.sesliharfDuzenle(model.Body);
                    foreach (HttpPostedFileBase attachment in attachments)
                    {
                        if (attachment != null)
                        {
                            string fileName = Path.GetFileName(attachment.FileName);
                            mm.Attachments.Add(new Attachment(attachment.InputStream, fileName));
                        }
                    }
                    mm.IsBodyHtml = false;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential(model.Email, model.Password);
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 587;
                    smtp.Send(mm);
                }
                db.SaveChanges();
                TempData["MessageSend"] = " ";
                return RedirectToAction("index");
            }
            else
            {
                ModelState.Clear();
                ViewBag.Error2 = "E-Posta Adresi Bulunamadı";
                return View();
            }
        }
        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult mymessagesil(int mymessageid)
        {
            var sil = db.mymessage.Find(mymessageid);
            if (sil == null)
            {
                return RedirectToAction("index");
            }
            db.mymessage.Remove(sil);
            db.SaveChanges();
            TempData["MessageSil"] = " ";
            return RedirectToAction("index");
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult myconnect(int usersget)
        {
            var degerlermy2 = db.myconnect.Where(x => x.usersget == usersget).ToList();
            return View(degerlermy2);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult myconnectCevapla(int myconnectid)

        {
            var messageboxcvp = db.myconnect.Find(myconnectid);
            return View("messagecevapla", messageboxcvp);
        }

        [Authorize(Roles = "Admin,Yonetici")]
        [HttpPost]
        public ActionResult myconnectCvp(MessageCevapla model, List<HttpPostedFileBase> attachments)

        {
            if (!ModelState.IsValid)
            {
                return View("messagecevapla");
            }
            var veri = db.myconnect.Find(model.myconnectid);
            if (veri != null && veri.youremail == model.youremail)
            {
                veri.youremail = model.youremail;
                veri.subject = Turkce.sesliharfDuzenle(model.subject);

                using (MailMessage mm = new MailMessage(model.Email, model.youremail))
                {
                    mm.Subject = model.subject;
                    mm.Body = Turkce.sesliharfDuzenle(model.Body);
                    foreach (HttpPostedFileBase attachment in attachments)
                    {
                        if (attachment != null)
                        {
                            string fileName = Path.GetFileName(attachment.FileName);
                            mm.Attachments.Add(new Attachment(attachment.InputStream, fileName));
                        }
                    }
                    mm.IsBodyHtml = false;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential(model.Email, model.Password);
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 587;
                    smtp.Send(mm);
                }
                db.SaveChanges();
                TempData["MessageSend"] = " ";
                return RedirectToAction("messagebox");
            }
            else
            {
                ModelState.Clear();
                ViewBag.Error2 = "E-Posta Adresi Bulunamadı";
                return View();
            }
        }



        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult myconnectsil(int myconnectid)
        {
            var sil = db.myconnect.Find(myconnectid);
            if (sil == null)
            {
                return RedirectToAction("index");
            }
            db.myconnect.Remove(sil);
            db.SaveChanges();
            TempData["MessageSil"] = " ";
            return RedirectToAction("index");
        }

        [Authorize(Roles = "Admin,Yonetici")]
        public ActionResult sendusersanalysis(int mylistget)
        {
            var degerler2 = db.sendusersanalysis.Where(x => x.mylistget == mylistget).ToList();
            return View(degerler2);
        }

    }
}