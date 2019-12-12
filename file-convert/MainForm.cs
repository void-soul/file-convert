using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Net;
using System.Text;
using System.Windows.Forms;
using System.Runtime.InteropServices;
using System.Diagnostics;

namespace file_convert
{

    public partial class MainForm : Form
    {

        class OfficeDomain
        {
            public string path;
            public string result;
            public string prefix;
            public string pdfFileName;
            public string fileName;
        }


        public MainForm()
        {
            InitializeComponent();
        }


        private void setLog(string info)
        {
            Action<string> action = (data) => {
                if(logBox.Lines.Length > 500)
                {
                    logBox.Text = "";
                }
                logBox.SelectionColor = Color.Black;
                logBox.AppendText(String.Format("{0} {1}{2}", DateTime.Now.ToLocalTime().ToString(), data, "\r\n"));
            };
            Invoke(action, info);
        }
        private void log(string format, object arg0, object arg1)
        {
            setLog(String.Format(format, arg0, arg1));
        }
        private void log(string format, object arg0, object arg1, object arg2)
        {
            setLog(String.Format(format, arg0, arg1, arg2));
        }
        private void log(string format)
        {
            setLog(String.Format(format));
        }
        private void log(string format, object arg0)
        {
            setLog(String.Format(format, arg0));
        }

        private void setError(string info)
        {
            Action<string> action = (data) => {
                if (logBox.Lines.Length > 500)
                {
                    logBox.Text = "";
                }
                logBox.SelectionColor = Color.Red;
                logBox.AppendText(String.Format("{0} {1}{2}", DateTime.Now.ToLocalTime().ToString(), data, "\r\n"));
            };
            Invoke(action, info);
        }
        private void error(string format, object arg0, object arg1)
        {
            setError(String.Format(format, arg0, arg1));
        }
        private void error(string format)
        {
            setError(String.Format(format));
        }
        private void error(string format, object arg0)
        {
            setError(String.Format(format, arg0));
        }

        private void setWarn(string info)
        {
            Action<string> action = (data) => {
                if (logBox.Lines.Length > 500)
                {
                    logBox.Text = "";
                }
                logBox.SelectionColor = Color.Blue;
                logBox.AppendText(String.Format("{0} {1}{2}", DateTime.Now.ToLocalTime().ToString(), data, "\r\n"));
            };
            Invoke(action, info);
        }
        private void warn(string format, object arg0, object arg1)
        {
            setWarn(String.Format(format, arg0, arg1));
        }
        private void warn(string format)
        {
            setWarn(String.Format(format));
        }
        private void warn(string format, object arg0)
        {
            setWarn(String.Format(format, arg0));
        }

        private void killOldProcess(string name)
        {
            log("强制关闭{0}.exe", name);
            Process[] pro = Process.GetProcesses();
            for (int i = 0; i < pro.Length; i++)
            {
                if (pro[i].ProcessName.ToString().ToLower().Equals(name))
                {
                    pro[i].Kill();
                }
            }
        }




        private string[] word = { ".doc", ".docx", ".docm", ".dotx", ".dotm", ".dot", ".xps", ".rtf", ".odt", ".wpt" };
        private string word_name = "wps";
        private Word.Application wordApp;
        private void word_start()
        {
            if (wordApp != null)
            {
                log("尝试关闭旧的{0}.exe...", word_name);
                try
                {
                    log("释放旧的word com对象...");
                    wordApp.Quit(Word.WdSaveOptions.wdDoNotSaveChanges);
                    Marshal.ReleaseComObject(wordApp);
                }
                catch (Exception e)
                {
                    error("释放word com对象失败:{0}...内存泄漏+1", e.Message);
                }
            }

            killOldProcess(word_name);
            wordApp = new Word.Application();
            log("word com建立完毕");
        }
        private Boolean word_exec(OfficeDomain office)
        {
            Boolean result = false;
            if (Array.IndexOf(word, office.prefix) > -1)
            {
                log("word开始工作...");
                Word.Document doc = null;
                try
                {
                    //打开,参数含义：路径、格式不兼容不警告、只读
                    doc = wordApp.Documents.Open(office.path, false, true);
                    //转换
                    doc.ExportAsFixedFormat(office.pdfFileName, Word.WdExportFormat.wdExportFormatPDF);
                    result = true;
                    log("word工作完毕,准备关闭文件..");
                }
                catch (Exception e)
                {
                    error("word工作异常：{0}", e.Message);
                }
                finally
                {
                    if (doc != null)
                    {
                        try
                        {
                            doc.Close();
                            log("word文件成功关闭..");
                        }
                        catch (Exception e)
                        {
                            error("word文件关闭时发生错误{1},重启{0}.exe", word_name, e.Message);
                            word_start();
                        }
                    }
                }
            }
            return result;
        }




