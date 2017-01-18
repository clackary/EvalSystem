using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

/// <summary>
/// Summary description for ScoreByCategoryModel
/// </summary>
namespace EvalSystem
{
    public class ScoreByCategoryModel
    {
            public class Data
            {
                public double Average { get; set; }
                public double StandardDev { get; set; }
                public string CategoryName { get; set; }
                public int CategoryID { get; set; }
                public string Questions { get; set; }

            }
    
            public string[] COLUMNS = { };
            
            [JsonConverter(typeof(EvalSystemJsonConverter))]
            public List<Data> DATA = new List<Data>();

            public static string ToJsonString(ScoreByCategoryModel model)
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
                    var rows = (List<ScoreByCategoryModel.Data>)value;
    
                    //writer.WriteStartObject();
                   // writer.WritePropertyName("DATA");
                    writer.WriteStartArray();
    
                    foreach (var row in rows)
                    {
                        writer.WriteStartArray();
                        writer.WriteValue(row.Average);
                        writer.WriteValue(row.StandardDev);
                        writer.WriteValue(row.CategoryName);
                        writer.WriteValue(row.CategoryID);
                        writer.WriteValue(row.Questions);
    
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

        public ScoreByCategoryModel()
        {

        }
    }
}