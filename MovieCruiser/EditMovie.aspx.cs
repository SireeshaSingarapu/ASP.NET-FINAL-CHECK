using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Com.Cognizant.MovieCruiser.Dao;
using Com.Cognizant.MovieCruiser.Model;
using Com.Cognizant.MovieCruiser.Utility;


namespace MovieCruiser
{
    public partial class EditMovie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["id"] != null)
            {
                if (!IsPostBack)
                {
                    if (Request.QueryString["id"] != null)
                    {
                        //MovieDaoCollection movieDao = new MovieDaoCollection();
                        MovieDaoCollection.MovieListInitialization();
                        int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                        Movie obj = (from x in MovieDaoCollection.movielist
                                     where x.Id == id
                                     select x).FirstOrDefault();
                        if (obj != null)
                        {
                            txtTitle.Text = obj.Title;
                            txtGross.Text = obj.BoxOffice.ToString();
                            if (obj.Active)
                            {
                                RadioButton1.Checked = true;
                            }
                            else
                            {
                                RadioButton2.Checked = true;
                            }
                            txtDateOfLaunch.Text = obj.DateOfLaunch.ToString();
                            DropDownList1.SelectedValue = obj.Genre;
                            if (obj.HasTeaser)
                            {
                                CheckBox1.Checked = true;
                            }
                            else
                            {
                                CheckBox1.Checked = false;
                            }


                            
                        }

                    }
                }
            }
        }
            protected void Button1_Click(object sender, EventArgs e)
            {
              
                MovieDaoCollection.MovieListInitialization();
                int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                Boolean active;
                Boolean hasTeaser;
                if (RadioButton1.Text == "Yes")
                {
                    active = true;
                }
                else
                {
                    active = false;
                }

                if (CheckBox1.Checked)
                {
                    hasTeaser = true;
                }
                else
                {
                    hasTeaser = false;
                }
                MovieDaoCollection.movielist.Where(w => w.Id == id).ToList().ForEach(i =>
                {
                    i.Title = txtTitle.Text;
                    i.BoxOffice = txtGross.Text;
                    i.Active = active;
                    i.DateOfLaunch = DateUtility.ConvertToDate(txtDateOfLaunch.Text);
                    i.Genre = DropDownList1.SelectedValue;
                    i.HasTeaser = hasTeaser;
                });
                Response.Redirect("EditMovieStatus.aspx");
            }


        }
    }









