using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
/// <summary>
/// Summary description for QuestionDetailsModel
/// </summary>
namespace EvalSystem
{
    public class QuestionDetailsModel
    {
        public class Data
        {
            public string Text { get; set; }
            public int InstructorID { get; set; }
            public string SubjectCode { get; set; }
            public int Semester { get; set; }
            public int Year { get; set; }
            public double PersonalFiveYearAverageSA { get; set; }
            public double PersonalFiveYearAverageA { get; set; }
            public double PersonalFiveYearAverageN { get; set; }
            public double PersonalFiveYearAverageD { get; set; }
            public double PersonalFiveYearAverageSD { get; set; }
            public double PersonalFiveYearAverageNA { get; set; }
            public double PersonalFiveYearAverageTotal { get; set; }

            public double PersonalSemesterAverageSA { get; set; }
            public double PersonalSemesterAverageA { get; set; }
            public double PersonalSemesterAverageN { get; set; }
            public double PersonalSemesterAverageD { get; set; }
            public double PersonalSemesterAverageSD { get; set; }
            public double PersonalSemesterAverageNA { get; set; }
            public double PersonalSemesterAverageTotal { get; set; }

            public double DptFiveYearCourseAverageSA { get; set; }
            public double DptFiveYearCourseAverageA { get; set; }
            public double DptFiveYearCourseAverageN { get; set; }
            public double DptFiveYearCourseAverageD { get; set; }
            public double DptFiveYearCourseAverageSD { get; set; }
            public double DptFiveYearCourseAverageNA { get; set; }
            public double DptFiveYearCourseAverageTotal { get; set; }

            public double DptSemesterAverageSA { get; set; }
            public double DptSemesterAverageA { get; set; }
            public double DptSemesterAverageN { get; set; }
            public double DptSemesterAverageD { get; set; }
            public double DptSemesterAverageSD { get; set; }
            public double DptSemesterAverageNA { get; set; }
            public double DptSemesterAverageTotal { get; set; }







        }

        public string[] COLUMNS = { "TEXT","INSTRUCTORID","SUBJECTCODE","SEMESTER","YEAR",
                                     "PERSONALFIVEYEARAVERAGESA", 
                                     "PERSONALFIVEYEARAVERAGEA",
                                     "PERSONALFIVEYEARAVERAGEN",
                                     "PERSONALFIVEYEARAVERAGED",
                                     "PERSONALFIVEYEARAVERAGESD",
                                     "PERSONALFIVEYEARAVERAGENA",
                                     "PERSONALFIVEYEARAVERAGETOTAL",
                                     "PERSONALSEMESTERAVERAGESA",
                                     "PERSONALSEMESTERAVERAGEA",
                                     "PERSONALSEMESTERAVERAGEN",
                                     "PERSONALSEMESTERAVERAGED",
                                     "PERSONALSEMESTERAVERAGESD",
                                     "PERSONALSEMESTERAVERAGENA",
                                     "PERSONALSEMESTERAVERAGETOTAL",
                                     "DPTFIVEYEARCOURSEAVERAGESA",
                                     "DPTFIVEYEARCOURSEAVERAGEA",
                                     "DPTFIVEYEARCOURSEAVERAGEN",
                                     "DPTFIVEYEARCOURSEAVERAGED",
                                     "DPTFIVEYEARCOURSEAVERAGESD",
                                     "DPTFIVEYEARCOURSEAVERAGENA",
                                     "DPTFIVEYEARCOURSEAVERAGETOTAL",
                                     "DPTSEMESTERAVERAGESA",
                                     "DPTSEMESTERAVERAGEA",
                                     "DPTSEMESTERAVERAGEN",
                                     "DPTSEMESTERAVERAGED",
                                     "DPTSEMESTERAVERAGESD",
                                     "DPTSEMESTERAVERAGENA",
                                     "DPTSEMESTERAVERAGETOTAL"
                                 };

        [JsonConverter(typeof(EvalSystemJsonConverter))]
        public List<Data> DATA = new List<Data>();

        public static string ToJsonString(QuestionDetailsModel model)
        {
            if (model != null)
                return JsonConvert.SerializeObject(model);
            else
                return null;
        }


        class EvalSystemJsonConverter : JsonConverter
        {
            public EvalSystemJsonConverter()
                : base()
            {


            }

            public override void WriteJson(JsonWriter writer,
              object value, JsonSerializer serializer)
            {
                var rows = (List<QuestionDetailsModel.Data>)value;

                //writer.WriteStartObject();
                // writer.WritePropertyName("DATA");
                writer.WriteStartArray();

                foreach (var row in rows)
                {
                    writer.WriteStartArray();

                    writer.WriteValue(row.Text);
                    writer.WriteValue(row.InstructorID);
                    writer.WriteValue(row.SubjectCode);
                    writer.WriteValue(row.Semester);
                    writer.WriteValue(row.Year);

                    writer.WriteValue(row.PersonalFiveYearAverageSA);
                    writer.WriteValue(row.PersonalFiveYearAverageA);
                    writer.WriteValue(row.PersonalFiveYearAverageN);
                    writer.WriteValue(row.PersonalFiveYearAverageD);
                    writer.WriteValue(row.PersonalFiveYearAverageSD);
                    writer.WriteValue(row.PersonalFiveYearAverageNA);
                    writer.WriteValue(row.PersonalFiveYearAverageTotal);

                    writer.WriteValue(row.PersonalSemesterAverageSA);
                    writer.WriteValue(row.PersonalSemesterAverageA);
                    writer.WriteValue(row.PersonalSemesterAverageN);
                    writer.WriteValue(row.PersonalSemesterAverageD);
                    writer.WriteValue(row.PersonalSemesterAverageSD);
                    writer.WriteValue(row.PersonalSemesterAverageNA);
                    writer.WriteValue(row.PersonalSemesterAverageTotal);

                    writer.WriteValue(row.DptFiveYearCourseAverageSA);
                    writer.WriteValue(row.DptFiveYearCourseAverageA);
                    writer.WriteValue(row.DptFiveYearCourseAverageN);
                    writer.WriteValue(row.DptFiveYearCourseAverageD);
                    writer.WriteValue(row.DptFiveYearCourseAverageSD);
                    writer.WriteValue(row.DptFiveYearCourseAverageNA);
                    writer.WriteValue(row.DptFiveYearCourseAverageTotal);

                    writer.WriteValue(row.DptSemesterAverageSA);
                    writer.WriteValue(row.DptSemesterAverageA);
                    writer.WriteValue(row.DptSemesterAverageN);
                    writer.WriteValue(row.DptSemesterAverageD);
                    writer.WriteValue(row.DptSemesterAverageSD);
                    writer.WriteValue(row.DptSemesterAverageNA);
                    writer.WriteValue(row.DptSemesterAverageTotal);

                    writer.WriteEndArray();
                }

                writer.Flush();
            }

            public override object ReadJson(JsonReader reader, Type objectType,
                object existingValue, JsonSerializer serializer)
            {
                return existingValue;
                //throw new NotImplementedException();
            }

            public override bool CanConvert(Type objectType)
            {
                return true; //TODO: more logic check the type before the conversion..
            }
        }

        public QuestionDetailsModel()
        {

        }
    }
}