        private string[] ppt = { ".dps", ".dpt", ".ppt", ".pot", ".pps", ".pptx" };
        private string ppt_name = "wpp";
        private PowerPoint.Application pptApp;
        private void ppt_start()
        {
            if (pptApp != null)
            {
                log("尝试关闭旧的ppt程序...");
                try
                {

                    log("释放旧的ppt com对象...");
                    pptApp.Quit();
                    Marshal.ReleaseComObject(pptApp);
                }
                catch (Exception e)
                {
                    error("释放ppt com对象失败{0}...内存泄漏+1", e.Message);
                }
            }

            killOldProcess(ppt_name);
            pptApp = new PowerPoint.Application();
            log("ppt com建立完毕");
        }
        private Boolean ppt_exec(OfficeDomain office)
        {
            Boolean result = false;
            if (Array.IndexOf(ppt, office.prefix) > -1)
            {
                log("ppt开始工作...");
                PowerPoint.Presentation presentation = null;
                try
                {
                    //参数含义：路径、只读
                    presentation = pptApp.Presentations.Open(office.path, PowerPoint.MsoTriState.msoTrue);
                    //转换
                    presentation.ExportAsFixedFormat(office.pdfFileName, PowerPoint.PpFixedFormatType.ppFixedFormatTypePDF, PowerPoint.PpFixedFormatIntent.ppFixedFormatIntentScreen);
                    result = true;
                    log("ppt工作完毕,准备关闭文件..");
                }
                catch (Exception e)
                {
                    error("ppt工作异常：{0}", e.Message);
                }
                finally
                {
                    if (presentation != null)
                    {
                        try
                        {
                            presentation.Close();
                            log("ppt文件成功关闭..");
                        }
                        catch (Exception e)
                        {
                            error("ppt关闭文件时发生错误{1},重启{0}.exe", ppt_name, e.Message);
                            ppt_start();
                        }

                    }
                }
            }
            return result;
        }




        private string[] xls = { ".et", ".ett", ".xls", ".xlsx", ".xlt", ".dbf", ".cxv", ".prn", ".xlsm", ".dif" };
        private string xls_name = "et";
        private Excel.Application excelApp;
        private void xls_start()
        {
            if (excelApp != null)
            {
                log("尝试关闭旧的excel程序...");
                try
                {

                    log("释放旧的excel com对象...");
                    excelApp.Quit();
                    Marshal.ReleaseComObject(excelApp);
                }
                catch (Exception e)
                {
                    error("释放excel com对象失败{0}...内存泄漏+1", e.Message);
                }
            }

            killOldProcess(xls_name);
            excelApp = new Excel.Application();
            log("excel com建立完毕");
        }
        private Boolean xls_exec(OfficeDomain office)
        {
            Boolean result = false;
            if (Array.IndexOf(xls, office.prefix) > -1)
            {
                log("excel开始工作...");
                Excel.Workbook workbook = null;
                try
                {
                    //参数含义：路径、只读
                    workbook = excelApp.Workbooks.Open(office.path, 0, true);
                    //转换
                    workbook.ExportAsFixedFormat(Excel.XlFixedFormatType.xlTypePDF, office.pdfFileName);
                    result = true;
                    log("excel工作完毕,准备关闭文件..");
                }
                catch (Exception e)
                {
                    error("excel工作异常：{0}", e.Message);
                }
                finally
                {
                    if (workbook != null)
                    {
                        try
                        {
                            workbook.Close();
                            log("excel文件成功关闭..");
                        }
                        catch (Exception e)
                        {
                            error("excel文件关闭时发生错误{1},重启{0}.exe", xls_name, e.Message);
                            xls_start();
                        }

                    }
                }
            }
            return result;
        }



