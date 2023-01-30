var password = "1234567"

if password == "123456"{
    print("şifre doğru hoşgeldiniz.")
} else if password == "123 "{
    print("şifre çok zayıf, yeni bir şifre belirleyiniz")
    
} else {
    print("şifre yanlış tekrar deneyiniz")
}

enum PasswordOption{
    case zayif
    case dogru
    case uyusmuyor
}
var passwordTwo: PasswordOption = .dogru
switch passwordTwo {
case .zayif:
    print("şifre çok zayıf, yeni bir şifre belirleyiniz")
case .dogru:
print("şifreniz yeterince güvenli. Hoşgeldiniz")
case .uyusmuyor:
    print("şifreniz uyuşmuyor")

}

