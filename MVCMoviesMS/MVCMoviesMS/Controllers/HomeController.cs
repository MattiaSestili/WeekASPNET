using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using MVCMoviesMS.Models;


namespace MVCMoviesMS.Controllers
{
    public class HomeController : Controller
    {
        private MoviesMattiaEntities db = new MoviesMattiaEntities();
        
        // GET: Default
        public ActionResult Index()
        {
            //LINQ query to return all movies from database
            var movies = from m in db.Movies
                         select m;

            return View(movies);
        }

        public ActionResult Details(int? id)
        {
            Movie movie = db.Movies.Find(id);

            return View(movie);
        }

        [HttpGet]
        public ActionResult Edit(int? id)
        {
            Movie movie = db.Movies.Find(id);

            return View(movie);
        }
        [HttpPost]
        public ActionResult Edit(Movie movie)
        {
            //get the edited data
            db.Entry(movie).State = EntityState.Modified;
            //save change to the DB
            db.SaveChanges();
            //go back to the index action method
            return RedirectToAction("Index");
        }

        [HttpGet]
        public ActionResult Delete(int? id)
        {
            Movie movie = db.Movies.Find(id);

            return View(movie);
        }

        [HttpPost, ActionName("Delete")]
        public ActionResult Delete(int id)
        {
            Movie movie = db.Movies.Find(id);
            db.Movies.Remove(movie);
            db.SaveChanges();
            
            return RedirectToAction("Index");
        }
    }
}