        private string pdf_name = "acrobat";
        //PDF 主程序
        private Acrobat.CAcroPDDoc pdfDoc;
        //PDF 渲染程序
        private Acrobat.CAcroRect pdfRect;
        private ImageCodecInfo imageCodecInfo;
        private void pdf_start()
        {
            Boolean flagAddNew = true;
            if (pdfDoc != null)
            {
                flagAddNew = false;
                log("尝试关闭旧的pdf程序...");
                try
                {

                    log("释放旧的pdf com对象...");
                    pdfDoc.Close();
                    Marshal.ReleaseComObject(pdfDoc);
                }
                catch (Exception e)
                {
                    error("释放pdf com对象失败{0}...内存泄漏+1", e.Message);
                }
            }
            killOldProcess(pdf_name);
            pdfDoc = (Acrobat.CAcroPDDoc)Microsoft.VisualBasic.Interaction.CreateObject("AcroExch.PDDoc", "");

            if (flagAddNew)
            {
                pdfRect = (Acrobat.CAcroRect)Microsoft.VisualBasic.Interaction.CreateObject("AcroExch.Rect", "");
                pdfRect.Top = 0;
                pdfRect.Left = 0;


                ImageCodecInfo[] codecs = ImageCodecInfo.GetImageDecoders();
                foreach (ImageCodecInfo codec in codecs)
                {
                    if (codec.FormatID == ImageFormat.Png.Guid)
                    {
                        imageCodecInfo = codec;
                        break;
                    }
                }
            }

            log("pdf com建立完毕");
        }
        private Boolean pdf_exec(OfficeDomain office)
        {
            Boolean result = false;
            log("pdf开始工作...");
            if (File.Exists(office.pdfFileName))
            {
                Acrobat.CAcroPDPage pdfPage;
                Acrobat.CAcroPoint pdfPoint;
                int pageCount = 0;
                double resolution = 1.2;
                //打开 pdf
                bool ret = pdfDoc.Open(office.pdfFileName);
                if (!ret)
                {
                    error("pdf打开失败了,尝试重启pdf程序");
                    pdf_start();
                }
                else
                {
                    try
                    {
                        //pdf 页码
                        pageCount = pdfDoc.GetNumPages();
                        log("pdf检测页码:{0}", pageCount);
                        //缓存文件
                        office.result = "+" + pageCount;
                        string info = Path.Combine(office.fileName, "0.info");
                        if (!File.Exists(info))
                        {
                            File.WriteAllText(info, pageCount + "");
                            log("成功缓存页码");
                        }
                        //循环生成pdf
                        for (int i = 0; i < pageCount; i++)
                        {
                            string pngName = Path.Combine(office.fileName, i + "") + ".png";
                            if (File.Exists(pngName))
                            {
                                warn("第 {0} 张 skip", i + 1);
                                continue;
                            }

                            pdfPage = (Acrobat.CAcroPDPage)pdfDoc.AcquirePage(i);
                            pdfPoint = (Acrobat.CAcroPoint)pdfPage.GetSize();

                            int imgWidth = (int)((double)pdfPoint.x * resolution);
                            int imgHeight = (int)((double)pdfPoint.y * resolution);
                            pdfRect.right = (short)imgWidth;
                            pdfRect.Left = 0;
                            pdfRect.Top = 0;
                            pdfRect.bottom = (short)imgHeight;
                            pdfPage.CopyToClipboard(pdfRect, 0, 0, (short)(100 * resolution));

                            IDataObject clipboardData = Clipboard.GetDataObject();

                            if (clipboardData != null && clipboardData.GetDataPresent(DataFormats.Bitmap))
                            {
                                Bitmap pdfBitmap = (Bitmap)clipboardData.GetData(DataFormats.Bitmap);
                                if (pdfBitmap != null)
                                {
                                    pdfBitmap.Save(pngName, ImageFormat.Png);
                                    pdfBitmap.Dispose();
                                    log("第 {0} 张 created", i);
                                }
                                else
                                {
                                    error("第 {0} 张 error", i);
                                }
                            }
                            else
                            {
                                error("第 {0} 张 error", i);
                            }
                            Marshal.ReleaseComObject(pdfPage);
                        }
                        result = true;
                        log("pdf工作完毕,准备关闭文件");
                        try
                        {
                            pdfDoc.Close();
                            log("pdf文件关闭成功");
                        }
                        catch (Exception e)
                        {
                            error("pdf文件关闭失败:{0},尝试重启程序", e.Message);
                            pdf_start();
                        }
                    }
                    catch (Exception e2)
                    {
                        error("pdf转换失败:{0}", e2.Message);
                    }
                }
            }
            else
            {
                error("pdf工作时发现PDF文件不存在");
            }
            return result;
        }
        private void pdf2png_handle(Object prv)
        {
            OfficeDomain office = (OfficeDomain)prv;
            office.result = "";
            if (office.path == null || office.path.IndexOf(".") == -1)
            {
                office.result = "1";
                return;
            }

            //路径+文件名（不含后缀）,作为文件夹使用
            office.fileName = office.path + ".files";
            //pdf文件名
            office.pdfFileName = office.path;
            //创建文件夹
            if (!Directory.Exists(office.fileName)) { Directory.CreateDirectory(office.fileName); }
            // 复制pdf为0.pdf
            String pdfName = office.fileName + "\\0.pdf";
            if (!File.Exists(pdfName)) {File.Copy(office.pdfFileName, pdfName);}
            //文件加锁
            string lockFile = Path.Combine(office.fileName, "0.lock");
            File.WriteAllText(lockFile, "");
            log("开始处理{0}", office.path);
            DateTime start = DateTime.Now;
            Boolean goon = pdf_exec(office);
            if (!goon)
            {
                office.result = "3";
            }

            try
            {
                File.Delete(lockFile);
            }
            catch (Exception)
            {
                error("锁定文件删除失败");
            }

            log("{0} 处理完毕，耗时{1}", office.path, (DateTime.Now - start).ToString("g"));
        }


