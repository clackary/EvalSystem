using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
/// <summary>
/// Summary description for RankingsModel
/// </summary>
namespace EvalSystem
{
    public class RankingsModel
    {
        public RankingsModel()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public class Data
        {
            public int CourseID { get; set; }
            public string Marker { get; set; }
            public int Year { get; set; }
            public int Semester { get; set; }
            public string Course { get; set; }
            public int Crn { get; set; }
            public string instructorName { get; set; }
            public double InstructorAverage { get; set; }
            public int StudentCount { get; set; }
            public int DecTile { get; set; }


        }

        public string[] COLUMNS = {"CSID","MARKER","YEAR","SEMESTER","COURSE","BANNERCRN","INAME","INSTRUCTORAVERAGE","STUDENTCOUNT","DECTILE" };

        [JsonConverter(typeof(EvalSystemJsonConverter))]
        public List<Data> DATA = new List<Data>();



        public static string ToJsonString(RankingsModel model)
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
                var rows = (List<RankingsModel.Data>)value;

                writer.WriteStartArray();

                foreach (var row in rows)
                {
                    writer.WriteStartArray();

                    writer.WriteValue(row.CourseID);
                    writer.WriteValue(row.Marker);
                    writer.WriteValue(row.Year);
                    writer.WriteValue(row.Semester);
                    writer.WriteValue(row.Course);
                    writer.WriteValue(row.Crn);
                    writer.WriteValue(row.instructorName);
                    writer.WriteValue(row.InstructorAverage);
                    writer.WriteValue(row.StudentCount);
                    writer.WriteValue(row.DecTile);

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
                return true;
            }
        }
    }
}