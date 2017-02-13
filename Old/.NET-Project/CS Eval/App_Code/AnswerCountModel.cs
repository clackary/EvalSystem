using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

/// <summary>
/// Summary description for AnswerCountModel
/// </summary>
namespace EvalSystem
{
    public class AnswerCountModel
    {



        public class Data
        {
            public string course;
            public int crn;
            public string question;
            public string answers;
            public int answersCount;
            public int questionID;
            public int sequence;
            public int studentCount;

        }

        public string[] COLUMNS = { "COURSE","BANNERCRN","QUESTION","ANSWERS","ANSWER COUNT","QUESTIONID","SEQUENCE","STUDENT COUNT" };

        [JsonConverter(typeof(EvalSystemJsonConverter))]
        public List<Data> DATA = new List<Data>();

        public AnswerCountModel()
        {

        }

        public static string ToJsonString(AnswerCountModel model)
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
                var rows = (List<AnswerCountModel.Data>)value;

                //writer.WriteStartObject();
               // writer.WritePropertyName("DATA");
                writer.WriteStartArray();

                foreach (var row in rows)
                {
                    writer.WriteStartArray();
                    writer.WriteValue(row.course);
                    writer.WriteValue(row.crn);
                    writer.WriteValue(row.question);
                    writer.WriteValue(row.answers);
                    writer.WriteValue(row.answersCount);
                    writer.WriteValue(row.questionID);
                    writer.WriteValue(row.sequence);
                    writer.WriteValue(row.studentCount);

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