        /// <summary>
        /// http://127.0.0.1:端口?video=文件决定路径
        /// 返回视频秒数
        /// </summary>
        private void video_handle_start()
        {
            log("视频工具准备完毕");
        }
        private int video_handle(string path)
        {
            try
            {
                log("{0} 视频信息读取 ing..", path);
                Shell32.Shell shell = new Shell32.Shell();
                //文件路径              
                Shell32.Folder folder = shell.NameSpace(path.Substring(0, path.LastIndexOf("\\")));
                //文件名称            
                Shell32.FolderItem folderitem = folder.ParseName(path.Substring(path.LastIndexOf("\\") + 1));
                string len;
                //string kbps = folder.GetDetailsOf(folderitem, 308);
                //int i = 0;
                //while (true)
                //{
                //    //获取属性名称  
                //    string key = folder.GetDetailsOf(null, i);
                //    if (string.IsNullOrEmpty(key))
                //    {
                //        //当无属性可取时，退出循环  
                //        break;
                //    }
                //    //获取属性值  
                //    string value = folder.GetDetailsOf(folderitem, i);
                //    Console.WriteLine("{0}:{1}", key, value);
                //    i++;
                //}
                //多系统兼容
                if (Environment.OSVersion.Version.Major >= 6)
                {
                    len = folder.GetDetailsOf(folderitem, 27);
                }
                else
                {
                    len = folder.GetDetailsOf(folderitem, 21);
                }
                string[] str = len.Split(new char[] { ':' });
                int sum = 0;
                if (str.Length == 3)
                {
                    sum = int.Parse(str[0]) * 60 * 60 + int.Parse(str[1]) * 60 + int.Parse(str[2]);
                    log("视频信息{0}s", sum);
                }
                else
                {
                    error("视频信息读取失败,也行是系统功能被限制!");
                }
                return sum;
            }
            catch (Exception ex)
            {
                error("读取视频信息发生错误{0}", ex.Message);
                return 0;
            }
        }


