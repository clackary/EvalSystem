using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for EvalSystemDB
/// </summary>
namespace EvalSystem
{
    public class EvalSystemDB
    {
    	public EvalSystemDB()
    	{
    	}


        public static SqlConnection GetConnection()
        {
            SqlConnection connection = null;

            string connectionString = "Data Source=(LocalDB)\\v11.0;AttachDbFilename=|DataDirectory|\\EvalSystem.mdf;Integrated Security=True";
            connection = new SqlConnection(connectionString);

            return connection;
        }

        //classes taught list
        public static  ClassesTaughtModel GetClassesTaught(int instructorID, int year)
        {
            ClassesTaughtModel classesTaught = null;
            SqlConnection connection = GetConnection();

            string selectStatement = "EXEC ClassesTaught @instructorID, @year";

            SqlCommand command = new SqlCommand(selectStatement, connection);

            command.Parameters.AddWithValue("instructorID", instructorID);
            command.Parameters.AddWithValue("year", year);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                classesTaught = new ClassesTaughtModel();
                while(reader.Read())
                {
                    ClassesTaughtModel.Data data = new ClassesTaughtModel.Data();
                    data.bannercrn = Convert.ToInt32(reader["bannerCRN"].ToString());
                    data.semester = Convert.ToInt32(reader["Semester"].ToString());
                    data.year = Convert.ToInt32(reader["Year"].ToString());
                    data.subcode = reader["SubjectCode"].ToString();
                    data.coursenum = Convert.ToInt32(reader["CourseNumber"].ToString());
                    data.score = Convert.ToDouble(reader["score"].ToString());
                    data.responses = Convert.ToInt32(reader["responses"].ToString());
                    data.students = Convert.ToInt32(reader["students"].ToString());
                    data.stddev = Convert.ToDouble(reader["standardDeviation"].ToString());
                    data.testname = reader["testName"].ToString();

                    classesTaught.DATA.Add(data);
                }

                return classesTaught;
            }
            
            catch(SqlException ex)
            {
                return null;
            }


            finally
            {
                connection.Close();
            }


        }

        public static YearsTaughtModel GetYearsTaught(int instructorID)
        {
            YearsTaughtModel yearsTaught = null;
            SqlConnection connection = GetConnection();

            string selectStatement = "EXEC YearsTaught @instructorID";

            SqlCommand command = new SqlCommand(selectStatement, connection);

            command.Parameters.AddWithValue("instructorID", instructorID);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                yearsTaught = new YearsTaughtModel();
                while (reader.Read())
                {
                    var data = new YearsTaughtModel.Data();
                    data.instructorid= Convert.ToInt32(reader["instructorID"].ToString());
                    data.semester = Convert.ToInt32(reader["semester"].ToString());
                    data.year = Convert.ToInt32(reader["Year"].ToString());
                   

                    yearsTaught.DATA.Add(data);
                }

                return yearsTaught;
            }

            catch (SqlException ex)
            {
                return null;
            }


