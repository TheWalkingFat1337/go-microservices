package models

type User struct {
	Id       int    `json:"id" gorm:"primary_key"`
	Name     string `json:"name"`
	Email    string `json:"email"`
	Passwort string `json:"passwort"`
	Alter    int    `json:"alter"`
}
