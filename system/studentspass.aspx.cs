﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Data.SqlClient;
using System.Data;

public partial class students_pass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
        }
    }

    /// <summary>
    /// 修改密码
    ///</summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSave_Click(object sender, EventArgs e)
    {   
                   //根据用户编号和原密码得到用户信息
            SqlDataReader sdr = SqlHelper.ExecuteReader("select * from students where sno='" + Session["aid"].ToString() + "' and pass='" + txt_pwd.Text + "'");

            //判断原密码是否正确
            if (sdr.Read())
            {
                //更新新密码
                SqlHelper.ExecuteNonQuery("update students set pass='" + TextBox1.Text + "' where sno='" + Session["aid"].ToString()+ "'");
                MessageBox.Show(this, "修改成功!");

            }
            else
            {
                MessageBox.Show(this, "原密码不正确!");
            }

    }

}
