using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

/// <summary>
/// Summary description for ClassesTaughtModel
/// </summary>

namespace EvalSystem
{

    public class ClassesTaughtModel
    {


        
       public class Data
        {
           public int bannercrn;
           public int semester;
           public int year;
           public string subcode;
           public int coursenum;
           public double score;
           public int responses;
           public int students;
           public double stddev;
           public string testname;

        }

       public string[] COLUMNS = { "BANNERCRN", "SEMESTER", "YEAR", "SUBJECTCODE", "COURSENUMBER", "SCORE", "RESPONSES", "STUDENTS", "STANDARDDEVIATION", "TESTNAME" };
        
        [JsonConverter(typeof(EvalSystemJsonConverter))]
        public List<Data> DATA = new List<Data>();
        public ClassesTaughtModel()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static string ToJsonString(ClassesTaughtModel model)
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
                var rows = (List<ClassesTaughtModel.Data>)value;

                //writer.WriteStartObject();
               // writer.WritePropertyName("DATA");
                writer.WriteStartArray();

                foreach (var row in rows)
                {
                    writer.WriteStartArray();
                    writer.WriteValue(row.bannercrn);
                    writer.WriteValue(row.semester);
                    writer.WriteValue(row.year);
                    writer.WriteValue(row.subcode);
                    writer.WriteValue(row.coursenum);
                    writer.WriteValue(row.score);
                    writer.WriteValue(row.responses);
                    writer.WriteValue(row.students);
                    writer.WriteValue(row.stddev);
                    writer.WriteValue(row.testname);

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


      
    }


}

 