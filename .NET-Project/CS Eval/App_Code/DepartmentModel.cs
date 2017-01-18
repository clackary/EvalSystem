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
    public class DepartmentModel
    {

        public class Data
        {
            public int code;
            public string name;
        }

        public string[] COLUMNS = { "CODE","NAME" };

        [JsonConverter(typeof(EvalSystemJsonConverter))]
        public List<Data> DATA = new List<Data>();

        public DepartmentModel()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static string ToJsonString(DepartmentModel model)
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
                var rows = (List<DepartmentModel.Data>)value;

                //writer.WriteStartObject();
                // writer.WritePropertyName("DATA");
                writer.WriteStartArray();

                foreach (var row in rows)
                {
                    writer.WriteStartArray();
                    writer.WriteValue(row.code);
                    writer.WriteValue(row.name);
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