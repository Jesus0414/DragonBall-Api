using web_api_simpsons.Dependencies;
using System.Collections.Generic;
using web_api_simpsons.Modules; 
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Cors;
using System.Data.SqlClient;

namespace web_api_simpsons.Controllers
{
    [Route("DB/[controller]")]
    [ApiController]
    [EnableCors("AllowOrigin")]

    
    public class CharacterController : ICharacter
    {
        List<Character> characterList => new List<Character>
        {
            new Character
            {
                FirstName = "Goku",
                SecondName = "Kakarotto",
                Raza = "Saiyajin",
                Description = "Es un jodido Saiyajin."
            },
            new Character
            {
                FirstName = "Bartolomeo",
                SecondName = "Jay",
                Description = "Hijo de Homero y Marge, y hermano mayor de Lisa y Maggie Simpsons."
            },
        };

        //string connectionString = @"data source = LAPTOP-UCMOS94G\SQLEXPRESS; initial catalog = db_simpsons; user id = simpsons; password = 12345";

        
        [HttpGet("{id}")]
        public Character GetCharacter(int id)
        {
            return characterList[id];
        }

        [HttpGet]
        public List<Character> GetCharacterList()
        {
            /*List<Character> characters = new List<Character>();

            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("select * from tbl_character", conn);
            conn.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while(reader.Read())
            {
                Character character = new Character
                {
                    Id = reader.GetInt64(reader.GetOrdinal("id")),
                    FirstName = reader.GetString(reader.GetOrdinal("firstname")),
                    SecondName = reader.GetString(reader.GetOrdinal("secondname")),
                    Raza = reader.GetString(reader.GetOrdinal("raza")),
                    Description = reader.GetString(reader.GetOrdinal("descp"))
                };
                characters.Add(character);
            }
            conn.Close();

            return characters;*/

            return characterList;
        }
    }
}