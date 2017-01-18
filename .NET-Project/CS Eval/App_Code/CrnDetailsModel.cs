using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
/// <summary>
/// Summary description for CrnDetailsModel
/// </summary>
namespace EvalSystem
{
    public class CrnDetailsModel
    {

        public class Data
        {
            public string classString;
            public int crn;
            public string section = "";
            public int semester;
            public string semesterString;
            public int block = 0;
            public int year;
            public string subjectCode;
            public int courseNum;
            public int instructorID;
            public string firstName;
            public string lastName;
            public string email = "";
            public int responses;
            public int students;
            public int testID;
            public string testName;




        }

        public string[] COLUMNS = { "CLASSSTRING","BANNERCRN","SECTION","SEMESTER","SEMESTERSTRING","BLOCK","YEAR","SUBJECTCODE","COURSENUMBER","INSTRUCTORID",
                                   "FIRSTNAME","LASTNAME","EMAIL","RESPONSES","STUDENTS","TESTID","TESTNAME"};

        [JsonConverter(typeof(EvalSystemJsonConverter))]
        public List<Data> DATA = new List<Data>();

        public CrnDetailsModel()
        {
            //
            // TODO: Add constructor logic here
            //
        }

         public static string ToJsonString(CrnDetailsModel model)
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
                var rows = (List<CrnDetailsModel.Data>)value;

                //writer.WriteStartObject();
               // writer.WritePropertyName("DATA");
                writer.WriteStartArray();

                foreach (var row in rows)
                {
                    writer.WriteStartArray();
                    writer.WriteValue(row.classString);
                    writer.WriteValue(row.crn);
                    writer.WriteValue(row.section);
                    writer.WriteValue(row.semester);
                    writer.WriteValue(row.semesterString);
                    writer.WriteValue(row.block);
                    writer.WriteValue(row.year);
                    writer.WriteValue(row.subjectCode);
                    writer.WriteValue(row.courseNum);
                    writer.WriteValue(row.instructorID);
                    writer.WriteValue(row.firstName);
                    writer.WriteValue(row.lastName);
                    writer.WriteValue(row.email);
                    writer.WriteValue(row.responses);
                    writer.WriteValue(row.students);
                    writer.WriteValue(row.testID);
                    writer.WriteValue(row.testName);

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