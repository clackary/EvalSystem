using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
/// <summary>
/// Summary description for EssayAnswersModel
/// </summary>
namespace EvalSystem
{
    public class EssayAnswersModel
    {

        public class Data
        {
            public int id;
            public int crn;
            public string subjectCode;
            public string courseNum;
            public int semester;
            public int block;
            public int questionID;
            public int questionResponse;
            public string question;
            public string answer;
            public int student;
        }

        public string[] COLUMNS = { "ID","CRN","SUBJECTCODE","COURSENUMBER","SEMESTER","BLOCK","QUESTIONID","QUESTIONRESPONSEID","QUESTION","ANSWER",
                              "STUDENT"};

        [JsonConverter(typeof(EvalSystemJsonConverter))]
        public List<Data> DATA = new List<Data>();


        public EssayAnswersModel()
        {

        }

        public static string ToJsonString(EssayAnswersModel model)
        {
            if (model == null)
                return null;
            else
                return JsonConvert.SerializeObject(model);
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
                var rows = (List<EssayAnswersModel.Data>)value;

                //writer.WriteStartObject();
                // writer.WritePropertyName("DATA");
                writer.WriteStartArray();

                foreach (var row in rows)
                {
                    writer.WriteStartArray();
                    writer.WriteValue(row.id);
                    writer.WriteValue(row.crn);
                    writer.WriteValue(row.subjectCode);
                    writer.WriteValue(row.courseNum);
                    writer.WriteValue(row.semester);
                    writer.WriteValue(row.block);
                    writer.WriteValue(row.questionID);
                    writer.WriteValue(row.questionResponse);
                    writer.WriteValue(row.question);
                    writer.WriteValue(row.answer);
                    writer.WriteValue(row.student);

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