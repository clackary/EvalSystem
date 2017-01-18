using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

/// <summary>
/// Summary description for ProfessorsWithAnswersModel
/// </summary>
namespace EvalSystem
{
    public class ProfessorsWithAnswersModel
    {


        public class Data
        {
            public int instructorid;
            public string firstname;
            public string lastname;

        }

        public string[] COLUMNS = { "INSTRUCTORID", "FIRSTNAME", "LASTNAME" };

        [JsonConverter(typeof(EvalSystemJsonConverter))]
        public List<Data> DATA = new List<Data>();

        public ProfessorsWithAnswersModel()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static string ToJsonString(ProfessorsWithAnswersModel model)
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
                var rows = (List<ProfessorsWithAnswersModel.Data>)value;

                //writer.WriteStartObject();
                // writer.WritePropertyName("DATA");
                writer.WriteStartArray();

                foreach (var row in rows)
                {
                    writer.WriteStartArray();
                    writer.WriteValue(row.instructorid);
                    writer.WriteValue(row.firstname);
                    writer.WriteValue(row.lastname);


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