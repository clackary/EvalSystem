using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;

/// <summary>
/// Summary description for CrnStatisticsModel
/// </summary>
namespace EvalSystem
{
    public class CrnStatisticsModel
    {
            public class Data
            {
                public double InstructorSemAverage {get; set;}
                public double InstructorSemSTDev {get; set;}

                public double DepartmentSemAverage { get; set; }

                public double DepartmentSemSTDev { get; set; }

                public double ClassScore { get; set; }

                public double ClassSTDev { get; set; }

                public int DecTile { get; set; }


                public double DepClassFiveYearAverage { get; set; }
                public double DepClassFiveYearSTDev { get; set; }
                public double InstructClassFiveYearAverage { get; set; }
                public double InstructClassFiveYearSTDev { get; set; }


            }
    
            public string[] COLUMNS = { "INSTRUCTORSEMESTERAVERAGE","INSTRUCTORSEMESTERSTDEVIATION", "DEPARTMENTSEMESTERAVERAGE","DEPARTMENTSEMESTERSTDEVIATION",
                                      "CLASSSCORE","CLASSSTDEVIATION","DECTILE","DEPARTMENTCLASSFIVEYEARAVERAGE","DEPARTMENTCLASSFIVEYEARSTDEVIATION",
                                      "INSTRUCTORCLASSFIVEYEARAVERAGE","INSTRUCTORCLASSFIVEYEARSTDEVIATION"};
            
            [JsonConverter(typeof(EvalSystemJsonConverter))]
            public List<Data> DATA = new List<Data>();


            public CrnStatisticsModel()
            {

            }

            public static string ToJsonString(CrnStatisticsModel model)
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
                    var rows = (List<CrnStatisticsModel.Data>)value;
    
                    //writer.WriteStartObject();
                   // writer.WritePropertyName("DATA");
                    writer.WriteStartArray();
    
                    foreach (var row in rows)
                    {
                        writer.WriteStartArray();
                        writer.WriteValue(row.InstructorSemAverage);
                        writer.WriteValue(row.InstructorSemSTDev);
                        writer.WriteValue(row.DepartmentSemAverage);
                        writer.WriteValue(row.DepartmentSemSTDev);
                        writer.WriteValue(row.ClassScore);
                        writer.WriteValue(row.ClassSTDev);
                        writer.WriteValue(row.DecTile);
                        writer.WriteValue(row.DepClassFiveYearAverage);
                        writer.WriteValue(row.DepClassFiveYearSTDev);
                        writer.WriteValue(row.InstructClassFiveYearAverage);
                        writer.WriteValue(row.InstructClassFiveYearSTDev);
    
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