            finally
            {
                connection.Close();
            }
        }


        public static ProfessorsWithAnswersModel GetProfessorsWithAnswers(string department)
        {
            ProfessorsWithAnswersModel professors = null;
            SqlConnection connection = GetConnection();

            string selectStatement = "EXEC ProfessorsWithAnswers @dept";

            SqlCommand command = new SqlCommand(selectStatement, connection);

            command.Parameters.AddWithValue("dept", department);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                professors = new ProfessorsWithAnswersModel();
                while (reader.Read())
                {
                    var data = new ProfessorsWithAnswersModel.Data();
                    data.instructorid = Convert.ToInt32(reader["instructorID"].ToString());
                    data.firstname = reader["FirstName"].ToString();
                    data.lastname = reader["LastName"].ToString();


                    professors.DATA.Add(data);
                }

                return professors;
            }

            catch (SqlException ex)
            {
                return null;
            }


            finally
            {
                connection.Close();
            }
        }

        public static AnswerCountModel GetAnswerCount(int crn, int semester, int year)
        {
            AnswerCountModel answerCount = null;
            SqlConnection connection = GetConnection();

            string selectStatement = "EXEC AnswerCount @crn, @semester, @year";

            SqlCommand command = new SqlCommand(selectStatement, connection);

            command.Parameters.AddWithValue("crn", crn);
            command.Parameters.AddWithValue("semester", semester);
            command.Parameters.AddWithValue("year", year);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                answerCount = new AnswerCountModel();
                while (reader.Read())
                {
                    var data = new AnswerCountModel.Data();
                    data.crn= Convert.ToInt32(reader["CRN"].ToString());
                    data.course = reader["Course"].ToString();
                    data.question = reader["Question"].ToString();
                    data.answers = reader["Answers"].ToString();
                    data.answersCount = Convert.ToInt32(reader["Answer Count"].ToString());
                    data.questionID = Convert.ToInt32(reader["QuestionID"].ToString());
                    data.sequence = Convert.ToInt32(reader["Sequence"].ToString());
                    data.studentCount = Convert.ToInt32(reader["Student Count"].ToString());

                    answerCount.DATA.Add(data);
                }

                return answerCount;
            }

            catch (SqlException ex)
            {
                return null;
            }


            finally
            {
                connection.Close();
            }

        }


        public static CrnDetailsModel GetCrnDetails(int crn, int semester, int year)
        {
            CrnDetailsModel crnDetails = null;
            SqlConnection connection = GetConnection();

            string selectStatement = "EXEC CrnDetails @crn, @year, @semester";

            SqlCommand command = new SqlCommand(selectStatement, connection);

            command.Parameters.AddWithValue("crn", crn);
            command.Parameters.AddWithValue("semester", semester);
            command.Parameters.AddWithValue("year", year);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                crnDetails = new CrnDetailsModel();
                while (reader.Read())
                {
                    var data = new CrnDetailsModel.Data();
                    data.classString = reader["ClassString"].ToString();
                    data.crn = Convert.ToInt32(reader["bannerCRN"].ToString());
                    data.section = reader["Section"].ToString();
                    data.semester = Convert.ToInt32(reader["Semester"].ToString());
                    data.semesterString = reader["SemesterString"].ToString();
                    /*if (!reader["Block"].ToString().Equals("NULL"))
                        data.block = Convert.ToInt32(reader["Block"].ToString());
                    */
                    data.block = 0;
                    data.year = Convert.ToInt32(reader["Year"].ToString());
                    data.subjectCode = reader["SubjectCode"].ToString();
                    data.courseNum = Convert.ToInt32(reader["CourseNumber"].ToString());
                    data.instructorID = Convert.ToInt32(reader["instructorID"].ToString());
                    data.firstName = reader["FirstName"].ToString();
                    data.lastName = reader["LastName"].ToString();
                    data.email = reader["Email"].ToString();
                    data.responses = Convert.ToInt32(reader["responses"].ToString());
                    data.students = Convert.ToInt32(reader["students"].ToString());
                    data.testID = Convert.ToInt32(reader["testID"].ToString());
                    data.testName = reader["testName"].ToString();
                    
                    crnDetails.DATA.Add(data);
                }

                return crnDetails;
            }

            catch (SqlException ex)
            {
                return null;
            }


            finally
            {
                connection.Close();
            }

        }

        public static EssayAnswersModel GetEssayAnswers(int crn, int semester, int year)
        {
            EssayAnswersModel essayAnswers = null;
            SqlConnection connection = GetConnection();

            string selectStatement = "EXEC EssayAnswers @crn, @year, @semester";

            SqlCommand command = new SqlCommand(selectStatement, connection);

            command.Parameters.AddWithValue("crn", crn);
            command.Parameters.AddWithValue("semester", semester);
            command.Parameters.AddWithValue("year", year);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                essayAnswers = new EssayAnswersModel();
                while (reader.Read())
                {
                    var data = new EssayAnswersModel.Data();
                    data.id = Convert.ToInt32(reader[0].ToString());
                    data.crn = Convert.ToInt32(reader["CRN"].ToString());
                    data.subjectCode = reader["subjectCode"].ToString();
                    data.courseNum = reader["courseNumber"].ToString();
                    data.semester = Convert.ToInt32(reader["semester"].ToString());
                    /*if (!reader["Block"].ToString().Equals("NULL"))
                        data.block = Convert.ToInt32(reader["Block"].ToString());
                    */
                    data.block = 0;
                    data.questionID = Convert.ToInt32(reader[6].ToString());
                    
                    data.questionResponse = Convert.ToInt32(reader[7].ToString());
                    data.question = reader["Question"].ToString();
                    data.answer = reader["Answer"].ToString();
                    data.student = Convert.ToInt32(reader["student"].ToString());
                    essayAnswers.DATA.Add(data);
                }

                return essayAnswers;
            }

            catch (SqlException ex)
            {
                return null;
            }


            finally
            {
                connection.Close();
            }

        }

        public static CrnStatisticsModel GetCrnStatistics(int crn, int semester, int year)
        {
            CrnStatisticsModel crnStatistics = null;
            SqlConnection connection = GetConnection();

            string selectStatement = "EXEC CrnStatistics @crn, @year, @semester";

            SqlCommand command = new SqlCommand(selectStatement, connection);

            command.Parameters.AddWithValue("crn", crn);
            command.Parameters.AddWithValue("semester", semester);
            command.Parameters.AddWithValue("year", year);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                crnStatistics = new CrnStatisticsModel();
                while (reader.Read())
                {
                    var data = new CrnStatisticsModel.Data();
                    data.InstructorSemAverage = Convert.ToDouble(reader["InstructorSemesterAverage"]);
                    data.InstructorSemSTDev = Convert.ToDouble(reader["InstructorSemesterSTDeviation"].ToString());
                    data.DepartmentSemAverage = Convert.ToDouble(reader["DepartmentSemesterAverage"]);
                    data.DepartmentSemSTDev = Convert.ToDouble(reader["DepartmentSemesterSTDeviation"]);
                    data.ClassScore = Convert.ToDouble(reader["ClassScore"]);
                    data.ClassSTDev = Convert.ToDouble(reader["ClassSTDeviation"]);
                    data.DecTile = Convert.ToInt32(reader["DecTile"]);
                    data.DepClassFiveYearAverage = Convert.ToDouble(reader["DepartmentClassFiveYearAverage"]);
                    data.DepClassFiveYearSTDev = Convert.ToDouble(reader["DepartmentClassFiveYearSTDeviation"]);
                    data.InstructClassFiveYearAverage = Convert.ToDouble(reader["InstructorClassFiveYearAverage"]);
                    data.InstructClassFiveYearSTDev = Convert.ToDouble(reader["InstructorClassFiveYearSTDeviation"]);

                    crnStatistics.DATA.Add(data);
                }

                return crnStatistics;
            }

            catch (SqlException ex)
            {
                return null;
            }


            finally
            {
                connection.Close();
            }

        }


        public static ScoreByCategoryModel GetScoreByCategory(int crn, int semester, int year)
        {
            ScoreByCategoryModel scoreByCategory = null;
            SqlConnection connection = GetConnection();

            string selectStatement = "EXEC ScoreByCategory @crn, @year, @semester";

            SqlCommand command = new SqlCommand(selectStatement, connection);

            command.Parameters.AddWithValue("crn", crn);
            command.Parameters.AddWithValue("semester", semester);
            command.Parameters.AddWithValue("year", year);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                scoreByCategory = new ScoreByCategoryModel();
                while (reader.Read())
                {
                    var data = new ScoreByCategoryModel.Data();
                    data.Average = Convert.ToDouble(reader["Average"]);
                    data.StandardDev = Convert.ToDouble(reader["StandardDeviation"].ToString());
                    data.CategoryName = reader["CategoryName"].ToString();
                    data.CategoryID = Convert.ToInt32(reader["CategoryID"].ToString());
                    data.Questions = reader["Questions"].ToString();

                    scoreByCategory.DATA.Add(data);
                }

                return scoreByCategory;
            }

            catch (SqlException ex)
            {
                return null;
            }


            finally
            {
                connection.Close();
            }

        }

        public static QuestionDetailsModel GetQuestionDetails(int crn, int semester, int year,int questionID)
        {
            QuestionDetailsModel questionDetails = null;
            SqlConnection connection = GetConnection();

            string selectStatement = "EXEC QuestionDetails @crn, @semester, @year, @questionID";

            SqlCommand command = new SqlCommand(selectStatement, connection);

            command.Parameters.AddWithValue("crn", crn);
            command.Parameters.AddWithValue("semester", semester);
            command.Parameters.AddWithValue("year", year);
            command.Parameters.AddWithValue("questionID", questionID);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                questionDetails = new QuestionDetailsModel();
                while (reader.Read())
                {
                    var data = new QuestionDetailsModel.Data();
                    data.Text = reader["text"].ToString();
                    data.InstructorID = Convert.ToInt32(reader["instructorID"].ToString());
                    data.SubjectCode = reader["subjectcode"].ToString();
                    data.Semester = Convert.ToInt32(reader["semester"].ToString());
                    data.Year = Convert.ToInt32(reader["year"].ToString());
                    double test = 0;
                   
                    if (Double.TryParse(reader["PersonalFiveYearAverageSA"].ToString(),out test))
                        data.PersonalFiveYearAverageSA = Convert.ToDouble(reader["PersonalFiveYearAverageSA"].ToString());
                    if (Double.TryParse(reader["PersonalFiveYearAverageA"].ToString(), out test))
                        data.PersonalFiveYearAverageA = Convert.ToDouble(reader["PersonalFiveYearAverageA"].ToString());
                    if (Double.TryParse(reader["PersonalFiveYearAverageN"].ToString(), out test))
                        data.PersonalFiveYearAverageN = Convert.ToDouble(reader["PersonalFiveYearAverageN"].ToString());
                    if (Double.TryParse(reader["PersonalFiveYearAverageD"].ToString(), out test))
                        data.PersonalFiveYearAverageD = Convert.ToDouble(reader["PersonalFiveYearAverageD"].ToString());
                    if (Double.TryParse(reader["PersonalFiveYearAverageSD"].ToString(), out test))
                        data.PersonalFiveYearAverageSD = Convert.ToDouble(reader["PersonalFiveYearAverageSD"].ToString());
                    if (Double.TryParse(reader["PersonalFiveYearAverageNA"].ToString(), out test))
                        data.PersonalFiveYearAverageNA = Convert.ToDouble(reader["PersonalFiveYearAverageNA"].ToString());
                    if (Double.TryParse(reader["PersonalFiveYearAverageTotal"].ToString(), out test))
                        data.PersonalFiveYearAverageTotal = Convert.ToDouble(reader["PersonalFiveYearAverageTotal"].ToString());
                    
                    if (Double.TryParse(reader["PersonalSemesterAverageSA"].ToString(), out test))
                    data.PersonalSemesterAverageSA = Convert.ToDouble(reader["PersonalSemesterAverageSA"].ToString());
                    if (Double.TryParse(reader["PersonalSemesterAverageA"].ToString(), out test))
                    data.PersonalSemesterAverageA = Convert.ToDouble(reader["PersonalSemesterAverageA"].ToString());
                    if (Double.TryParse(reader["PersonalSemesterAverageN"].ToString(), out test))
                    data.PersonalSemesterAverageN = Convert.ToDouble(reader["PersonalSemesterAverageN"].ToString());
                    if (Double.TryParse(reader["PersonalSemesterAverageD"].ToString(), out test))
                    data.PersonalSemesterAverageD = Convert.ToDouble(reader["PersonalSemesterAverageD"].ToString());
                    if (Double.TryParse(reader["PersonalSemesterAverageSD"].ToString(), out test))
                    data.PersonalSemesterAverageSD = Convert.ToDouble(reader["PersonalSemesterAverageSD"].ToString());
                    if (Double.TryParse(reader["PersonalSemesterAverageNA"].ToString(), out test))
                    data.PersonalSemesterAverageNA = Convert.ToDouble(reader["PersonalSemesterAverageNA"].ToString());
                    if (Double.TryParse(reader["PersonalSemesterAverageTotal"].ToString(), out test))
                    data.PersonalSemesterAverageTotal = Convert.ToDouble(reader["PersonalSemesterAverageTotal"].ToString());

                    if (Double.TryParse(reader["DptFiveYearCourseAverageSA"].ToString(), out test))
                    data.DptFiveYearCourseAverageSA = Convert.ToDouble(reader["DptFiveYearCourseAverageSA"].ToString());
                    if (Double.TryParse(reader["DptFiveYearCourseAverageA"].ToString(), out test))
                    data.DptFiveYearCourseAverageA = Convert.ToDouble(reader["DptFiveYearCourseAverageA"].ToString());
                    if (Double.TryParse(reader["DptFiveYearCourseAverageN"].ToString(), out test))
                    data.DptFiveYearCourseAverageN = Convert.ToDouble(reader["DptFiveYearCourseAverageN"].ToString());
                    if (Double.TryParse(reader["DptFiveYearCourseAverageD"].ToString(), out test))
                    data.DptFiveYearCourseAverageD = Convert.ToDouble(reader["DptFiveYearCourseAverageD"].ToString());
                    if (Double.TryParse(reader["DptFiveYearCourseAverageSD"].ToString(), out test))
                    data.DptFiveYearCourseAverageSD = Convert.ToDouble(reader["DptFiveYearCourseAverageSD"].ToString());
                    if (Double.TryParse(reader["DptFiveYearCourseAverageNA"].ToString(), out test))
                    data.DptFiveYearCourseAverageNA = Convert.ToDouble(reader["DptFiveYearCourseAverageNA"]);
                    if (Double.TryParse(reader["DptFiveYearCourseAverageTotal"].ToString(), out test))
                    data.DptFiveYearCourseAverageTotal = Convert.ToDouble(reader["DptFiveYearCourseAverageTotal"].ToString());

                    if (Double.TryParse(reader["DptSemesterAverageSA"].ToString(), out test))
                    data.DptSemesterAverageSA = Convert.ToDouble(reader["DptSemesterAverageSA"].ToString());
                    if (Double.TryParse(reader["DptSemesterAverageA"].ToString(), out test))
                    data.DptSemesterAverageA = Convert.ToDouble(reader["DptSemesterAverageA"].ToString());
                    if (Double.TryParse(reader["DptSemesterAverageN"].ToString(), out test))
                    data.DptSemesterAverageN = Convert.ToDouble(reader["DptSemesterAverageN"].ToString());
                    if (Double.TryParse(reader["DptSemesterAverageD"].ToString(), out test))
                    data.DptSemesterAverageD = Convert.ToDouble(reader["DptSemesterAverageD"].ToString());
                    if (Double.TryParse(reader["DptSemesterAverageSD"].ToString(), out test))
                    data.DptSemesterAverageSD = Convert.ToDouble(reader["DptSemesterAverageSD"].ToString());
                    if (Double.TryParse(reader["DptSemesterAverageNA"].ToString(), out test))
                    data.DptSemesterAverageNA = Convert.ToDouble(reader["DptSemesterAverageNA"].ToString());
                    if (Double.TryParse(reader["DptSemesterAverageTotal"].ToString(), out test))
                    data.DptSemesterAverageTotal = Convert.ToDouble(reader["DptSemesterAverageTotal"].ToString());

                    questionDetails.DATA.Add(data);
                }

                return questionDetails;
            }

            catch (SqlException ex)
            {
                return null;
            }


            finally
            {
                connection.Close();
            }

        }

        public static RankingsModel GetRankings(int userID, int semester, int year)
        {
            RankingsModel scoreByCategory = null;
            SqlConnection connection = GetConnection();

            string selectStatement = "EXEC GetRankings @userID, @semester, @year";

            SqlCommand command = new SqlCommand(selectStatement, connection);

            command.Parameters.AddWithValue("userID", userID);
            command.Parameters.AddWithValue("semester", semester);
            command.Parameters.AddWithValue("year", year);

            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                scoreByCategory = new RankingsModel();
                while (reader.Read())
                {
                    var data = new RankingsModel.Data();
                    data.CourseID = Convert.ToInt32(reader["CSID"]);
                    data.Crn = Convert.ToInt32(reader["bannerCRN"]);
                    data.Marker = reader["marker"].ToString();
                    data.Semester = Convert.ToInt32(reader["semester"]);
                    data.Year = Convert.ToInt32(reader["year"]);
                    data.Course = reader["course"].ToString();
                    data.instructorName = reader["iName"].ToString();
                    data.InstructorAverage = Convert.ToDouble(reader["InstructorAverage"].ToString());
                    data.StudentCount = Convert.ToInt32(reader["StudentCount"]);
                    data.DecTile = Convert.ToInt32(reader["DecTile"]);


                    scoreByCategory.DATA.Add(data);
                }

                return scoreByCategory;
            }

            catch (SqlException ex)
            {
                return null;
            }


            finally
            {
                connection.Close();
            }

        }
        
        public static DepartmentModel GetDepartments()
        {
            SqlConnection connection = GetConnection();

            DepartmentModel departments = null;
            string selectStatement = "SELECT [code],[name]  FROM [Departments] WHERE [collegeCode] > '' and [code] != '0000' and [code] != 'CE01' and [code] != '0020' order by [code] asc;";    

            SqlCommand command = new SqlCommand(selectStatement, connection);
            try
            {
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                departments = new DepartmentModel();
                while (reader.Read())
                {
                    var data = new DepartmentModel.Data();
                    data.code = Convert.ToInt32(reader["CODE"]);
                    data.name = reader["NAME"].ToString();
                    departments.DATA.Add(data);
                }

                return departments;
            }

            catch (SqlException ex)
            {
                return null;
            }


            finally
            {
                connection.Close();
            }

        }
    }
}