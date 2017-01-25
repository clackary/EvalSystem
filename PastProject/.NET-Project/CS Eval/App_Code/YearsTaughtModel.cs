using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

/// <summary>
/// Summary description for YearsTaughtModel
/// </summary>
namespace EvalSystem
{
    public class YearsTaughtModel
    {

        public class Data
        {
            public int instructorid;
            public int semester;
            public int year;
        }
        public string[] COLUMNS = { "INSTRUCTORID", "SEMESTER", "YEAR" };

        [JsonConverter(typeof(EvalSystemJsonConverter))]
        public List<Data> DATA = new List<Data>();


        public YearsTaughtModel()
        {

        }

        public static string ToJsonString(YearsTaughtModel model)
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
                var rows = (List<YearsTaughtModel.Data>)value;

                //writer.WriteStartObject();
                // writer.WritePropertyName("DATA");
                writer.WriteStartArray();

                foreach (var row in rows)
                {
                    writer.WriteStartArray();
                    writer.WriteValue(row.instructorid);
                    writer.WriteValue(row.semester);
                    writer.WriteValue(row.year);
                   

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