        /// <summary>
        /// 
        /// http://127.0.0.1:端口?file=文件绝对路径
        /// 
        ///  返回值 "+pages" = 转换成功，并返回页码
        ///  返回值 "1" = 文件错误
        ///  返回值 "2" = 格式错误，无法转换为PDF
        ///  返回值 "3" = pdf读取错误
        ///  
        ///  生成文件路径举例：
        ///  input = /user/local/files/test.doc
        ///  将生成
        ///  /user/local/files/test.doc/0.pdf
        ///  /user/local/file/test.doc/0.png
        ///  /user/local/file/test/1.png
        ///  ...
        /// </summary>
        private void office2png_handle(Object prv)
        {
            OfficeDomain office = (OfficeDomain)prv;
            office.result = "";
            if (office.path == null || office.path.IndexOf(".") == -1)
            {
                office.result = "1";
                return;
            }

            //路径+文件名（不含后缀）,作为文件夹使用
            office.fileName = office.path + ".files";
            //pdf文件名
            office.pdfFileName = office.fileName + "\\0.pdf";
            //后缀
            office.prefix = office.path.Substring(office.path.LastIndexOf("."));
            //创建文件夹
            if (!Directory.Exists(office.fileName)) { Directory.CreateDirectory(office.fileName); }
            //文件加锁
            string lockFile = Path.Combine(office.fileName, "0.lock");
            File.WriteAllText(lockFile, "");


            log("开始处理{0}", office.path);

            DateTime start = DateTime.Now;
            //PDF 转换开始
            Boolean goon = true;
            if (!File.Exists(office.pdfFileName))
            {
                goon = word_exec(office) || ppt_exec(office) || xls_exec(office);
            }
            else
            {
                warn("跳过pdf文件生成..");
            }
            //PNG 转换开始
            if (goon)
            {
                goon = pdf_exec(office);
            }
            else
            {
                office.result = "2";
            }

            if (!goon)
            {
                office.result = "3";
            }

            try
            {
                File.Delete(lockFile);
            }
            catch (Exception)
            {
                error("锁定文件删除失败");
            }

            log("{0} 处理完毕，耗时{1}", office.path, (DateTime.Now - start).ToString("g"));
        }
        private void office2png_handle_start()
        {
            word_start();
            xls_start();
            ppt_start();
            pdf_start();
        }


        private HttpListener httpListener;
        private void request_handel(IAsyncResult ar)
        {
            httpListener = ar.AsyncState as HttpListener;
            HttpListenerContext context = httpListener.EndGetContext(ar);
            httpListener.BeginGetContext(new AsyncCallback(request_handel), httpListener);
            HttpListenerRequest request = context.Request;
            HttpListenerResponse response = context.Response;
            string file = request.QueryString["file"];
            string video = request.QueryString["video"];
            string pdf = request.QueryString["pdf"];

            log("接到请求,file = {0},video = {1},pdf = {2}", file, video, pdf);

            string result = "";
            int code = 401;
            if (file != null && !"".Equals(file))
            {
                if (File.Exists(file))
                {
                    OfficeDomain office = new OfficeDomain
                    {
                        path = file
                    };
                    Action<OfficeDomain> action = (data) => {
                        office2png_handle(office);
                    };
                    Invoke(action, office);
                    result = office.result;
                    code = 200;
                }
                else
                {
                    error("file 路径错误");
                    code = 500;
                }
            }
            else if (video != null && !"".Equals(video))
            {
                if (File.Exists(video))
                {
                    code = 200;
                    result = video_handle(video) + "";
                }
                else
                {
                    error("video 路径错误");
                    code = 500;
                }
            }
            else if (pdf != null && !"".Equals(pdf))
            {
                if (File.Exists(pdf))
                {
                    OfficeDomain office = new OfficeDomain
                    {
                        path = pdf
                    };
                    Action<OfficeDomain> action = (data) => {
                        pdf2png_handle(office);
                    };
                    Invoke(action, office);
                    result = office.result;
                    code = 200;
                }
                else
                {
                    error("file 路径错误");
                    code = 500;
                }
            }
            else
            {
                code = 404;
            }
            response.StatusCode = code;
            Stream output = response.OutputStream;

            byte[] buffer = Encoding.UTF8.GetBytes(result);
            response.ContentLength64 = buffer.Length;
            output.Write(buffer, 0, buffer.Length);
            output.Close();
        }
        private void request_handel_start(string port = "8222")
        {
            office2png_handle_start();
            video_handle_start();

            log("监听地址:http://127.0.0.1:{0}/", port);
            httpListener = new HttpListener();
            httpListener.Prefixes.Add(String.Format("http://127.0.0.1:{0}/", port));
            httpListener.Start();
            httpListener.BeginGetContext(new AsyncCallback(request_handel), httpListener);
        }

        private void MainForm_Shown(object sender, EventArgs e)
        {
            request_handel_start();
        }
    }
}
