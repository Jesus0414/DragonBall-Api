using System;


namespace web_api_simpsons.Modules
{
    public class Character
    {
        Int64 id;
        string firstName;
        string secondName;
        string raza;
        string description;

        public Character(){}
        public Character(Int64 id, string firstName, string secondName, string raza, string description)
        {
            this.firstName = firstName;
            this.secondName = secondName;
            this.raza = raza;
            this.description = description;
            this.id = id;
        }

        
        public string FirstName { get => firstName; set => firstName = value; }
        public string SecondName { get => secondName; set => secondName = value; }
        public Int64 Id  { get => id; set => id = value; }
        public string Raza { get => raza; set => raza = value; }
        public string Description { get => description; set => description = value; }


    }
}